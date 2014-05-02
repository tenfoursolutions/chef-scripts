#!/usr/bin/awk -f
/INFO:/ { 
  print "[0;32m", $0, "[0m"
  next
}
/WARN:/ { 
  print "[1;31m", $0, "[0m"
  next
}
/ERROR:/ { 
  print "[0;35m", $0, "[0m"
  next
}
/DEBUG:/ { 
  print "[0;30m", $0, "[0m"
  next
}
/FATAL:/ { 
  print "[0;31m", $0, "[0m"
  next
}
{
  print
}

#!/usr/bin/env bats
@test "ddclient is found in the path" {
  run which ddclient
  [ "$status" -eq 0 ]
}

@test "verify that /etc/ddclient.conf was created" {
  run stat /etc/ddclient.conf
  [ "$status" -eq 0 ]
}

@test "verify that permissions are readable only by root" {
  result="$(stat -c %a /etc/ddclient.conf)"
  [ "$result" -eq 600 ]
}

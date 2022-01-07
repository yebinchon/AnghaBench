
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *sentinelFailoverStateStr(int state) {
    switch(state) {
    case 134: return "none";
    case 128: return "wait_start";
    case 132: return "select_slave";
    case 131: return "send_slaveof_noone";
    case 129: return "wait_promotion";
    case 133: return "reconf_slaves";
    case 130: return "update_config";
    default: return "unknown";
    }
}

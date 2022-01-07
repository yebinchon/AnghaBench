
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int val; char const* name; } ;
typedef TYPE_1__ wininet_flag_info ;
typedef int internet_status ;
typedef int DWORD ;


 TYPE_1__ const FE (int ) ;
__attribute__((used)) static const char *get_callback_name(DWORD dwInternetStatus) {
    static const wininet_flag_info internet_status[] = {

 { 132, "INTERNET_STATUS_RESOLVING_NAME" },
 { 141, "INTERNET_STATUS_NAME_RESOLVED" },
 { 150, "INTERNET_STATUS_CONNECTING_TO_SERVER" },
 { 151, "INTERNET_STATUS_CONNECTED_TO_SERVER" },
 { 130, "INTERNET_STATUS_SENDING_REQUEST" },
 { 133, "INTERNET_STATUS_REQUEST_SENT" },
 { 136, "INTERNET_STATUS_RECEIVING_RESPONSE" },
 { 131, "INTERNET_STATUS_RESPONSE_RECEIVED" },
 { 145, "INTERNET_STATUS_CTL_RESPONSE_RECEIVED" },
 { 138, "INTERNET_STATUS_PREFETCH" },
 { 152, "INTERNET_STATUS_CLOSING_CONNECTION" },
 { 149, "INTERNET_STATUS_CONNECTION_CLOSED" },
 { 143, "INTERNET_STATUS_HANDLE_CREATED" },
 { 144, "INTERNET_STATUS_HANDLE_CLOSING" },
 { 134, "INTERNET_STATUS_REQUEST_COMPLETE" },
 { 135, "INTERNET_STATUS_REDIRECT" },
 { 142, "INTERNET_STATUS_INTERMEDIATE_RESPONSE" },
 { 128, "INTERNET_STATUS_USER_INPUT_REQUIRED" },
 { 129, "INTERNET_STATUS_STATE_CHANGE" },
 { 146, "INTERNET_STATUS_COOKIE_SENT" },
 { 147, "INTERNET_STATUS_COOKIE_RECEIVED" },
 { 137, "INTERNET_STATUS_PRIVACY_IMPACTED" },
 { 140, "INTERNET_STATUS_P3P_HEADER" },
 { 139, "INTERNET_STATUS_P3P_POLICYREF" },
 { 148, "INTERNET_STATUS_COOKIE_HISTORY" }

    };
    DWORD i;

    for (i = 0; i < (sizeof(internet_status) / sizeof(internet_status[0])); i++) {
 if (internet_status[i].val == dwInternetStatus) return internet_status[i].name;
    }
    return "Unknown";
}

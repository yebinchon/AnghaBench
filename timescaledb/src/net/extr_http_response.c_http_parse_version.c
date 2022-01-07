
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int version; } ;
typedef TYPE_1__ HttpResponseState ;


 scalar_t__ HTTP_VERSION_INVALID ;
 scalar_t__ ts_http_version_from_string (int ) ;

__attribute__((used)) static bool
http_parse_version(HttpResponseState *state)
{
 return ts_http_version_from_string(state->version) != HTTP_VERSION_INVALID;
}

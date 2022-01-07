
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int result ;
struct TYPE_7__ {struct TYPE_7__* host; int user_data; int (* callback ) (TYPE_1__*,int ) ;int error_code; int version; int not_supported; int success; } ;
struct TYPE_6__ {int error_code; int version; int not_supported; int check_success; } ;
typedef TYPE_1__ HttpProtocolVersion ;
typedef TYPE_2__ CheckProtocolData ;


 int g_free (TYPE_2__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static void
check_protocol_version_done (void *vdata)
{
    CheckProtocolData *data = vdata;
    HttpProtocolVersion result;

    memset (&result, 0, sizeof(result));
    result.check_success = data->success;
    result.not_supported = data->not_supported;
    result.version = data->version;
    result.error_code = data->error_code;

    data->callback (&result, data->user_data);

    g_free (data->host);
    g_free (data);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_6__ {TYPE_1__* db; } ;
struct TYPE_5__ {int storage; } ;
typedef TYPE_2__ MSIPACKAGE ;
typedef int BYTE ;


 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int TRUE ;
 int msi_free (int *) ;
 scalar_t__ msi_parse_command_line (TYPE_2__*,char*,int ) ;
 scalar_t__ read_stream_data (int ,char const*,int ,int **,scalar_t__*) ;

__attribute__((used)) static UINT msi_load_admin_properties(MSIPACKAGE *package)
{
    BYTE *data;
    UINT r, sz;

    static const WCHAR stmname[] = {'A','d','m','i','n','P','r','o','p','e','r','t','i','e','s',0};

    r = read_stream_data(package->db->storage, stmname, FALSE, &data, &sz);
    if (r != ERROR_SUCCESS)
        return r;

    r = msi_parse_command_line(package, (WCHAR *)data, TRUE);

    msi_free(data);
    return r;
}

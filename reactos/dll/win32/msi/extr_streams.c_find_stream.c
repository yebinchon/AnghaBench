
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_6__ {scalar_t__ num_streams; TYPE_1__* streams; int strings; } ;
struct TYPE_5__ {scalar_t__ str_index; } ;
typedef TYPE_1__ MSISTREAM ;
typedef TYPE_2__ MSIDATABASE ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ msi_string2id (int ,int const*,int,scalar_t__*) ;

__attribute__((used)) static MSISTREAM *find_stream( MSIDATABASE *db, const WCHAR *name )
{
    UINT r, id, i;

    r = msi_string2id( db->strings, name, -1, &id );
    if (r != ERROR_SUCCESS)
        return ((void*)0);

    for (i = 0; i < db->num_streams; i++)
    {
        if (db->streams[i].str_index == id) return &db->streams[i];
    }
    return ((void*)0);
}

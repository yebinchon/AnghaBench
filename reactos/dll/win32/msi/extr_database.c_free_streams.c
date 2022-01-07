
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {scalar_t__ stream; } ;
struct TYPE_4__ {size_t num_streams; TYPE_2__* streams; } ;
typedef TYPE_1__ MSIDATABASE ;


 int IStream_Release (scalar_t__) ;
 int msi_free (TYPE_2__*) ;

__attribute__((used)) static void free_streams( MSIDATABASE *db )
{
    UINT i;
    for (i = 0; i < db->num_streams; i++)
    {
        if (db->streams[i].stream) IStream_Release( db->streams[i].stream );
    }
    msi_free( db->streams );
}

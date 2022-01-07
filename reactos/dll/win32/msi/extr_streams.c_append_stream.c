
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
typedef size_t UINT ;
struct TYPE_6__ {size_t num_streams; TYPE_1__* streams; int strings; } ;
struct TYPE_5__ {int * stream; int str_index; } ;
typedef TYPE_2__ MSIDATABASE ;
typedef int IStream ;


 size_t ERROR_OUTOFMEMORY ;
 size_t ERROR_SUCCESS ;
 int StringNonPersistent ;
 int TRACE (char*,int ) ;
 int debugstr_w (int const*) ;
 int msi_add_string (int ,int const*,int,int ) ;
 int streams_resize_table (TYPE_2__*,size_t) ;

__attribute__((used)) static UINT append_stream( MSIDATABASE *db, const WCHAR *name, IStream *stream )
{
    UINT i = db->num_streams;

    if (!streams_resize_table( db, db->num_streams + 1 ))
        return ERROR_OUTOFMEMORY;

    db->streams[i].str_index = msi_add_string( db->strings, name, -1, StringNonPersistent );
    db->streams[i].stream = stream;
    db->num_streams++;

    TRACE("added %s\n", debugstr_w( name ));
    return ERROR_SUCCESS;
}

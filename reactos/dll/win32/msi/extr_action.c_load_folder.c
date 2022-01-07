
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int WCHAR ;
typedef int UINT ;
struct TYPE_9__ {int entry; void* SourceShortPath; void* SourceLongPath; void* TargetDefault; void* Directory; void* Parent; int children; } ;
struct TYPE_8__ {int folders; } ;
typedef int MSIRECORD ;
typedef TYPE_1__ MSIPACKAGE ;
typedef TYPE_2__ MSIFOLDER ;
typedef int * LPWSTR ;
typedef TYPE_1__* LPVOID ;


 int ERROR_NOT_ENOUGH_MEMORY ;
 int ERROR_SUCCESS ;
 int TRACE (char*,int ) ;
 int debugstr_w (void*) ;
 int * folder_split_path (int *,char) ;
 int list_add_tail (int *,int *) ;
 int list_init (int *) ;
 int load_folder_persistence (TYPE_1__*,TYPE_2__*) ;
 TYPE_2__* msi_alloc_zero (int) ;
 void* msi_dup_record_field (int *,int) ;
 int msi_free (int *) ;
 int strcmpW (int ,int *) ;
 void* strdupW (int *) ;
 int szDot ;

__attribute__((used)) static UINT load_folder( MSIRECORD *row, LPVOID param )
{
    MSIPACKAGE *package = param;
    static WCHAR szEmpty[] = { 0 };
    LPWSTR p, tgt_short, tgt_long, src_short, src_long;
    MSIFOLDER *folder;

    if (!(folder = msi_alloc_zero( sizeof(*folder) ))) return ERROR_NOT_ENOUGH_MEMORY;
    list_init( &folder->children );
    folder->Directory = msi_dup_record_field( row, 1 );
    folder->Parent = msi_dup_record_field( row, 2 );
    p = msi_dup_record_field(row, 3);

    TRACE("%s\n", debugstr_w(folder->Directory));


    tgt_short = p;
    src_short = folder_split_path( p, ':' );


    tgt_long = folder_split_path( tgt_short, '|' );
    src_long = folder_split_path( src_short, '|' );


    if (tgt_short && !strcmpW( szDot, tgt_short ))
        tgt_short = szEmpty;
    if (src_short && !strcmpW( szDot, src_short ))
        src_short = szEmpty;

    if (!tgt_long)
        tgt_long = tgt_short;

    if (!src_short) {
        src_short = tgt_short;
        src_long = tgt_long;
    }

    if (!src_long)
        src_long = src_short;


    folder->TargetDefault = strdupW(tgt_long);
    folder->SourceShortPath = strdupW(src_short);
    folder->SourceLongPath = strdupW(src_long);
    msi_free(p);

    TRACE("TargetDefault = %s\n",debugstr_w( folder->TargetDefault ));
    TRACE("SourceLong = %s\n", debugstr_w( folder->SourceLongPath ));
    TRACE("SourceShort = %s\n", debugstr_w( folder->SourceShortPath ));

    load_folder_persistence( package, folder );

    list_add_tail( &package->folders, &folder->entry );
    return ERROR_SUCCESS;
}

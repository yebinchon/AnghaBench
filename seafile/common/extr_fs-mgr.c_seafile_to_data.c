
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int guint8 ;
struct TYPE_5__ {scalar_t__ version; int file_id; } ;
typedef TYPE_1__ Seafile ;


 int g_free (int *) ;
 scalar_t__ seaf_compress (int *,int,int **,int*) ;
 int seaf_warning (char*,int ) ;
 int * seafile_to_json (TYPE_1__*,int*) ;
 int * seafile_to_v0_data (TYPE_1__*,int*) ;

__attribute__((used)) static guint8 *
seafile_to_data (Seafile *file, int *len)
{
    if (file->version > 0) {
        guint8 *data;
        int orig_len;
        guint8 *compressed;

        data = seafile_to_json (file, &orig_len);
        if (!data)
            return ((void*)0);

        if (seaf_compress (data, orig_len, &compressed, len) < 0) {
            seaf_warning ("Failed to compress file object %s.\n", file->file_id);
            g_free (data);
            return ((void*)0);
        }
        g_free (data);
        return compressed;
    } else
        return seafile_to_v0_data (file, len);
}

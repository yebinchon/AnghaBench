
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef void guint8 ;
struct TYPE_5__ {scalar_t__ version; int dir_id; } ;
typedef TYPE_1__ SeafDir ;


 int g_free (void*) ;
 scalar_t__ seaf_compress (void*,int,void**,int*) ;
 void* seaf_dir_to_json (TYPE_1__*,int*) ;
 void* seaf_dir_to_v0_data (TYPE_1__*,int*) ;
 int seaf_warning (char*,int ) ;

void *
seaf_dir_to_data (SeafDir *dir, int *len)
{
    if (dir->version > 0) {
        guint8 *data;
        int orig_len;
        guint8 *compressed;

        data = seaf_dir_to_json (dir, &orig_len);
        if (!data)
            return ((void*)0);

        if (seaf_compress (data, orig_len, &compressed, len) < 0) {
            seaf_warning ("Failed to compress dir object %s.\n", dir->dir_id);
            g_free (data);
            return ((void*)0);
        }

        g_free (data);
        return compressed;
    } else
        return seaf_dir_to_v0_data (dir, len);
}

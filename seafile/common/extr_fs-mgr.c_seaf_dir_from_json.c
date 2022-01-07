
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int json_t ;
struct TYPE_3__ {char const* text; } ;
typedef TYPE_1__ json_error_t ;
typedef int guint8 ;
typedef int SeafDir ;


 int g_free (int *) ;
 int json_decref (int *) ;
 int * json_loadb (char const*,int,int ,TYPE_1__*) ;
 scalar_t__ seaf_decompress (int *,int,int **,int*) ;
 int * seaf_dir_from_json_object (char const*,int *) ;
 int seaf_warning (char*,char const*) ;

__attribute__((used)) static SeafDir *
seaf_dir_from_json (const char *dir_id, uint8_t *data, int len)
{
    guint8 *decompressed;
    int outlen;
    json_t *object = ((void*)0);
    json_error_t error;
    SeafDir *dir;

    if (seaf_decompress (data, len, &decompressed, &outlen) < 0) {
        seaf_warning ("Failed to decompress dir object %s.\n", dir_id);
        return ((void*)0);
    }

    object = json_loadb ((const char *)decompressed, outlen, 0, &error);
    g_free (decompressed);
    if (!object) {
        seaf_warning ("Failed to load seafdir json object: %s.\n", error.text);
        return ((void*)0);
    }

    dir = seaf_dir_from_json_object (dir_id, object);

    json_decref (object);
    return dir;
}

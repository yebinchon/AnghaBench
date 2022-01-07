
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int json_t ;
struct TYPE_3__ {char const* text; } ;
typedef TYPE_1__ json_error_t ;
typedef int guint8 ;
typedef int Seafile ;


 int g_free (int *) ;
 int json_decref (int *) ;
 int * json_loadb (char const*,int,int ,TYPE_1__*) ;
 scalar_t__ seaf_decompress (void*,int,int **,int*) ;
 int seaf_warning (char*,char const*) ;
 int * seafile_from_json_object (char const*,int *) ;

__attribute__((used)) static Seafile *
seafile_from_json (const char *id, void *data, int len)
{
    guint8 *decompressed;
    int outlen;
    json_t *object = ((void*)0);
    json_error_t error;
    Seafile *seafile;

    if (seaf_decompress (data, len, &decompressed, &outlen) < 0) {
        seaf_warning ("Failed to decompress seafile object %s.\n", id);
        return ((void*)0);
    }

    object = json_loadb ((const char *)decompressed, outlen, 0, &error);
    g_free (decompressed);
    if (!object) {
        seaf_warning ("Failed to load seafile json object: %s.\n", error.text);
        return ((void*)0);
    }

    seafile = seafile_from_json_object (id, object);

    json_decref (object);
    return seafile;
}

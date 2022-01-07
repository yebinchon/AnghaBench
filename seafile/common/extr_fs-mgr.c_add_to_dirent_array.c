
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int json_t ;
struct TYPE_3__ {int size; int modifier; int mode; int mtime; int name; int id; } ;
typedef TYPE_1__ SeafDirent ;


 scalar_t__ S_ISREG (int ) ;
 int json_array_append_new (int *,int *) ;
 int * json_object () ;
 int json_object_set_int_member (int *,char*,int ) ;
 int json_object_set_string_member (int *,char*,int ) ;

__attribute__((used)) static void
add_to_dirent_array (json_t *array, SeafDirent *dirent)
{
    json_t *object;

    object = json_object ();
    json_object_set_int_member (object, "mode", dirent->mode);
    json_object_set_string_member (object, "id", dirent->id);
    json_object_set_string_member (object, "name", dirent->name);
    json_object_set_int_member (object, "mtime", dirent->mtime);
    if (S_ISREG(dirent->mode)) {
        json_object_set_string_member (object, "modifier", dirent->modifier);
        json_object_set_int_member (object, "size", dirent->size);
    }

    json_array_append_new (array, object);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_4__ {scalar_t__ mode; scalar_t__ mtime; int id; } ;
typedef TYPE_1__ SeafDirent ;


 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static gboolean
dirent_same (SeafDirent *dent1, SeafDirent *dent2)
{
    return (strcmp(dent1->id, dent2->id) == 0 &&
            dent1->mode == dent2->mode &&
            dent1->mtime == dent2->mtime);
}

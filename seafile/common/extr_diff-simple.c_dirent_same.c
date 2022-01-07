
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_4__ {scalar_t__ mode; scalar_t__ mtime; int id; } ;
typedef TYPE_1__ SeafDirent ;


 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) inline static gboolean
dirent_same (SeafDirent *denta, SeafDirent *dentb)
{
    return (strcmp (dentb->id, denta->id) == 0 &&
     denta->mode == dentb->mode &&
     denta->mtime == dentb->mtime);
}

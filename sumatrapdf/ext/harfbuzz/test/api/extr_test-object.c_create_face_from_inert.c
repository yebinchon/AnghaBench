
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hb_blob_get_empty () ;
 void* hb_face_create (int ,int ) ;

__attribute__((used)) static void *
create_face_from_inert (void)
{
  return hb_face_create (hb_blob_get_empty (), 0);
}

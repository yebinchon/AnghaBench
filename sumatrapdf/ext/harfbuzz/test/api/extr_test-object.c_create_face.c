
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void hb_face_t ;
typedef int hb_blob_t ;


 scalar_t__ create_blob () ;
 int hb_blob_destroy (int *) ;
 void* hb_face_create (int *,int ) ;

__attribute__((used)) static void *
create_face (void)
{
  hb_blob_t *blob = (hb_blob_t *) create_blob ();
  hb_face_t *face = hb_face_create (blob, 0);
  hb_blob_destroy (blob);
  return face;
}

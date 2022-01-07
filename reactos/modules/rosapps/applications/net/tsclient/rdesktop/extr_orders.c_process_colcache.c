
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8 ;
struct TYPE_6__ {scalar_t__ red; scalar_t__ green; scalar_t__ blue; } ;
struct TYPE_5__ {int ncolours; TYPE_2__* colours; } ;
typedef int STREAM ;
typedef int RDPCLIENT ;
typedef int HCOLOURMAP ;
typedef TYPE_1__ COLOURMAP ;
typedef TYPE_2__ COLOURENTRY ;


 int DEBUG (char*) ;
 int free (TYPE_2__*) ;
 int in_uint16_le (int ,int) ;
 int in_uint8 (int ,scalar_t__) ;
 int in_uint8s (int ,int) ;
 scalar_t__ malloc (int) ;
 int ui_create_colourmap (int *,TYPE_1__*) ;
 int ui_set_colourmap (int *,int ) ;

__attribute__((used)) static void
process_colcache(RDPCLIENT * This, STREAM s)
{
 COLOURENTRY *entry;
 COLOURMAP map;
 HCOLOURMAP hmap;
 uint8 cache_id;
 int i;

 in_uint8(s, cache_id);
 in_uint16_le(s, map.ncolours);

 map.colours = (COLOURENTRY *) malloc(sizeof(COLOURENTRY) * map.ncolours);

 if(map.colours == ((void*)0))
 {
  in_uint8s(s, map.ncolours * 4);
  return;
 }

 for (i = 0; i < map.ncolours; i++)
 {
  entry = &map.colours[i];
  in_uint8(s, entry->blue);
  in_uint8(s, entry->green);
  in_uint8(s, entry->red);
  in_uint8s(s, 1);
 }

 DEBUG(("COLCACHE(id=%d,n=%d)\n", cache_id, map.ncolours));

 hmap = ui_create_colourmap(This, &map);

 if (cache_id)
  ui_set_colourmap(This, hmap);

 free(map.colours);
}

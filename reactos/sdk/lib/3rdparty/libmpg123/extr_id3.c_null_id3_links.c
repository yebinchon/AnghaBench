
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * comment; int * genre; int * year; int * album; int * artist; int * title; } ;
struct TYPE_5__ {TYPE_1__ id3v2; } ;
typedef TYPE_2__ mpg123_handle ;



__attribute__((used)) static void null_id3_links(mpg123_handle *fr)
{
 fr->id3v2.title = ((void*)0);
 fr->id3v2.artist = ((void*)0);
 fr->id3v2.album = ((void*)0);
 fr->id3v2.year = ((void*)0);
 fr->id3v2.genre = ((void*)0);
 fr->id3v2.comment = ((void*)0);
}

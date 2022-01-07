
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int musicbrainz_lookup_t ;


 int * calloc (int,int) ;

__attribute__((used)) static musicbrainz_lookup_t * musicbrainz_lookup_new(void)
{
    return calloc(1, sizeof(musicbrainz_lookup_t));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpack_decoder {char** table; int entries; int size; } ;


 int free (char*) ;
 int hpack_decode_evict (struct hpack_decoder*) ;
 char* malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 char** realloc (char**,int) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int hpack_append_hdr(struct hpack_decoder *dec,
                            const char *name, const char *value)
{
    size_t namelen = strlen(name), valuelen = strlen(value);
    char *entry = malloc(namelen + valuelen + 2);
    if (entry == ((void*)0))
        return -1;
    memcpy(entry, name, namelen + 1);
    memcpy(entry + namelen + 1, value, valuelen + 1);

    char **newtab = realloc(dec->table,
                            sizeof (dec->table[0]) * (dec->entries + 1));
    if (newtab == ((void*)0))
    {
        free(entry);
        return -1;
    }

    dec->table = newtab;
    dec->table[dec->entries] = entry;
    dec->entries++;
    dec->size += 32 + namelen + valuelen;

    hpack_decode_evict(dec);
    return 0;
}

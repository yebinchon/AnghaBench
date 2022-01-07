
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const sd_journal ;


 size_t REPLACE_VAR_MAX ;
 int assert (char const*) ;
 int sd_journal_get_data (char const*,char const*,void const**,size_t*) ;
 char* strdup (char const*) ;
 int strlen (char const*) ;
 char* strndup (char const*,size_t) ;

__attribute__((used)) static char *lookup_field(const char *field, void *userdata) {
        sd_journal *j = userdata;
        const void *data;
        size_t size, d;
        int r;

        assert(field);
        assert(j);

        r = sd_journal_get_data(j, field, &data, &size);
        if (r < 0 ||
            size > REPLACE_VAR_MAX)
                return strdup(field);

        d = strlen(field) + 1;

        return strndup((const char*) data + d, size - d);
}

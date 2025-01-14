
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char*) ;

int binary_search(const char *needle, char **haystack, int start, int end) {
    int mid;
    int rc;

    if (start == end) {
        return -1;
    }

    mid = start + ((end - start) / 2);

    rc = strcmp(needle, haystack[mid]);
    if (rc < 0) {
        return binary_search(needle, haystack, start, mid);
    } else if (rc > 0) {
        return binary_search(needle, haystack, mid + 1, end);
    }

    return mid;
}

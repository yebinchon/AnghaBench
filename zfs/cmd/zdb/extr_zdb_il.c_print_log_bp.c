
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int blkptr_t ;
typedef int blkbuf ;


 int BP_SPRINTF_LEN ;
 int printf (char*,char const*,char*) ;
 int snprintf_blkptr (char*,int,int const*) ;

__attribute__((used)) static void
print_log_bp(const blkptr_t *bp, const char *prefix)
{
 char blkbuf[BP_SPRINTF_LEN];

 snprintf_blkptr(blkbuf, sizeof (blkbuf), bp);
 (void) printf("%s%s\n", prefix, blkbuf);
}

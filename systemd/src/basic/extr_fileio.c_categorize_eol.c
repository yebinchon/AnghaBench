
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ReadLineFlags ;
typedef int EndOfLineMarker ;


 int EOL_NONE ;
 int EOL_TEN ;
 int EOL_THIRTEEN ;
 int EOL_ZERO ;
 int IN_SET (int ,int ) ;
 int READ_LINE_ONLY_NUL ;

__attribute__((used)) static EndOfLineMarker categorize_eol(char c, ReadLineFlags flags) {

        if (!IN_SET(flags, READ_LINE_ONLY_NUL)) {
                if (c == '\n')
                        return EOL_TEN;
                if (c == '\r')
                        return EOL_THIRTEEN;
        }

        if (c == '\0')
                return EOL_ZERO;

        return EOL_NONE;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_INFO ;
 int LOG_NOTICE ;

__attribute__((used)) static int raise_level(int log_level, bool condition_info, bool condition_notice) {
        if (condition_notice && log_level > LOG_NOTICE)
                return LOG_NOTICE;
        if (condition_info && log_level > LOG_INFO)
                return LOG_INFO;
        return log_level;
}

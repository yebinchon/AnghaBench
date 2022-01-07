
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwFileAttributes; int cFileName; } ;
typedef TYPE_1__ WIN32_FIND_DATAW ;
typedef char WCHAR ;
typedef int BOOL ;


 int FILE_ATTRIBUTE_DIRECTORY ;
 scalar_t__ strcmpW (int ,char const*) ;

__attribute__((used)) static inline BOOL is_dir_data(const WIN32_FIND_DATAW *data)
{
    static const WCHAR dotdotW[] = {'.','.',0};
    static const WCHAR dotW[] = {'.',0};

    return (data->dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY) &&
            strcmpW(data->cFileName, dotdotW) &&
            strcmpW(data->cFileName, dotW);
}

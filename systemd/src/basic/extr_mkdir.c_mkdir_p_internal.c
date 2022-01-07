
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;
typedef int (* mkdir_func_t ) (char const*,int ) ;


 int EEXIST ;
 int assert (int) ;
 scalar_t__ is_dir (char const*,int) ;
 int mkdir (char const*,int ) ;
 int mkdir_parents_internal (char const*,char const*,int ,int (*) (char const*,int )) ;

int mkdir_p_internal(const char *prefix, const char *path, mode_t mode, mkdir_func_t _mkdir) {
        int r;



        assert(_mkdir != mkdir);

        r = mkdir_parents_internal(prefix, path, mode, _mkdir);
        if (r < 0)
                return r;

        r = _mkdir(path, mode);
        if (r < 0 && (r != -EEXIST || is_dir(path, 1) <= 0))
                return r;

        return 0;
}

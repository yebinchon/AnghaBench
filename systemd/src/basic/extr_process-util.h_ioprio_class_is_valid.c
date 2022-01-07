
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IN_SET (int,int ,int ,int ,int ) ;
 int IOPRIO_CLASS_BE ;
 int IOPRIO_CLASS_IDLE ;
 int IOPRIO_CLASS_NONE ;
 int IOPRIO_CLASS_RT ;

__attribute__((used)) static inline bool ioprio_class_is_valid(int i) {
        return IN_SET(i, IOPRIO_CLASS_NONE, IOPRIO_CLASS_RT, IOPRIO_CLASS_BE, IOPRIO_CLASS_IDLE);
}

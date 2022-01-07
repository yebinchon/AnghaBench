
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hxxx_helper {int i_nal_length_size; } ;



__attribute__((used)) static inline bool
helper_nal_length_valid(struct hxxx_helper *hh)
{
    return hh->i_nal_length_size == 1 || hh->i_nal_length_size == 2
        || hh->i_nal_length_size == 4;
}

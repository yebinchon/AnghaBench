
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icon_theme {scalar_t__ directories; scalar_t__ comment; scalar_t__ name; } ;



__attribute__((used)) static bool validate_icon_theme(struct icon_theme *theme) {
 return theme && theme->name && theme->comment && theme->directories;
}

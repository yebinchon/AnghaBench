; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_theme.c_rofi_theme_parse_prepare_file.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_theme.c_rofi_theme_parse_prepare_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rofi_theme_parse_prepare_file(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i8* @rofi_expand_path(i8* %9)
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @g_path_is_absolute(i8* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = load i8*, i8** %4, align 8
  %19 = call i8* @g_path_get_dirname(i8* %18)
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i8* @g_build_filename(i8* %20, i8* %21, i32* null)
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @g_free(i8* %23)
  %25 = load i8*, i8** %7, align 8
  store i8* %25, i8** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @g_free(i8* %26)
  br label %28

28:                                               ; preds = %17, %13, %2
  %29 = load i8*, i8** %5, align 8
  %30 = call i32* @g_file_new_for_path(i8* %29)
  store i32* %30, i32** %8, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @g_free(i8* %31)
  %33 = load i32*, i32** %8, align 8
  %34 = call i8* @g_file_get_path(i32* %33)
  store i8* %34, i8** %5, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @g_object_unref(i32* %35)
  %37 = load i8*, i8** %5, align 8
  ret i8* %37
}

declare dso_local i8* @rofi_expand_path(i8*) #1

declare dso_local i32 @g_path_is_absolute(i8*) #1

declare dso_local i8* @g_path_get_dirname(i8*) #1

declare dso_local i8* @g_build_filename(i8*, i8*, i32*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32* @g_file_new_for_path(i8*) #1

declare dso_local i8* @g_file_get_path(i32*) #1

declare dso_local i32 @g_object_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

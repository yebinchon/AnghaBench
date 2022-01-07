; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/extr_vlc.c_vlclua_dir_list.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/extr_vlc.c_vlclua_dir_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_USERDATA_DIR = common dso_local global i32 0, align 4
@VLC_PKG_LIBEXEC_DIR = common dso_local global i32 0, align 4
@VLC_PKG_DATA_DIR = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlclua_dir_list(i8* %0, i8*** noalias %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8***, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8*** %1, i8**** %5, align 8
  %10 = call i8** @malloc(i32 32)
  store i8** %10, i8*** %6, align 8
  %11 = load i8**, i8*** %6, align 8
  %12 = icmp eq i8** %11, null
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %17, i32* %3, align 4
  br label %63

18:                                               ; preds = %2
  %19 = load i8**, i8*** %6, align 8
  %20 = load i8***, i8**** %5, align 8
  store i8** %19, i8*** %20, align 8
  %21 = load i8**, i8*** %6, align 8
  %22 = load i32, i32* @VLC_USERDATA_DIR, align 4
  %23 = call i8* @config_GetUserDir(i32 %22)
  %24 = load i8*, i8** %4, align 8
  %25 = call i8** @vlclua_dir_list_append(i8** %21, i8* %23, i8* %24)
  store i8** %25, i8*** %6, align 8
  %26 = load i32, i32* @VLC_PKG_LIBEXEC_DIR, align 4
  %27 = call i8* @config_GetSysPath(i32 %26, i32* null)
  store i8* %27, i8** %7, align 8
  %28 = load i32, i32* @VLC_PKG_DATA_DIR, align 4
  %29 = call i8* @config_GetSysPath(i32 %28, i32* null)
  store i8* %29, i8** %8, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %18
  %33 = load i8*, i8** %8, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i64 @strcmp(i8* %36, i8* %37)
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %35, %32, %18
  %41 = phi i1 [ false, %32 ], [ false, %18 ], [ %39, %35 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %9, align 4
  %43 = load i8**, i8*** %6, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = call i8** @vlclua_dir_list_append(i8** %43, i8* %44, i8* %45)
  store i8** %46, i8*** %6, align 8
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %40
  %50 = load i8*, i8** %7, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %49, %40
  %53 = load i8**, i8*** %6, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = call i8** @vlclua_dir_list_append(i8** %53, i8* %54, i8* %55)
  store i8** %56, i8*** %6, align 8
  br label %60

57:                                               ; preds = %49
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @free(i8* %58)
  br label %60

60:                                               ; preds = %57, %52
  %61 = load i8**, i8*** %6, align 8
  store i8* null, i8** %61, align 8
  %62 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %60, %16
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i8** @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8** @vlclua_dir_list_append(i8**, i8*, i8*) #1

declare dso_local i8* @config_GetUserDir(i32) #1

declare dso_local i8* @config_GetSysPath(i32, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

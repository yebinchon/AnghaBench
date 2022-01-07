; ModuleID = '/home/carl/AnghaBench/tig/src/extr_apps.c_app_diff_highlight_path_search.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_apps.c_app_diff_highlight_path_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@SIZEOF_MED_STR = common dso_local global i32 0, align 4
@SIZEOF_STR = common dso_local global i32 0, align 4
@_PATH_DEFPATH = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"%s:%s/%s:%s/%s:%s/%s:%s/%s\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"../../share/git-core/contrib/diff-highlight\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"../share/git-core/contrib/diff-highlight\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"../../share/git/contrib/diff-highlight\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"../share/git/contrib/diff-highlight\00", align 1
@X_OK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"diff-highlight\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"diff-highlight.perl\00", align 1
@R_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*)* @app_diff_highlight_path_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @app_diff_highlight_path_search(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %3
  store i32 0, i32* %4, align 4
  br label %81

20:                                               ; preds = %15
  %21 = load i8*, i8** %7, align 8
  %22 = call i64 @strchr(i8* %21, i8 signext 47)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = call i32 @string_ncopy_do(i8* %25, i64 %26, i8* %27, i32 %29)
  store i32 1, i32* %4, align 4
  br label %81

31:                                               ; preds = %20
  %32 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %32, i8** %8, align 8
  %33 = load i32, i32* @SIZEOF_MED_STR, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %9, align 8
  %36 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %10, align 8
  %37 = load i32, i32* @SIZEOF_STR, align 4
  %38 = zext i32 %37 to i64
  %39 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %11, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %31
  %43 = load i8*, i8** %8, align 8
  %44 = load i8, i8* %43, align 1
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42, %31
  %47 = load i8*, i8** @_PATH_DEFPATH, align 8
  store i8* %47, i8** %8, align 8
  br label %48

48:                                               ; preds = %46, %42
  %49 = trunc i64 %38 to i32
  %50 = call i64 @app_git_exec_path(i8* %39, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @string_format(i8* %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %53, i8* %39, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %39, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %60

55:                                               ; preds = %48
  %56 = load i8*, i8** %8, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @strlen(i8* %57)
  %59 = call i32 @string_ncopy(i8* %36, i8* %56, i32 %58)
  br label %60

60:                                               ; preds = %55, %52
  %61 = load i8*, i8** %5, align 8
  %62 = load i64, i64* %6, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* @X_OK, align 4
  %65 = call i32 @path_search(i8* %61, i64 %62, i8* %63, i8* %36, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %60
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @strcmp(i8* %68, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %67
  %72 = load i8*, i8** %5, align 8
  %73 = load i64, i64* %6, align 8
  %74 = load i32, i32* @R_OK, align 4
  %75 = call i32 @path_search(i8* %72, i64 %73, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %36, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %71
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %79

78:                                               ; preds = %71, %67, %60
  store i32 1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %79

79:                                               ; preds = %78, %77
  %80 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %80)
  br label %81

81:                                               ; preds = %79, %24, %19
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @string_ncopy_do(i8*, i64, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @getenv(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @app_git_exec_path(i8*, i32) #1

declare dso_local i32 @string_format(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @string_ncopy(i8*, i8*, i32) #1

declare dso_local i32 @path_search(i8*, i64, i8*, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_should_ignore.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_should_ignore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ignore_patterns = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [50 x i8] c"File name %s contains non-UTF8 characters, skip.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@SEAF_DIR_NAME_LEN = common dso_local global i64 0, align 8
@seaf = common dso_local global %struct.TYPE_2__* null, align 8
@office_temp_ignore_patterns = common dso_local global i32** null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @should_ignore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_ignore(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i32**, i32*** @ignore_patterns, align 8
  store i32** %11, i32*** %8, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @g_utf8_validate(i8* %14, i32 -1, i32* null)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @seaf_warning(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i32, i32* @TRUE, align 4
  store i32 %20, i32* %4, align 4
  br label %93

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = call i64 @strlen(i8* %22)
  %24 = load i64, i64* @SEAF_DIR_NAME_LEN, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @TRUE, align 4
  store i32 %27, i32* %4, align 4
  br label %93

28:                                               ; preds = %21
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 @strchr(i8* %29, i8 signext 47)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* %4, align 4
  br label %93

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %47, %34
  %36 = load i32**, i32*** %8, align 8
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = load i32**, i32*** %8, align 8
  %41 = load i32*, i32** %40, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i64 @g_pattern_match_string(i32* %41, i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @TRUE, align 4
  store i32 %46, i32* %4, align 4
  br label %93

47:                                               ; preds = %39
  %48 = load i32**, i32*** %8, align 8
  %49 = getelementptr inbounds i32*, i32** %48, i32 1
  store i32** %49, i32*** %8, align 8
  br label %35

50:                                               ; preds = %35
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @seaf, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %73, label %55

55:                                               ; preds = %50
  %56 = load i32**, i32*** @office_temp_ignore_patterns, align 8
  store i32** %56, i32*** %8, align 8
  br label %57

57:                                               ; preds = %69, %55
  %58 = load i32**, i32*** %8, align 8
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = load i32**, i32*** %8, align 8
  %63 = load i32*, i32** %62, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = call i64 @g_pattern_match_string(i32* %63, i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* @TRUE, align 4
  store i32 %68, i32* %4, align 4
  br label %93

69:                                               ; preds = %61
  %70 = load i32**, i32*** %8, align 8
  %71 = getelementptr inbounds i32*, i32** %70, i32 1
  store i32** %71, i32*** %8, align 8
  br label %57

72:                                               ; preds = %57
  br label %73

73:                                               ; preds = %72, %50
  %74 = load i8*, i8** %5, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %91

76:                                               ; preds = %73
  %77 = load i8*, i8** %5, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = call i8* @g_build_path(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %77, i8* %78, i32* null)
  store i8* %79, i8** %10, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = call i64 @seaf_repo_check_ignore_file(i32* %80, i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %76
  %85 = load i8*, i8** %10, align 8
  %86 = call i32 @g_free(i8* %85)
  %87 = load i32, i32* @TRUE, align 4
  store i32 %87, i32* %4, align 4
  br label %93

88:                                               ; preds = %76
  %89 = load i8*, i8** %10, align 8
  %90 = call i32 @g_free(i8* %89)
  br label %91

91:                                               ; preds = %88, %73
  %92 = load i32, i32* @FALSE, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %91, %84, %67, %45, %32, %26, %17
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @g_utf8_validate(i8*, i32, i32*) #1

declare dso_local i32 @seaf_warning(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i64 @g_pattern_match_string(i32*, i8*) #1

declare dso_local i8* @g_build_path(i8*, i8*, i8*, i32*) #1

declare dso_local i64 @seaf_repo_check_ignore_file(i32*, i8*) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

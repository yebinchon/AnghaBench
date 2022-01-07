; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_helper.c_helper_get_theme_path.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_helper.c_helper_get_theme_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"Opening theme, testing: %s\0A\00", align 1
@G_FILE_TEST_EXISTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c".rasi\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"rofi\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"themes\00", align 1
@THEME_DIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @helper_get_theme_path(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i8* @rofi_expand_path(i8* %11)
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @g_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* @G_FILE_TEST_EXISTS, align 4
  %17 = call i64 @g_file_test(i8* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i8*, i8** %4, align 8
  store i8* %20, i8** %2, align 8
  br label %126

21:                                               ; preds = %1
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @g_free(i8* %22)
  %24 = load i8*, i8** %3, align 8
  %25 = call i64 @g_str_has_suffix(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i8*, i8** %3, align 8
  %29 = call i8* @g_strdup(i8* %28)
  store i8* %29, i8** %4, align 8
  br label %33

30:                                               ; preds = %21
  %31 = load i8*, i8** %3, align 8
  %32 = call i8* @g_strconcat(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i8* %32, i8** %4, align 8
  br label %33

33:                                               ; preds = %30, %27
  %34 = call i8* (...) @g_get_user_config_dir()
  store i8* %34, i8** %5, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %57

37:                                               ; preds = %33
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = call i8* (i8*, i8*, i8*, ...) @g_build_filename(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %39, i8* null)
  store i8* %40, i8** %6, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @g_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %41)
  %43 = load i8*, i8** %6, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %37
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* @G_FILE_TEST_EXISTS, align 4
  %48 = call i64 @g_file_test(i8* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @g_free(i8* %51)
  %53 = load i8*, i8** %6, align 8
  store i8* %53, i8** %2, align 8
  br label %126

54:                                               ; preds = %45, %37
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @g_free(i8* %55)
  br label %57

57:                                               ; preds = %54, %33
  %58 = load i8*, i8** %5, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %77

60:                                               ; preds = %57
  %61 = load i8*, i8** %5, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = call i8* (i8*, i8*, i8*, ...) @g_build_filename(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %62, i8* null)
  store i8* %63, i8** %7, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @g_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %64)
  %66 = load i8*, i8** %7, align 8
  %67 = load i32, i32* @G_FILE_TEST_EXISTS, align 4
  %68 = call i64 @g_file_test(i8* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %60
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 @g_free(i8* %71)
  %73 = load i8*, i8** %7, align 8
  store i8* %73, i8** %2, align 8
  br label %126

74:                                               ; preds = %60
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @g_free(i8* %75)
  br label %77

77:                                               ; preds = %74, %57
  %78 = call i8* (...) @g_get_user_data_dir()
  store i8* %78, i8** %8, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %102

81:                                               ; preds = %77
  %82 = load i8*, i8** %8, align 8
  %83 = load i8*, i8** %4, align 8
  %84 = call i8* (i8*, i8*, i8*, ...) @g_build_filename(i8* %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %83, i8* null)
  store i8* %84, i8** %9, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = call i32 @g_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %85)
  %87 = load i8*, i8** %9, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %101

89:                                               ; preds = %81
  %90 = load i8*, i8** %9, align 8
  %91 = load i32, i32* @G_FILE_TEST_EXISTS, align 4
  %92 = call i64 @g_file_test(i8* %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load i8*, i8** %4, align 8
  %96 = call i32 @g_free(i8* %95)
  %97 = load i8*, i8** %9, align 8
  store i8* %97, i8** %2, align 8
  br label %126

98:                                               ; preds = %89
  %99 = load i8*, i8** %9, align 8
  %100 = call i32 @g_free(i8* %99)
  br label %101

101:                                              ; preds = %98, %81
  br label %102

102:                                              ; preds = %101, %77
  %103 = load i32, i32* @THEME_DIR, align 4
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to i8*
  %106 = load i8*, i8** %4, align 8
  %107 = call i8* (i8*, i8*, i8*, ...) @g_build_filename(i8* %105, i8* %106, i8* null)
  store i8* %107, i8** %10, align 8
  %108 = load i8*, i8** %10, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %124

110:                                              ; preds = %102
  %111 = load i8*, i8** %10, align 8
  %112 = call i32 @g_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %111)
  %113 = load i8*, i8** %10, align 8
  %114 = load i32, i32* @G_FILE_TEST_EXISTS, align 4
  %115 = call i64 @g_file_test(i8* %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = load i8*, i8** %4, align 8
  %119 = call i32 @g_free(i8* %118)
  %120 = load i8*, i8** %10, align 8
  store i8* %120, i8** %2, align 8
  br label %126

121:                                              ; preds = %110
  %122 = load i8*, i8** %10, align 8
  %123 = call i32 @g_free(i8* %122)
  br label %124

124:                                              ; preds = %121, %102
  %125 = load i8*, i8** %4, align 8
  store i8* %125, i8** %2, align 8
  br label %126

126:                                              ; preds = %124, %117, %94, %70, %50, %19
  %127 = load i8*, i8** %2, align 8
  ret i8* %127
}

declare dso_local i8* @rofi_expand_path(i8*) #1

declare dso_local i32 @g_debug(i8*, i8*) #1

declare dso_local i64 @g_file_test(i8*, i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i64 @g_str_has_suffix(i8*, i8*) #1

declare dso_local i8* @g_strdup(i8*) #1

declare dso_local i8* @g_strconcat(i8*, i8*, i32*) #1

declare dso_local i8* @g_get_user_config_dir(...) #1

declare dso_local i8* @g_build_filename(i8*, i8*, i8*, ...) #1

declare dso_local i8* @g_get_user_data_dir(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

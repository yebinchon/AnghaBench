; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_os_win32.c_mch_can_exe.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_os_win32.c_mch_can_exe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_MAX_PATH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@p_sh = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"PATHEXT\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c".com;.exe;.bat;.cmd\00", align 1
@NUL = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c";\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mch_can_exe(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i32, i32* @_MAX_PATH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @STRLEN(i8* %13)
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @_MAX_PATH, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %103

21:                                               ; preds = %1
  %22 = load i8*, i8** %3, align 8
  %23 = call i64 @gettail(i8* %22)
  %24 = call i32* @vim_strchr(i64 %23, i8 signext 46)
  %25 = icmp ne i32* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = load i8*, i8** @p_sh, align 8
  %28 = call i64 @gettail(i8* %27)
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32* @strstr(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %26, %21
  %33 = load i8*, i8** %3, align 8
  %34 = call i64 @executable_exists(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @TRUE, align 4
  store i32 %37, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %103

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38, %26
  %40 = load i8*, i8** %3, align 8
  %41 = load i32, i32* @_MAX_PATH, align 4
  %42 = sub nsw i32 %41, 1
  %43 = call i32 @vim_strncpy(i8* %12, i8* %40, i32 %42)
  %44 = call i8* @mch_getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %44, i8** %7, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %48

48:                                               ; preds = %47, %39
  br label %49

49:                                               ; preds = %100, %48
  %50 = load i8*, i8** %7, align 8
  %51 = load i8, i8* %50, align 1
  %52 = icmp ne i8 %51, 0
  br i1 %52, label %53, label %101

53:                                               ; preds = %49
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 46
  br i1 %58, label %59, label %87

59:                                               ; preds = %53
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = load i8, i8* @NUL, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %73, label %67

67:                                               ; preds = %59
  %68 = load i8*, i8** %7, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 59
  br i1 %72, label %73, label %87

73:                                               ; preds = %67, %59
  %74 = load i8, i8* @NUL, align 1
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %12, i64 %76
  store i8 %74, i8* %77, align 1
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %7, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = load i8, i8* %80, align 1
  %82 = icmp ne i8 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %73
  %84 = load i8*, i8** %7, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %7, align 8
  br label %86

86:                                               ; preds = %83, %73
  br label %95

87:                                               ; preds = %67, %53
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %12, i64 %89
  %91 = load i32, i32* @_MAX_PATH, align 4
  %92 = load i32, i32* %6, align 4
  %93 = sub nsw i32 %91, %92
  %94 = call i32 @copy_option_part(i8** %7, i8* %90, i32 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %95

95:                                               ; preds = %87, %86
  %96 = call i64 @executable_exists(i8* %12)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = load i32, i32* @TRUE, align 4
  store i32 %99, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %103

100:                                              ; preds = %95
  br label %49

101:                                              ; preds = %49
  %102 = load i32, i32* @FALSE, align 4
  store i32 %102, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %103

103:                                              ; preds = %101, %98, %36, %19
  %104 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @STRLEN(i8*) #2

declare dso_local i32* @vim_strchr(i64, i8 signext) #2

declare dso_local i64 @gettail(i8*) #2

declare dso_local i32* @strstr(i8*, i8*) #2

declare dso_local i64 @executable_exists(i8*) #2

declare dso_local i32 @vim_strncpy(i8*, i8*, i32) #2

declare dso_local i8* @mch_getenv(i8*) #2

declare dso_local i32 @copy_option_part(i8**, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

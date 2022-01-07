; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/stats/extr_stats.c_ProcessDirectories.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/stats/extr_stats.c_ProcessDirectories.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@BeSilent = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Processing %s ...\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\\*.*\00", align 1
@FindExInfoStandard = common dso_local global i32 0, align 4
@FindExSearchLimitToDirectories = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"CVS\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c".svn\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ProcessDirectories(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i32, i32* @BeSilent, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = call i32 @_T(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @_tprintf(i32 %17, i32* %18)
  br label %20

20:                                               ; preds = %16, %1
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @_tcscpy(i32* %13, i32* %21)
  %23 = call i32 @_T(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @_tcscat(i32* %13, i32 %23)
  %25 = load i32, i32* @FindExInfoStandard, align 4
  %26 = load i32, i32* @FindExSearchLimitToDirectories, align 4
  %27 = call i64 @FindFirstFileEx(i32* %13, i32 %25, %struct.TYPE_4__* %4, i32 %26, i32* null, i32 0)
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %90

31:                                               ; preds = %20
  %32 = load i32, i32* @TRUE, align 4
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %84, %31
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %87

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %84

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @_T(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %46 = call i64 @_tcscmp(i32 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %84

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %52 = call i64 @_tcscmp(i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %84

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @_T(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %58 = call i64 @_tcscmp(i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %84

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @_T(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %64 = call i64 @_tcscmp(i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %60
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @_tcscpy(i32* %13, i32* %67)
  %69 = call i32 @_T(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %70 = call i32 @_tcscat(i32* %13, i32 %69)
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @_tcscat(i32* %13, i32 %72)
  %74 = call i32 @ProcessDirectories(i32* %13)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %66
  %77 = load i32, i32* @FALSE, align 4
  store i32 %77, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %92

78:                                               ; preds = %66
  %79 = call i32 @ProcessFiles(i32* %13)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* @FALSE, align 4
  store i32 %82, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %92

83:                                               ; preds = %78
  br label %84

84:                                               ; preds = %83, %60, %54, %48, %42, %36
  %85 = load i64, i64* %7, align 8
  %86 = call i32 @FindNextFile(i64 %85, %struct.TYPE_4__* %4)
  store i32 %86, i32* %8, align 4
  br label %33

87:                                               ; preds = %33
  %88 = load i64, i64* %7, align 8
  %89 = call i32 @FindClose(i64 %88)
  br label %90

90:                                               ; preds = %87, %20
  %91 = load i32, i32* @TRUE, align 4
  store i32 %91, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %92

92:                                               ; preds = %90, %81, %76
  %93 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %93)
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @_tprintf(i32, i32*) #2

declare dso_local i32 @_T(i8*) #2

declare dso_local i32 @_tcscpy(i32*, i32*) #2

declare dso_local i32 @_tcscat(i32*, i32) #2

declare dso_local i64 @FindFirstFileEx(i32*, i32, %struct.TYPE_4__*, i32, i32*, i32) #2

declare dso_local i64 @_tcscmp(i32, i32) #2

declare dso_local i32 @ProcessFiles(i32*) #2

declare dso_local i32 @FindNextFile(i64, %struct.TYPE_4__*) #2

declare dso_local i32 @FindClose(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_classes.c_HCR_GetDefaultVerbW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_classes.c_HCR_GetDefaultVerbW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%p %s %p\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@swShell = common dso_local global i32 0, align 4
@swCommand = common dso_local global i8* null, align 8
@KEY_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"default verb=%s\0A\00", align 1
@swOpen = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"default verb=open\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"default verb=first verb=%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"no default verb!\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HCR_GetDefaultVerbW(i32 %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @debugstr_w(i8* %20)
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %21, i8* %22)
  %24 = load i8*, i8** %7, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %4
  %27 = load i8*, i8** %7, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i8*, i8** %8, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @lstrcpynW(i8* %32, i8* %33, i32 %34)
  %36 = load i32, i32* @TRUE, align 4
  store i32 %36, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %108

37:                                               ; preds = %26, %4
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %12, align 4
  %39 = load i8*, i8** %8, align 8
  store i8 0, i8* %39, align 1
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @swShell, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @RegQueryValueW(i32 %40, i32 %41, i8* %42, i32* %12)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %69, label %45

45:                                               ; preds = %37
  %46 = load i8*, i8** %8, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %45
  %51 = load i32, i32* @swShell, align 4
  %52 = call i32 @lstrcpyW(i8* %18, i32 %51)
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @lstrcatW(i8* %18, i8* %53)
  %55 = load i8*, i8** @swCommand, align 8
  %56 = call i32 @lstrcatW(i8* %18, i8* %55)
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @KEY_READ, align 4
  %59 = call i32 @RegOpenKeyExW(i32 %57, i8* %18, i32 0, i32 %58, i32* %13)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %50
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @RegCloseKey(i32 %62)
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @debugstr_w(i8* %64)
  %66 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @TRUE, align 4
  store i32 %67, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %108

68:                                               ; preds = %50
  br label %69

69:                                               ; preds = %68, %45, %37
  %70 = load i32, i32* @swShell, align 4
  %71 = call i32 @lstrcpyW(i8* %18, i32 %70)
  %72 = load i8*, i8** @swOpen, align 8
  %73 = call i32 @lstrcatW(i8* %18, i8* %72)
  %74 = load i8*, i8** @swCommand, align 8
  %75 = call i32 @lstrcatW(i8* %18, i8* %74)
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @KEY_READ, align 4
  %78 = call i32 @RegOpenKeyExW(i32 %76, i8* %18, i32 0, i32 %77, i32* %13)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %69
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @RegCloseKey(i32 %81)
  %83 = load i8*, i8** %8, align 8
  %84 = load i8*, i8** @swOpen, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @lstrcpynW(i8* %83, i8* %84, i32 %85)
  %87 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %88 = load i32, i32* @TRUE, align 4
  store i32 %88, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %108

89:                                               ; preds = %69
  %90 = load i32, i32* %6, align 4
  %91 = load i8*, i8** %8, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @RegEnumKeyW(i32 %90, i32 0, i8* %91, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %105, label %95

95:                                               ; preds = %89
  %96 = load i8*, i8** %8, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load i8*, i8** %8, align 8
  %102 = call i32 @debugstr_w(i8* %101)
  %103 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @TRUE, align 4
  store i32 %104, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %108

105:                                              ; preds = %95, %89
  %106 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %107 = load i32, i32* @FALSE, align 4
  store i32 %107, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %108

108:                                              ; preds = %105, %100, %80, %61, %31
  %109 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %109)
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TRACE(i8*, ...) #2

declare dso_local i32 @debugstr_w(i8*) #2

declare dso_local i32 @lstrcpynW(i8*, i8*, i32) #2

declare dso_local i32 @RegQueryValueW(i32, i32, i8*, i32*) #2

declare dso_local i32 @lstrcpyW(i8*, i32) #2

declare dso_local i32 @lstrcatW(i8*, i8*) #2

declare dso_local i32 @RegOpenKeyExW(i32, i8*, i32, i32, i32*) #2

declare dso_local i32 @RegCloseKey(i32) #2

declare dso_local i32 @RegEnumKeyW(i32, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_classes.c_HCR_GetExecuteCommandW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_classes.c_HCR_GetExecuteCommandW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%p %s %s %p\0A\00", align 1
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@swShell = common dso_local global i32 0, align 4
@swCommand = common dso_local global i32* null, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"-- %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HCR_GetExecuteCommandW(i32 %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @debugstr_w(i64 %23)
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @debugstr_w(i64 %25)
  %27 = load i64, i64* %10, align 8
  %28 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %24, i32 %26, i64 %27)
  %29 = load i64, i64* %8, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %5
  %32 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %33 = load i64, i64* %8, align 8
  %34 = load i32, i32* @KEY_READ, align 4
  %35 = call i32 @RegOpenKeyExW(i32 %32, i64 %33, i32 0, i32 %34, i32* %7)
  br label %36

36:                                               ; preds = %31, %5
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %78

41:                                               ; preds = %36
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i64, i64* %9, align 8
  %45 = mul nuw i64 4, %19
  %46 = udiv i64 %45, 4
  %47 = trunc i64 %46 to i32
  %48 = call i64 @HCR_GetDefaultVerbW(i32 %43, i64 %44, i32* %21, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %41
  %51 = load i32, i32* @MAX_PATH, align 4
  %52 = zext i32 %51 to i64
  %53 = call i8* @llvm.stacksave()
  store i8* %53, i8** %16, align 8
  %54 = alloca i32, i64 %52, align 16
  store i64 %52, i64* %17, align 8
  %55 = load i32, i32* @swShell, align 4
  %56 = call i32 @lstrcpyW(i32* %54, i32 %55)
  %57 = call i32 @lstrcatW(i32* %54, i32* %21)
  %58 = load i32*, i32** @swCommand, align 8
  %59 = call i32 @lstrcatW(i32* %54, i32* %58)
  %60 = load i64, i64* @ERROR_SUCCESS, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i64, i64* %10, align 8
  %63 = call i64 @SHGetValueW(i32 %61, i32* %54, i32* null, i32* null, i64 %62, i32* %11)
  %64 = icmp eq i64 %60, %63
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %14, align 4
  %66 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %66)
  br label %67

67:                                               ; preds = %50, %41
  %68 = load i64, i64* %8, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @RegCloseKey(i32 %71)
  br label %73

73:                                               ; preds = %70, %67
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @debugstr_w(i64 %74)
  %76 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %14, align 4
  store i32 %77, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %78

78:                                               ; preds = %73, %39
  %79 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %79)
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TRACE(i8*, i32, ...) #2

declare dso_local i32 @debugstr_w(i64) #2

declare dso_local i32 @RegOpenKeyExW(i32, i64, i32, i32, i32*) #2

declare dso_local i64 @HCR_GetDefaultVerbW(i32, i64, i32*, i32) #2

declare dso_local i32 @lstrcpyW(i32*, i32) #2

declare dso_local i32 @lstrcatW(i32*, i32*) #2

declare dso_local i64 @SHGetValueW(i32, i32*, i32*, i32*, i64, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @RegCloseKey(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

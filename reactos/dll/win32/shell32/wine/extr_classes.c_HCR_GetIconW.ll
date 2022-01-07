; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_classes.c_HCR_GetIconW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_classes.c_HCR_GetIconW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HCR_GetIconW.swDefaultIcon = internal constant [13 x i8] c"\\DefaultIcon\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"-- %s %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"-- not found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HCR_GetIconW(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %12, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %13, align 8
  %19 = load i64, i64* @FALSE, align 8
  store i64 %19, i64* %14, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @debugstr_w(i32 %20)
  %22 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @MAX_PATH, align 4
  %25 = call i32 @lstrcpynW(i8* %18, i32 %23, i32 %24)
  %26 = call i32 @lstrcatW(i8* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @HCR_GetIconW.swDefaultIcon, i64 0, i64 0))
  %27 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %28 = load i32, i32* @KEY_READ, align 4
  %29 = call i32 @RegOpenKeyExW(i32 %27, i8* %18, i32 0, i32 %28, i32* %11)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %5
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32*, i32** %10, align 8
  %37 = call i64 @HCR_RegGetIconW(i32 %32, i32 %33, i32 %34, i32 %35, i32* %36)
  store i64 %37, i64* %14, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @RegCloseKey(i32 %38)
  br label %40

40:                                               ; preds = %31, %5
  %41 = load i64, i64* %14, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @debugstr_w(i32 %44)
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %47)
  br label %51

49:                                               ; preds = %40
  %50 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %43
  %52 = load i64, i64* %14, align 8
  %53 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %53)
  ret i64 %52
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TRACE(i8*, ...) #2

declare dso_local i32 @debugstr_w(i32) #2

declare dso_local i32 @lstrcpynW(i8*, i32, i32) #2

declare dso_local i32 @lstrcatW(i8*, i8*) #2

declare dso_local i32 @RegOpenKeyExW(i32, i8*, i32, i32, i32*) #2

declare dso_local i64 @HCR_RegGetIconW(i32, i32, i32, i32, i32*) #2

declare dso_local i32 @RegCloseKey(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

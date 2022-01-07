; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_classes.c_HCR_MapTypeToValueW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_classes.c_HCR_MapTypeToValueW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_EXTENSION_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s %p\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"--UE;\0A} %s\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HCR_MapTypeToValueW(i8* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %14 = load i32, i32* @MAX_EXTENSION_LENGTH, align 4
  %15 = add nsw i32 %14, 2
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @debugstr_w(i8* %19)
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %20, i8* %21)
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 46
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i64, i64* @FALSE, align 8
  store i64 %29, i64* %9, align 8
  br label %30

30:                                               ; preds = %28, %4
  %31 = load i64, i64* %9, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 46, i8* %34, align 16
  br label %35

35:                                               ; preds = %33, %30
  %36 = load i64, i64* %9, align 8
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 0
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %18, i64 %40
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* @MAX_EXTENSION_LENGTH, align 4
  %44 = call i32 @lstrcpynW(i8* %41, i8* %42, i32 %43)
  %45 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %46 = load i32, i32* @KEY_READ, align 4
  %47 = call i64 @RegOpenKeyExW(i32 %45, i8* %18, i32 0, i32 %46, i32* %10)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %35
  %50 = load i64, i64* @FALSE, align 8
  store i64 %50, i64* %5, align 8
  store i32 1, i32* %13, align 4
  br label %67

51:                                               ; preds = %35
  %52 = load i32, i32* %10, align 4
  %53 = load i8*, i8** %7, align 8
  %54 = call i64 @RegQueryValueW(i32 %52, i32* null, i8* %53, i32* %8)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @RegCloseKey(i32 %57)
  %59 = load i64, i64* @FALSE, align 8
  store i64 %59, i64* %5, align 8
  store i32 1, i32* %13, align 4
  br label %67

60:                                               ; preds = %51
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @RegCloseKey(i32 %61)
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @debugstr_w(i8* %63)
  %65 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load i64, i64* @TRUE, align 8
  store i64 %66, i64* %5, align 8
  store i32 1, i32* %13, align 4
  br label %67

67:                                               ; preds = %60, %56, %49
  %68 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i64, i64* %5, align 8
  ret i64 %69
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TRACE(i8*, i32, ...) #2

declare dso_local i32 @debugstr_w(i8*) #2

declare dso_local i32 @lstrcpynW(i8*, i8*, i32) #2

declare dso_local i64 @RegOpenKeyExW(i32, i8*, i32, i32, i32*) #2

declare dso_local i64 @RegQueryValueW(i32, i32*, i8*, i32*) #2

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

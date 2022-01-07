; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_classes.c_HCR_MapTypeToValueA.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_classes.c_HCR_MapTypeToValueA.c"
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
define dso_local i64 @HCR_MapTypeToValueA(i8* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
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
  %20 = load i32, i32* %7, align 4
  %21 = call i32 (i8*, i8*, ...) @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %20)
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 46
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i64, i64* @FALSE, align 8
  store i64 %28, i64* %9, align 8
  br label %29

29:                                               ; preds = %27, %4
  %30 = load i64, i64* %9, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 46, i8* %33, align 16
  br label %34

34:                                               ; preds = %32, %29
  %35 = load i64, i64* %9, align 8
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 1, i32 0
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %18, i64 %39
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* @MAX_EXTENSION_LENGTH, align 4
  %43 = call i32 @lstrcpynA(i8* %40, i8* %41, i32 %42)
  %44 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %45 = load i32, i32* @KEY_READ, align 4
  %46 = call i64 @RegOpenKeyExA(i32 %44, i8* %18, i32 0, i32 %45, i32* %10)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %34
  %49 = load i64, i64* @FALSE, align 8
  store i64 %49, i64* %5, align 8
  store i32 1, i32* %13, align 4
  br label %67

50:                                               ; preds = %34
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i64 @RegQueryValueA(i32 %51, i32* null, i32 %52, i32* %8)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @RegCloseKey(i32 %56)
  %58 = load i64, i64* @FALSE, align 8
  store i64 %58, i64* %5, align 8
  store i32 1, i32* %13, align 4
  br label %67

59:                                               ; preds = %50
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @RegCloseKey(i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to i8*
  %65 = call i32 (i8*, i8*, ...) @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %64)
  %66 = load i64, i64* @TRUE, align 8
  store i64 %66, i64* %5, align 8
  store i32 1, i32* %13, align 4
  br label %67

67:                                               ; preds = %59, %55, %48
  %68 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i64, i64* %5, align 8
  ret i64 %69
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TRACE(i8*, i8*, ...) #2

declare dso_local i32 @lstrcpynA(i8*, i8*, i32) #2

declare dso_local i64 @RegOpenKeyExA(i32, i8*, i32, i32, i32*) #2

declare dso_local i64 @RegQueryValueA(i32, i32*, i32, i32*) #2

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

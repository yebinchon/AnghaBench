; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_registry.c_MSIREG_OpenUserComponentsKey.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_registry.c_MSIREG_OpenUserComponentsKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQUASHED_GUID_SIZE = common dso_local global i32 0, align 4
@KEY_WOW64_64KEY = common dso_local global i32 0, align 4
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"%s squashed %s\0A\00", align 1
@szUserComponents = common dso_local global i32 0, align 4
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@szInstaller_Components = common dso_local global i32 0, align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @MSIREG_OpenUserComponentsKey(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [512 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i32, i32* @SQUASHED_GUID_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i32, i32* @KEY_WOW64_64KEY, align 4
  %19 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %11, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @squash_guid(i32* %21, i32* %17)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %3
  %25 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %25, i64* %4, align 8
  store i32 1, i32* %13, align 4
  br label %64

26:                                               ; preds = %3
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @debugstr_w(i32* %27)
  %29 = call i32 @debugstr_w(i32* %17)
  %30 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  %31 = getelementptr inbounds [512 x i32], [512 x i32]* %10, i64 0, i64 0
  %32 = load i32, i32* @szUserComponents, align 4
  %33 = call i32 @strcpyW(i32* %31, i32 %32)
  %34 = getelementptr inbounds [512 x i32], [512 x i32]* %10, i64 0, i64 0
  %35 = call i32 @strcatW(i32* %34, i32* %17)
  %36 = load i64, i64* %7, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %26
  %39 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %40 = getelementptr inbounds [512 x i32], [512 x i32]* %10, i64 0, i64 0
  %41 = load i32*, i32** %6, align 8
  %42 = call i64 @RegCreateKeyW(i32 %39, i32* %40, i32* %41)
  store i64 %42, i64* %4, align 8
  store i32 1, i32* %13, align 4
  br label %64

43:                                               ; preds = %26
  %44 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %45 = getelementptr inbounds [512 x i32], [512 x i32]* %10, i64 0, i64 0
  %46 = load i32*, i32** %6, align 8
  %47 = call i64 @RegOpenKeyW(i32 %44, i32* %45, i32* %46)
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i64, i64* %12, align 8
  store i64 %52, i64* %4, align 8
  store i32 1, i32* %13, align 4
  br label %64

53:                                               ; preds = %43
  %54 = getelementptr inbounds [512 x i32], [512 x i32]* %10, i64 0, i64 0
  %55 = load i32, i32* @szInstaller_Components, align 4
  %56 = call i32 @strcpyW(i32* %54, i32 %55)
  %57 = getelementptr inbounds [512 x i32], [512 x i32]* %10, i64 0, i64 0
  %58 = call i32 @strcatW(i32* %57, i32* %17)
  %59 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %60 = getelementptr inbounds [512 x i32], [512 x i32]* %10, i64 0, i64 0
  %61 = load i32, i32* %11, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = call i64 @RegOpenKeyExW(i32 %59, i32* %60, i32 0, i32 %61, i32* %62)
  store i64 %63, i64* %4, align 8
  store i32 1, i32* %13, align 4
  br label %64

64:                                               ; preds = %53, %51, %38, %24
  %65 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load i64, i64* %4, align 8
  ret i64 %66
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @squash_guid(i32*, i32*) #2

declare dso_local i32 @TRACE(i8*, i32, i32) #2

declare dso_local i32 @debugstr_w(i32*) #2

declare dso_local i32 @strcpyW(i32*, i32) #2

declare dso_local i32 @strcatW(i32*, i32*) #2

declare dso_local i64 @RegCreateKeyW(i32, i32*, i32*) #2

declare dso_local i64 @RegOpenKeyW(i32, i32*, i32*) #2

declare dso_local i64 @RegOpenKeyExW(i32, i32*, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

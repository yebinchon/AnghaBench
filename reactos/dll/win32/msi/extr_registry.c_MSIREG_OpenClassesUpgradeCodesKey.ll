; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_registry.c_MSIREG_OpenClassesUpgradeCodesKey.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_registry.c_MSIREG_OpenClassesUpgradeCodesKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEY_WOW64_64KEY = common dso_local global i32 0, align 4
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@SQUASHED_GUID_SIZE = common dso_local global i32 0, align 4
@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s squashed %s\0A\00", align 1
@szInstaller_ClassesUpgradeCode = common dso_local global i32 0, align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MSIREG_OpenClassesUpgradeCodesKey(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [512 x i32], align 16
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i32, i32* @KEY_WOW64_64KEY, align 4
  %14 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @SQUASHED_GUID_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @squash_guid(i32* %20, i32* %19)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %24, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %49

25:                                               ; preds = %3
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @debugstr_w(i32* %26)
  %28 = call i32 @debugstr_w(i32* %19)
  %29 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = getelementptr inbounds [512 x i32], [512 x i32]* %11, i64 0, i64 0
  %31 = load i32, i32* @szInstaller_ClassesUpgradeCode, align 4
  %32 = call i32 @strcpyW(i32* %30, i32 %31)
  %33 = getelementptr inbounds [512 x i32], [512 x i32]* %11, i64 0, i64 0
  %34 = call i32 @strcatW(i32* %33, i32* %19)
  %35 = load i64, i64* %7, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %25
  %38 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %39 = getelementptr inbounds [512 x i32], [512 x i32]* %11, i64 0, i64 0
  %40 = load i32, i32* %8, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @RegCreateKeyExW(i32 %38, i32* %39, i32 0, i32* null, i32 0, i32 %40, i32* null, i32* %41, i32* null)
  store i32 %42, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %49

43:                                               ; preds = %25
  %44 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %45 = getelementptr inbounds [512 x i32], [512 x i32]* %11, i64 0, i64 0
  %46 = load i32, i32* %8, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @RegOpenKeyExW(i32 %44, i32* %45, i32 0, i32 %46, i32* %47)
  store i32 %48, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %49

49:                                               ; preds = %43, %37, %23
  %50 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %50)
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @squash_guid(i32*, i32*) #2

declare dso_local i32 @TRACE(i8*, i32, i32) #2

declare dso_local i32 @debugstr_w(i32*) #2

declare dso_local i32 @strcpyW(i32*, i32) #2

declare dso_local i32 @strcatW(i32*, i32*) #2

declare dso_local i32 @RegCreateKeyExW(i32, i32*, i32, i32*, i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @RegOpenKeyExW(i32, i32*, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

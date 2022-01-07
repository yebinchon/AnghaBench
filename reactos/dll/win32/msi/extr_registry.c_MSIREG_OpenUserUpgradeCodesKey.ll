; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_registry.c_MSIREG_OpenUserUpgradeCodesKey.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_registry.c_MSIREG_OpenUserUpgradeCodesKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQUASHED_GUID_SIZE = common dso_local global i32 0, align 4
@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s squashed %s\0A\00", align 1
@szInstaller_UserUpgradeCodes = common dso_local global i32 0, align 4
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MSIREG_OpenUserUpgradeCodesKey(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [512 x i32], align 16
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i32, i32* @SQUASHED_GUID_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @squash_guid(i32* %16, i32* %15)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %20, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %43

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @debugstr_w(i32* %22)
  %24 = call i32 @debugstr_w(i32* %15)
  %25 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  %26 = getelementptr inbounds [512 x i32], [512 x i32]* %10, i64 0, i64 0
  %27 = load i32, i32* @szInstaller_UserUpgradeCodes, align 4
  %28 = call i32 @strcpyW(i32* %26, i32 %27)
  %29 = getelementptr inbounds [512 x i32], [512 x i32]* %10, i64 0, i64 0
  %30 = call i32 @strcatW(i32* %29, i32* %15)
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %21
  %34 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %35 = getelementptr inbounds [512 x i32], [512 x i32]* %10, i64 0, i64 0
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @RegCreateKeyW(i32 %34, i32* %35, i32* %36)
  store i32 %37, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %43

38:                                               ; preds = %21
  %39 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %40 = getelementptr inbounds [512 x i32], [512 x i32]* %10, i64 0, i64 0
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @RegOpenKeyW(i32 %39, i32* %40, i32* %41)
  store i32 %42, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %43

43:                                               ; preds = %38, %33, %19
  %44 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %44)
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @squash_guid(i32*, i32*) #2

declare dso_local i32 @TRACE(i8*, i32, i32) #2

declare dso_local i32 @debugstr_w(i32*) #2

declare dso_local i32 @strcpyW(i32*, i32) #2

declare dso_local i32 @strcatW(i32*, i32*) #2

declare dso_local i32 @RegCreateKeyW(i32, i32*, i32*) #2

declare dso_local i32 @RegOpenKeyW(i32, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

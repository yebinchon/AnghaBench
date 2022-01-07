; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_registry.c_MSIREG_OpenUninstallKey.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_registry.c_MSIREG_OpenUninstallKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@is_64bit = common dso_local global i64 0, align 8
@PLATFORM_INTEL = common dso_local global i32 0, align 4
@szUninstall_32node = common dso_local global i32 0, align 4
@szUninstall = common dso_local global i32 0, align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MSIREG_OpenUninstallKey(i32* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [512 x i32], align 16
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @debugstr_w(i32* %11)
  %13 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i64, i64* @is_64bit, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @PLATFORM_INTEL, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = getelementptr inbounds [512 x i32], [512 x i32]* %10, i64 0, i64 0
  %22 = load i32, i32* @szUninstall_32node, align 4
  %23 = call i32 @strcpyW(i32* %21, i32 %22)
  %24 = getelementptr inbounds [512 x i32], [512 x i32]* %10, i64 0, i64 0
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @strcatW(i32* %24, i32* %25)
  br label %34

27:                                               ; preds = %16, %4
  %28 = getelementptr inbounds [512 x i32], [512 x i32]* %10, i64 0, i64 0
  %29 = load i32, i32* @szUninstall, align 4
  %30 = call i32 @strcpyW(i32* %28, i32 %29)
  %31 = getelementptr inbounds [512 x i32], [512 x i32]* %10, i64 0, i64 0
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @strcatW(i32* %31, i32* %32)
  br label %34

34:                                               ; preds = %27, %20
  %35 = load i64, i64* %9, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %39 = getelementptr inbounds [512 x i32], [512 x i32]* %10, i64 0, i64 0
  %40 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @RegCreateKeyExW(i32 %38, i32* %39, i32 0, i32* null, i32 0, i32 %40, i32* null, i32* %41, i32* null)
  store i32 %42, i32* %5, align 4
  br label %49

43:                                               ; preds = %34
  %44 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %45 = getelementptr inbounds [512 x i32], [512 x i32]* %10, i64 0, i64 0
  %46 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @RegOpenKeyExW(i32 %44, i32* %45, i32 0, i32 %46, i32* %47)
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %43, %37
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32 @strcpyW(i32*, i32) #1

declare dso_local i32 @strcatW(i32*, i32*) #1

declare dso_local i32 @RegCreateKeyExW(i32, i32*, i32, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @RegOpenKeyExW(i32, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

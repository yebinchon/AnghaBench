; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msacm32/extr_internal.c_MSACM_RegisterDriverFromRegistry.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msacm32/extr_internal.c_MSACM_RegisterDriverFromRegistry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSACM_RegisterDriverFromRegistry.msacmW = internal constant [6 x i8] c"MSACM.", align 1
@MSACM_RegisterDriverFromRegistry.drvkey = internal constant [55 x i8] c"Software\\Microsoft\\Windows NT\\CurrentVersion\\Drivers32\00", align 16
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@KEY_QUERY_VALUE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"unable to open registry key - 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"unable to query requested subkey %s - 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @MSACM_RegisterDriverFromRegistry(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [2048 x i8], align 16
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %7, align 8
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @MSACM_RegisterDriverFromRegistry.msacmW, i64 0, i64 0))
  %10 = call i64 @_wcsnicmp(i32 %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @MSACM_RegisterDriverFromRegistry.msacmW, i64 0, i64 0), i32 %9)
  %11 = icmp eq i64 0, %10
  br i1 %11, label %12, label %45

12:                                               ; preds = %1
  %13 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %14 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %15 = call i64 @RegOpenKeyExW(i32 %13, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @MSACM_RegisterDriverFromRegistry.drvkey, i64 0, i64 0), i32 0, i32 %14, i32* %6)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @ERROR_SUCCESS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load i64, i64* %5, align 8
  %21 = call i32 (i8*, i64, ...) @WARN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %20)
  br label %44

22:                                               ; preds = %12
  store i64 2048, i64* %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %2, align 4
  %25 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0
  %26 = ptrtoint i8* %25 to i32
  %27 = call i64 @RegQueryValueExW(i32 %23, i32 %24, i32* null, i32* null, i32 %26, i64* %4)
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @ERROR_SUCCESS, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @debugstr_w(i32 %32)
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %5, align 8
  %36 = call i32 (i8*, i64, ...) @WARN(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %34, i64 %35)
  br label %41

37:                                               ; preds = %22
  %38 = load i32, i32* %2, align 4
  %39 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0
  %40 = call i32 @MSACM_RegisterDriver(i32 %38, i8* %39, i32 0)
  br label %41

41:                                               ; preds = %37, %31
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @RegCloseKey(i32 %42)
  br label %44

44:                                               ; preds = %41, %19
  br label %45

45:                                               ; preds = %44, %1
  %46 = load i32*, i32** %7, align 8
  ret i32* %46
}

declare dso_local i64 @_wcsnicmp(i32, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i64 @RegOpenKeyExW(i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @WARN(i8*, i64, ...) #1

declare dso_local i64 @RegQueryValueExW(i32, i32, i32*, i32*, i32, i64*) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @MSACM_RegisterDriver(i32, i8*, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

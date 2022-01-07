; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/userenv/extr_desktop.c_GetDesktopPath.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/userenv/extr_desktop.c_GetDesktopPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"GetDesktopPath() called\0A\00", align 1
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i32] [i32 83, i32 111, i32 102, i32 116, i32 119, i32 97, i32 114, i32 101, i32 92, i32 77, i32 105, i32 99, i32 114, i32 111, i32 115, i32 111, i32 102, i32 116, i32 92, i32 87, i32 105, i32 110, i32 100, i32 111, i32 119, i32 115, i32 92, i32 67, i32 117, i32 114, i32 114, i32 101, i32 110, i32 116, i32 86, i32 101, i32 114, i32 115, i32 105, i32 111, i32 110, i32 92, i32 69, i32 120, i32 112, i32 108, i32 111, i32 114, i32 101, i32 114, i32 92, i32 85, i32 115, i32 101, i32 114, i32 32, i32 83, i32 104, i32 101, i32 108, i32 108, i32 32, i32 70, i32 111, i32 108, i32 100, i32 101, i32 114, i32 115, i32 0], align 4
@KEY_QUERY_VALUE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"RegOpenKeyExW() failed\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i32] [i32 67, i32 111, i32 109, i32 109, i32 111, i32 110, i32 32, i32 68, i32 101, i32 115, i32 107, i32 116, i32 111, i32 112, i32 0], align 4
@.str.4 = private unnamed_addr constant [8 x i32] [i32 68, i32 101, i32 115, i32 107, i32 116, i32 111, i32 112, i32 0], align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"RegQueryValueExW() failed\0A\00", align 1
@REG_EXPAND_SZ = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [23 x i8] c"GetDesktopPath() done\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32)* @GetDesktopPath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @GetDesktopPath(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = call i32 @DPRINT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %19 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %20 = call i64 @RegOpenKeyExW(i32 %18, i8* bitcast ([70 x i32]* @.str.1 to i8*), i32 0, i32 %19, i32* %10)
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* @ERROR_SUCCESS, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = call i32 @DPRINT1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i64, i64* %11, align 8
  %27 = call i32 @SetLastError(i64 %26)
  %28 = load i64, i64* @FALSE, align 8
  store i64 %28, i64* %3, align 8
  store i32 1, i32* %12, align 4
  br label %67

29:                                               ; preds = %2
  %30 = load i32, i32* @MAX_PATH, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  store i64 %32, i64* %8, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i64, i64* %4, align 8
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @.str.3, i64 0, i64 0), i32* getelementptr inbounds ([8 x i32], [8 x i32]* @.str.4, i64 0, i64 0)
  %38 = bitcast i32* %37 to i8*
  %39 = ptrtoint i32* %16 to i32
  %40 = call i64 @RegQueryValueExW(i32 %33, i8* %38, i32 0, i64* %9, i32 %39, i64* %8)
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* @ERROR_SUCCESS, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %29
  %45 = call i32 @DPRINT1(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @RegCloseKey(i32 %46)
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @SetLastError(i64 %48)
  %50 = load i64, i64* @FALSE, align 8
  store i64 %50, i64* %3, align 8
  store i32 1, i32* %12, align 4
  br label %67

51:                                               ; preds = %29
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @RegCloseKey(i32 %52)
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* @REG_EXPAND_SZ, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @MAX_PATH, align 4
  %60 = call i32 @ExpandEnvironmentStringsW(i32* %16, i32 %58, i32 %59)
  br label %64

61:                                               ; preds = %51
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @wcscpy(i32 %62, i32* %16)
  br label %64

64:                                               ; preds = %61, %57
  %65 = call i32 @DPRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %66 = load i64, i64* @TRUE, align 8
  store i64 %66, i64* %3, align 8
  store i32 1, i32* %12, align 4
  br label %67

67:                                               ; preds = %64, %44, %24
  %68 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i64, i64* %3, align 8
  ret i64 %69
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DPRINT(i8*) #2

declare dso_local i64 @RegOpenKeyExW(i32, i8*, i32, i32, i32*) #2

declare dso_local i32 @DPRINT1(i8*) #2

declare dso_local i32 @SetLastError(i64) #2

declare dso_local i64 @RegQueryValueExW(i32, i8*, i32, i64*, i32, i64*) #2

declare dso_local i32 @RegCloseKey(i32) #2

declare dso_local i32 @ExpandEnvironmentStringsW(i32*, i32, i32) #2

declare dso_local i32 @wcscpy(i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

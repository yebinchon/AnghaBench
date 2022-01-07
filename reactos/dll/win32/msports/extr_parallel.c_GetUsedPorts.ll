; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msports/extr_parallel.c_GetUsedPorts.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msports/extr_parallel.c_GetUsedPorts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i32] [i32 72, i32 97, i32 114, i32 100, i32 119, i32 97, i32 114, i32 101, i32 92, i32 68, i32 101, i32 118, i32 105, i32 99, i32 101, i32 77, i32 97, i32 112, i32 92, i32 80, i32 65, i32 82, i32 65, i32 76, i32 76, i32 69, i32 76, i32 32, i32 80, i32 79, i32 82, i32 84, i32 83, i32 0], align 4
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@REG_SZ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"%S --> %S\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i32] [i32 92, i32 68, i32 111, i32 115, i32 68, i32 101, i32 118, i32 105, i32 99, i32 101, i32 115, i32 92, i32 76, i32 80, i32 84, i32 0], align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Device number %S\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @GetUsedPorts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetUsedPorts(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [64 x i32], align 16
  %5 = alloca [64 x i32], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %14 = load i32*, i32** %3, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %16 = load i32, i32* @KEY_READ, align 4
  %17 = call i64 @RegOpenKeyExW(i32 %15, i8* bitcast ([34 x i32]* @.str to i8*), i32 0, i32 %16, i32* %12)
  store i64 %17, i64* %13, align 8
  %18 = load i64, i64* %13, align 8
  %19 = load i64, i64* @ERROR_SUCCESS, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %79

21:                                               ; preds = %1
  store i64 0, i64* %6, align 8
  br label %22

22:                                               ; preds = %73, %21
  %23 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %24 = call i64 @ARRAYSIZE(i32* %23)
  store i64 %24, i64* %9, align 8
  store i64 256, i64* %10, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %28 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %29 = ptrtoint i32* %28 to i32
  %30 = call i64 @RegEnumValueW(i32 %25, i64 %26, i32* %27, i64* %9, i32* null, i64* %7, i32 %29, i64* %10)
  store i64 %30, i64* %13, align 8
  %31 = load i64, i64* %13, align 8
  %32 = load i64, i64* @ERROR_SUCCESS, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %76

35:                                               ; preds = %22
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @REG_SZ, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %72

39:                                               ; preds = %35
  %40 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %41 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %42 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %40, i32* %41)
  %43 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %44 = call i32 @wcslen(i8* bitcast ([16 x i32]* @.str.2 to i8*))
  %45 = call i64 @_wcsnicmp(i32* %43, i8* bitcast ([16 x i32]* @.str.2 to i8*), i32 %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %71

47:                                               ; preds = %39
  %48 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %49 = call i32 @wcslen(i8* bitcast ([16 x i32]* @.str.2 to i8*))
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32* %51, i32** %11, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = call i32* @wcschr(i32* %52, i32 46)
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %70

55:                                               ; preds = %47
  %56 = load i32*, i32** %11, align 8
  %57 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32* %56)
  %58 = load i32*, i32** %11, align 8
  %59 = call i64 @wcstoul(i32* %58, i32* null, i32 10)
  store i64 %59, i64* %8, align 8
  %60 = load i64, i64* %8, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %55
  %63 = load i64, i64* %8, align 8
  %64 = trunc i64 %63 to i32
  %65 = shl i32 1, %64
  %66 = load i32*, i32** %3, align 8
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %65
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %62, %55
  br label %70

70:                                               ; preds = %69, %47
  br label %71

71:                                               ; preds = %70, %39
  br label %72

72:                                               ; preds = %71, %35
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %6, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %6, align 8
  br label %22

76:                                               ; preds = %34
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @RegCloseKey(i32 %77)
  br label %79

79:                                               ; preds = %76, %1
  %80 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i64 @RegOpenKeyExW(i32, i8*, i32, i32, i32*) #1

declare dso_local i64 @ARRAYSIZE(i32*) #1

declare dso_local i64 @RegEnumValueW(i32, i64, i32*, i64*, i32*, i64*, i32, i64*) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i64 @_wcsnicmp(i32*, i8*, i32) #1

declare dso_local i32 @wcslen(i8*) #1

declare dso_local i32* @wcschr(i32*, i32) #1

declare dso_local i64 @wcstoul(i32*, i32*, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msports/extr_classinst.c_GetBootResourceList.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msports/extr_classinst.c_GetBootResourceList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"GetBootResourceList()\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"SetupDiGetDeviceInstanceIdW() failed\0A\00", align 1
@HKEY_LOCAL_MACHINE = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [30 x i32] [i32 83, i32 89, i32 83, i32 84, i32 69, i32 77, i32 92, i32 67, i32 117, i32 114, i32 114, i32 101, i32 110, i32 116, i32 67, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 83, i32 101, i32 116, i32 92, i32 69, i32 110, i32 117, i32 109, i32 0], align 4
@KEY_QUERY_VALUE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"RegOpenKeyExW() failed (Error %lu)\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i32] [i32 76, i32 111, i32 103, i32 67, i32 111, i32 110, i32 102, i32 0], align 4
@.str.5 = private unnamed_addr constant [11 x i32] [i32 66, i32 111, i32 111, i32 116, i32 67, i32 111, i32 110, i32 102, i32 105, i32 103, i32 0], align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"RegQueryValueExW() failed (Error %lu)\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"Failed to allocate the resource list buffer\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @GetBootResourceList(i32 %0, i32 %1, i32** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca [128 x i8], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %16 = load i64, i64* @FALSE, align 8
  store i64 %16, i64* %15, align 8
  %17 = call i32 @FIXME(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %18 = load i32**, i32*** %7, align 8
  store i32* null, i32** %18, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %22 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %23 = call i32 @ARRAYSIZE(i8* %22)
  %24 = call i32 @SetupDiGetDeviceInstanceIdW(i32 %19, i32 %20, i8* %21, i32 %23, i32* %13)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i64, i64* @FALSE, align 8
  store i64 %28, i64* %4, align 8
  br label %127

29:                                               ; preds = %3
  %30 = load i32*, i32** @HKEY_LOCAL_MACHINE, align 8
  %31 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %32 = call i64 @RegOpenKeyExW(i32* %30, i8* bitcast ([30 x i32]* @.str.2 to i8*), i32 0, i32 %31, i32** %9)
  store i64 %32, i64* %14, align 8
  %33 = load i64, i64* %14, align 8
  %34 = load i64, i64* @ERROR_SUCCESS, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i64, i64* %14, align 8
  %38 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %37)
  br label %89

39:                                               ; preds = %29
  %40 = load i32*, i32** %9, align 8
  %41 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %42 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %43 = call i64 @RegOpenKeyExW(i32* %40, i8* %41, i32 0, i32 %42, i32** %10)
  store i64 %43, i64* %14, align 8
  %44 = load i64, i64* %14, align 8
  %45 = load i64, i64* @ERROR_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i64, i64* %14, align 8
  %49 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %48)
  br label %89

50:                                               ; preds = %39
  %51 = load i32*, i32** %10, align 8
  %52 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %53 = call i64 @RegOpenKeyExW(i32* %51, i8* bitcast ([8 x i32]* @.str.4 to i8*), i32 0, i32 %52, i32** %11)
  store i64 %53, i64* %14, align 8
  %54 = load i64, i64* %14, align 8
  %55 = load i64, i64* @ERROR_SUCCESS, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i64, i64* %14, align 8
  %59 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %58)
  br label %89

60:                                               ; preds = %50
  %61 = load i32*, i32** %11, align 8
  %62 = call i64 @RegQueryValueExW(i32* %61, i8* bitcast ([11 x i32]* @.str.5 to i8*), i32* null, i32* null, i32* null, i32* %13)
  store i64 %62, i64* %14, align 8
  %63 = load i64, i64* %14, align 8
  %64 = load i64, i64* @ERROR_SUCCESS, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i64, i64* %14, align 8
  %68 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i64 %67)
  br label %89

69:                                               ; preds = %60
  %70 = call i32 (...) @GetProcessHeap()
  %71 = load i32, i32* %13, align 4
  %72 = call i32* @HeapAlloc(i32 %70, i32 0, i32 %71)
  store i32* %72, i32** %12, align 8
  %73 = load i32*, i32** %12, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0))
  br label %89

77:                                               ; preds = %69
  %78 = load i32*, i32** %11, align 8
  %79 = load i32*, i32** %12, align 8
  %80 = call i64 @RegQueryValueExW(i32* %78, i8* bitcast ([11 x i32]* @.str.5 to i8*), i32* null, i32* null, i32* %79, i32* %13)
  store i64 %80, i64* %14, align 8
  %81 = load i64, i64* %14, align 8
  %82 = load i64, i64* @ERROR_SUCCESS, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load i64, i64* %14, align 8
  %86 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i64 %85)
  %87 = load i64, i64* @TRUE, align 8
  store i64 %87, i64* %15, align 8
  br label %88

88:                                               ; preds = %84, %77
  br label %89

89:                                               ; preds = %88, %75, %66, %57, %47, %36
  %90 = load i64, i64* %15, align 8
  %91 = load i64, i64* @FALSE, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %89
  %94 = load i32*, i32** %12, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = call i32 (...) @GetProcessHeap()
  %98 = load i32*, i32** %12, align 8
  %99 = call i32 @HeapFree(i32 %97, i32 0, i32* %98)
  br label %100

100:                                              ; preds = %96, %93, %89
  %101 = load i32*, i32** %11, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32*, i32** %11, align 8
  %105 = call i32 @RegCloseKey(i32* %104)
  br label %106

106:                                              ; preds = %103, %100
  %107 = load i32*, i32** %10, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32*, i32** %10, align 8
  %111 = call i32 @RegCloseKey(i32* %110)
  br label %112

112:                                              ; preds = %109, %106
  %113 = load i32*, i32** %9, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i32*, i32** %9, align 8
  %117 = call i32 @RegCloseKey(i32* %116)
  br label %118

118:                                              ; preds = %115, %112
  %119 = load i64, i64* %15, align 8
  %120 = load i64, i64* @FALSE, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load i32*, i32** %12, align 8
  %124 = load i32**, i32*** %7, align 8
  store i32* %123, i32** %124, align 8
  br label %125

125:                                              ; preds = %122, %118
  %126 = load i64, i64* %15, align 8
  store i64 %126, i64* %4, align 8
  br label %127

127:                                              ; preds = %125, %26
  %128 = load i64, i64* %4, align 8
  ret i64 %128
}

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @SetupDiGetDeviceInstanceIdW(i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @ARRAYSIZE(i8*) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i64 @RegOpenKeyExW(i32*, i8*, i32, i32, i32**) #1

declare dso_local i64 @RegQueryValueExW(i32*, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @RegCloseKey(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

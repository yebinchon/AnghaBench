; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/userenv/extr_environment.c_SetSystemEnvironment.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/userenv/extr_environment.c_SetSystemEnvironment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i32] [i32 83, i32 89, i32 83, i32 84, i32 69, i32 77, i32 92, i32 67, i32 117, i32 114, i32 114, i32 101, i32 110, i32 116, i32 67, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 83, i32 101, i32 116, i32 92, i32 67, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 92, i32 83, i32 101, i32 115, i32 115, i32 105, i32 111, i32 110, i32 32, i32 77, i32 97, i32 110, i32 97, i32 103, i32 101, i32 114, i32 92, i32 69, i32 110, i32 118, i32 105, i32 114, i32 111, i32 110, i32 109, i32 101, i32 110, i32 116, i32 0], align 4
@KEY_QUERY_VALUE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"RegOpenKeyExW() failed (Error %ld)\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"RegQueryInforKey() failed (Error %ld)\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4
@REG_EXPAND_SZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @SetSystemEnvironment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetSystemEnvironment(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %15 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %16 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %17 = call i64 @RegOpenKeyExW(i32 %15, i8* bitcast ([61 x i32]* @.str to i8*), i32 0, i32 %16, i32* %5)
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @ERROR_SUCCESS, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @DPRINT1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %2, align 4
  br label %115

25:                                               ; preds = %1
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @RegQueryInfoKey(i32 %26, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i64* %6, i64* %7, i64* %8, i32* null, i32* null)
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @ERROR_SUCCESS, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @DPRINT1(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %32)
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @RegCloseKey(i32 %34)
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %2, align 4
  br label %115

37:                                               ; preds = %25
  %38 = load i64, i64* %6, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @RegCloseKey(i32 %41)
  %43 = load i32, i32* @TRUE, align 4
  store i32 %43, i32* %2, align 4
  br label %115

44:                                               ; preds = %37
  %45 = load i64, i64* %7, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %7, align 8
  %47 = load i32, i32* @LPTR, align 4
  %48 = load i64, i64* %7, align 8
  %49 = mul i64 %48, 4
  %50 = call i32* @LocalAlloc(i32 %47, i64 %49)
  store i32* %50, i32** %13, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %44
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @RegCloseKey(i32 %54)
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %2, align 4
  br label %115

57:                                               ; preds = %44
  %58 = load i32, i32* @LPTR, align 4
  %59 = load i64, i64* %8, align 8
  %60 = call i32* @LocalAlloc(i32 %58, i64 %59)
  store i32* %60, i32** %14, align 8
  %61 = load i32*, i32** %14, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load i32*, i32** %13, align 8
  %65 = call i32 @LocalFree(i32* %64)
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @RegCloseKey(i32 %66)
  %68 = load i32, i32* @FALSE, align 4
  store i32 %68, i32* %2, align 4
  br label %115

69:                                               ; preds = %57
  store i64 0, i64* %12, align 8
  br label %70

70:                                               ; preds = %104, %69
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* %6, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %107

74:                                               ; preds = %70
  %75 = load i64, i64* %7, align 8
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* %8, align 8
  store i64 %76, i64* %10, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load i64, i64* %12, align 8
  %79 = load i32*, i32** %13, align 8
  %80 = load i32*, i32** %14, align 8
  %81 = ptrtoint i32* %80 to i32
  %82 = call i64 @RegEnumValueW(i32 %77, i64 %78, i32* %79, i64* %9, i32* null, i64* %11, i32 %81, i64* %10)
  store i64 %82, i64* %4, align 8
  %83 = load i64, i64* %4, align 8
  %84 = load i64, i64* @ERROR_SUCCESS, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %74
  %87 = load i32*, i32** %3, align 8
  %88 = load i32*, i32** %13, align 8
  %89 = load i32*, i32** %14, align 8
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* @REG_EXPAND_SZ, align 8
  %92 = icmp eq i64 %90, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @SetUserEnvironmentVariable(i32* %87, i32* %88, i32* %89, i32 %93)
  br label %103

95:                                               ; preds = %74
  %96 = load i32*, i32** %14, align 8
  %97 = call i32 @LocalFree(i32* %96)
  %98 = load i32*, i32** %13, align 8
  %99 = call i32 @LocalFree(i32* %98)
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @RegCloseKey(i32 %100)
  %102 = load i32, i32* @FALSE, align 4
  store i32 %102, i32* %2, align 4
  br label %115

103:                                              ; preds = %86
  br label %104

104:                                              ; preds = %103
  %105 = load i64, i64* %12, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %12, align 8
  br label %70

107:                                              ; preds = %70
  %108 = load i32*, i32** %14, align 8
  %109 = call i32 @LocalFree(i32* %108)
  %110 = load i32*, i32** %13, align 8
  %111 = call i32 @LocalFree(i32* %110)
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @RegCloseKey(i32 %112)
  %114 = load i32, i32* @TRUE, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %107, %95, %63, %53, %40, %31, %21
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i64 @RegOpenKeyExW(i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @DPRINT1(i8*, i64) #1

declare dso_local i64 @RegQueryInfoKey(i32, i32*, i32*, i32*, i32*, i32*, i32*, i64*, i64*, i64*, i32*, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32* @LocalAlloc(i32, i64) #1

declare dso_local i32 @LocalFree(i32*) #1

declare dso_local i64 @RegEnumValueW(i32, i64, i32*, i64*, i32*, i64*, i32, i64*) #1

declare dso_local i32 @SetUserEnvironmentVariable(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

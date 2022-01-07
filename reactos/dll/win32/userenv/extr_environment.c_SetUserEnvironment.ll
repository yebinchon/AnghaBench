; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/userenv/extr_environment.c_SetUserEnvironment.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/userenv/extr_environment.c_SetUserEnvironment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEY_QUERY_VALUE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"RegOpenKeyExW() failed (Error %ld)\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"RegQueryInforKey() failed (Error %ld)\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i32] [i32 80, i32 65, i32 84, i32 72, i32 0], align 4
@REG_EXPAND_SZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*)* @SetUserEnvironment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetUserEnvironment(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %22 = call i64 @RegOpenKeyExW(i32 %19, i32* %20, i32 0, i32 %21, i32* %9)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @ERROR_SUCCESS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @DPRINT1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @SetLastError(i64 %29)
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* %4, align 4
  br label %134

32:                                               ; preds = %3
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @RegQueryInfoKey(i32 %33, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i64* %10, i64* %11, i64* %12, i32* null, i32* null)
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* @ERROR_SUCCESS, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @DPRINT1(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @RegCloseKey(i32 %41)
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @SetLastError(i64 %43)
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %4, align 4
  br label %134

46:                                               ; preds = %32
  %47 = load i64, i64* %10, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @RegCloseKey(i32 %50)
  %52 = load i32, i32* @TRUE, align 4
  store i32 %52, i32* %4, align 4
  br label %134

53:                                               ; preds = %46
  %54 = load i64, i64* %11, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %11, align 8
  %56 = load i32, i32* @LPTR, align 4
  %57 = load i64, i64* %11, align 8
  %58 = mul i64 %57, 4
  %59 = call i32* @LocalAlloc(i32 %56, i64 %58)
  store i32* %59, i32** %17, align 8
  %60 = load i32*, i32** %17, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %53
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @RegCloseKey(i32 %63)
  %65 = load i32, i32* @FALSE, align 4
  store i32 %65, i32* %4, align 4
  br label %134

66:                                               ; preds = %53
  %67 = load i32, i32* @LPTR, align 4
  %68 = load i64, i64* %12, align 8
  %69 = call i32* @LocalAlloc(i32 %67, i64 %68)
  store i32* %69, i32** %18, align 8
  %70 = load i32*, i32** %18, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load i32*, i32** %17, align 8
  %74 = call i32 @LocalFree(i32* %73)
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @RegCloseKey(i32 %75)
  %77 = load i32, i32* @FALSE, align 4
  store i32 %77, i32* %4, align 4
  br label %134

78:                                               ; preds = %66
  store i64 0, i64* %16, align 8
  br label %79

79:                                               ; preds = %123, %78
  %80 = load i64, i64* %16, align 8
  %81 = load i64, i64* %10, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %126

83:                                               ; preds = %79
  %84 = load i64, i64* %11, align 8
  store i64 %84, i64* %13, align 8
  %85 = load i64, i64* %12, align 8
  store i64 %85, i64* %14, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i64, i64* %16, align 8
  %88 = load i32*, i32** %17, align 8
  %89 = load i32*, i32** %18, align 8
  %90 = ptrtoint i32* %89 to i32
  %91 = call i64 @RegEnumValueW(i32 %86, i64 %87, i32* %88, i64* %13, i32* null, i64* %15, i32 %90, i64* %14)
  store i64 %91, i64* %8, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* @ERROR_SUCCESS, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %114

95:                                               ; preds = %83
  %96 = load i32*, i32** %17, align 8
  %97 = call i32 @_wcsicmp(i32* %96, i8* bitcast ([5 x i32]* @.str.2 to i8*))
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %95
  %100 = load i32*, i32** %5, align 8
  %101 = load i32*, i32** %17, align 8
  %102 = load i32*, i32** %18, align 8
  %103 = call i32 @AppendUserEnvironmentVariable(i32* %100, i32* %101, i32* %102)
  br label %113

104:                                              ; preds = %95
  %105 = load i32*, i32** %5, align 8
  %106 = load i32*, i32** %17, align 8
  %107 = load i32*, i32** %18, align 8
  %108 = load i64, i64* %15, align 8
  %109 = load i64, i64* @REG_EXPAND_SZ, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @SetUserEnvironmentVariable(i32* %105, i32* %106, i32* %107, i32 %111)
  br label %113

113:                                              ; preds = %104, %99
  br label %122

114:                                              ; preds = %83
  %115 = load i32*, i32** %18, align 8
  %116 = call i32 @LocalFree(i32* %115)
  %117 = load i32*, i32** %17, align 8
  %118 = call i32 @LocalFree(i32* %117)
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @RegCloseKey(i32 %119)
  %121 = load i32, i32* @FALSE, align 4
  store i32 %121, i32* %4, align 4
  br label %134

122:                                              ; preds = %113
  br label %123

123:                                              ; preds = %122
  %124 = load i64, i64* %16, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %16, align 8
  br label %79

126:                                              ; preds = %79
  %127 = load i32*, i32** %18, align 8
  %128 = call i32 @LocalFree(i32* %127)
  %129 = load i32*, i32** %17, align 8
  %130 = call i32 @LocalFree(i32* %129)
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @RegCloseKey(i32 %131)
  %133 = load i32, i32* @TRUE, align 4
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %126, %114, %72, %62, %49, %38, %26
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i64 @RegOpenKeyExW(i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @DPRINT1(i8*, i64) #1

declare dso_local i32 @SetLastError(i64) #1

declare dso_local i64 @RegQueryInfoKey(i32, i32*, i32*, i32*, i32*, i32*, i32*, i64*, i64*, i64*, i32*, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32* @LocalAlloc(i32, i64) #1

declare dso_local i32 @LocalFree(i32*) #1

declare dso_local i64 @RegEnumValueW(i32, i64, i32*, i64*, i32*, i64*, i32, i64*) #1

declare dso_local i32 @_wcsicmp(i32*, i8*) #1

declare dso_local i32 @AppendUserEnvironmentVariable(i32*, i32*, i32*) #1

declare dso_local i32 @SetUserEnvironmentVariable(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

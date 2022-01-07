; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c__test_hkey_main_Value_A.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c__test_hkey_main_Value_A.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hkey_main = common dso_local global i32 0, align 4
@GLE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"RegQueryValueExA/1 failed: %d, GLE=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"RegQueryValueExA set GLE = %u\0A\00", align 1
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@REG_SZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"RegQueryValueExA/1 returned type %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"cbData=%d instead of %d or %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"RegQueryValueExA/2 failed: %d, GLE=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"RegQueryValueExA overflowed: cbData=%u *value=%02x\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"RegQueryValueExA/2 failed: %s/%d != %s/%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"RegQueryValueExA/2 overflowed at offset %u: %02x != bd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*, i32)* @_test_hkey_main_Value_A to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_test_hkey_main_Value_A(i32 %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 -559038737, i32* %10, align 4
  store i32 -559038737, i32* %11, align 4
  %14 = call i32 @SetLastError(i32 -559038737)
  %15 = load i32, i32* @hkey_main, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @RegQueryValueExA(i32 %15, i8* %16, i32* null, i32* %10, i32* null, i32* %11)
  store i32 %17, i32* %9, align 4
  %18 = call i32 (...) @GetLastError()
  store i32 %18, i32* @GLE, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @ERROR_SUCCESS, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @GLE, align 4
  %25 = call i32 (i32, i8*, i32, ...) @lok(i32 %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load i32, i32* @GLE, align 4
  %27 = icmp eq i32 %26, -559038737
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* @GLE, align 4
  %30 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @GLE, align 4
  %32 = load i32, i32* @ERROR_CALL_NOT_IMPLEMENTED, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %4
  br label %125

35:                                               ; preds = %4
  %36 = load i8*, i8** %7, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @lstrlenA(i8* %39)
  br label %42

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41, %38
  %43 = phi i32 [ %40, %38 ], [ 0, %41 ]
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @REG_SZ, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %10, align 4
  %50 = call i32 (i32, i8*, i32, ...) @lok(i32 %48, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 (i32, i8*, i32, ...) @lok(i32 %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %55, i32 %56, i32 %57)
  %59 = call i32 (...) @GetProcessHeap()
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  %62 = call i32* @HeapAlloc(i32 %59, i32 0, i32 %61)
  store i32* %62, i32** %13, align 8
  %63 = load i32*, i32** %13, align 8
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  %66 = call i32 @memset(i32* %63, i32 189, i32 %65)
  store i32 -559038737, i32* %10, align 4
  %67 = load i32, i32* @hkey_main, align 4
  %68 = load i8*, i8** %6, align 8
  %69 = load i32*, i32** %13, align 8
  %70 = call i32 @RegQueryValueExA(i32 %67, i8* %68, i32* null, i32* %10, i32* %69, i32* %11)
  store i32 %70, i32* %9, align 4
  %71 = call i32 (...) @GetLastError()
  store i32 %71, i32* @GLE, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @ERROR_SUCCESS, align 4
  %74 = icmp eq i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @GLE, align 4
  %78 = call i32 (i32, i8*, i32, ...) @lok(i32 %75, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %76, i32 %77)
  %79 = load i8*, i8** %7, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %90, label %81

81:                                               ; preds = %42
  %82 = load i32*, i32** %13, align 8
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 189
  %85 = zext i1 %84 to i32
  %86 = load i32, i32* %11, align 4
  %87 = load i32*, i32** %13, align 8
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i32, i8*, i32, ...) @lok(i32 %85, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 %86, i32 %88)
  br label %121

90:                                               ; preds = %42
  %91 = load i32*, i32** %13, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i64 @memcmp(i32* %91, i8* %92, i32 %93)
  %95 = icmp eq i64 %94, 0
  %96 = zext i1 %95 to i32
  %97 = load i32*, i32** %13, align 8
  %98 = bitcast i32* %97 to i8*
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @wine_debugstr_an(i8* %98, i32 %99)
  %101 = load i32, i32* %11, align 4
  %102 = load i8*, i8** %7, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @wine_debugstr_an(i8* %102, i32 %103)
  %105 = load i32, i32* %8, align 4
  %106 = call i32 (i32, i8*, i32, ...) @lok(i32 %96, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %100, i32 %101, i32 %104, i32 %105)
  %107 = load i32*, i32** %13, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 189
  %113 = zext i1 %112 to i32
  %114 = load i32, i32* %11, align 4
  %115 = load i32*, i32** %13, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (i32, i8*, i32, ...) @lok(i32 %113, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0), i32 %114, i32 %119)
  br label %121

121:                                              ; preds = %90, %81
  %122 = call i32 (...) @GetProcessHeap()
  %123 = load i32*, i32** %13, align 8
  %124 = call i32 @HeapFree(i32 %122, i32 0, i32* %123)
  br label %125

125:                                              ; preds = %121, %34
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @RegQueryValueExA(i32, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @lok(i32, i8*, i32, ...) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @lstrlenA(i8*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @wine_debugstr_an(i8*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

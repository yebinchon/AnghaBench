; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c__test_hkey_main_Value_W.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c__test_hkey_main_Value_W.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hkey_main = common dso_local global i32 0, align 4
@GLE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"RegQueryValueExW/1 failed: %d, GLE=%d\0A\00", align 1
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"RegQueryValueExW() is not implemented\0A\00", align 1
@REG_SZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"RegQueryValueExW/1 returned type %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"cbData=%d instead of %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"RegQueryValueExW/2 failed: %d, GLE=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"RegQueryValueExW failed: %s/%d != %s/%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"RegQueryValueExW/2 overflowed at %u: %02x != bd\0A\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"RegQueryValueExW/2 overflowed at %u+1: %02x != bd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32)* @_test_hkey_main_Value_W to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_test_hkey_main_Value_W(i32 %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 -559038737, i32* %10, align 4
  store i32 -559038737, i32* %11, align 4
  %13 = call i32 @SetLastError(i32 -559038737)
  %14 = load i32, i32* @hkey_main, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @RegQueryValueExW(i32 %14, i32* %15, i32* null, i32* %10, i32* null, i32* %11)
  store i32 %16, i32* %9, align 4
  %17 = call i32 (...) @GetLastError()
  store i32 %17, i32* @GLE, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @ERROR_SUCCESS, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @GLE, align 4
  %24 = call i32 (i32, i8*, i32, ...) @lok(i32 %21, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i32, i32* @GLE, align 4
  %26 = load i32, i32* @ERROR_CALL_NOT_IMPLEMENTED, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = call i32 @win_skip(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %122

30:                                               ; preds = %4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @REG_SZ, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %10, align 4
  %36 = call i32 (i32, i8*, i32, ...) @lok(i32 %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 (i32, i8*, i32, ...) @lok(i32 %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %41, i32 %42)
  %44 = call i32 (...) @GetProcessHeap()
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 2
  %47 = call i32* @HeapAlloc(i32 %44, i32 0, i32 %46)
  store i32* %47, i32** %12, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 2
  %51 = call i32 @memset(i32* %48, i32 189, i32 %50)
  store i32 -559038737, i32* %10, align 4
  %52 = load i32, i32* @hkey_main, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = call i32 @RegQueryValueExW(i32 %52, i32* %53, i32* null, i32* %10, i32* %54, i32* %11)
  store i32 %55, i32* %9, align 4
  %56 = call i32 (...) @GetLastError()
  store i32 %56, i32* @GLE, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @ERROR_SUCCESS, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @GLE, align 4
  %63 = call i32 (i32, i8*, i32, ...) @lok(i32 %60, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load i32*, i32** %7, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %88

66:                                               ; preds = %30
  %67 = load i32*, i32** %12, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i64 @memcmp(i32* %67, i32* %68, i32 %69)
  %71 = icmp eq i64 %70, 0
  %72 = zext i1 %71 to i32
  %73 = load i32*, i32** %12, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = udiv i64 %75, 4
  %77 = trunc i64 %76 to i32
  %78 = call i32 @wine_dbgstr_wn(i32* %73, i32 %77)
  %79 = load i32, i32* %11, align 4
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = udiv i64 %82, 4
  %84 = trunc i64 %83 to i32
  %85 = call i32 @wine_dbgstr_wn(i32* %80, i32 %84)
  %86 = load i32, i32* %8, align 4
  %87 = call i32 (i32, i8*, i32, ...) @lok(i32 %72, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %78, i32 %79, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %66, %30
  %89 = load i32*, i32** %12, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 189
  %95 = zext i1 %94 to i32
  %96 = load i32, i32* %11, align 4
  %97 = load i32*, i32** %12, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i32, i8*, i32, ...) @lok(i32 %95, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %96, i32 %101)
  %103 = load i32*, i32** %12, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 189
  %110 = zext i1 %109 to i32
  %111 = load i32, i32* %11, align 4
  %112 = load i32*, i32** %12, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i32, i8*, i32, ...) @lok(i32 %110, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i32 %111, i32 %117)
  %119 = call i32 (...) @GetProcessHeap()
  %120 = load i32*, i32** %12, align 8
  %121 = call i32 @HeapFree(i32 %119, i32 0, i32* %120)
  br label %122

122:                                              ; preds = %88, %28
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @RegQueryValueExW(i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @lok(i32, i8*, i32, ...) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @wine_dbgstr_wn(i32*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

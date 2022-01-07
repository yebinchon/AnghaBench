; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mapi32/extr_util.c_load_mapi_provider.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mapi32/extr_util.c_load_mapi_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@load_mapi_provider.mapi32_dll = internal constant [11 x i8] c"mapi32.dll\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@REG_SZ = common dso_local global i64 0, align 8
@REG_EXPAND_SZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"loading %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*)* @load_mapi_provider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_mapi_provider(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i64 0, i64* %8, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @RegQueryValueExW(i32 %12, i32 %13, i32* null, i64* %7, i32* null, i64* %8)
  %15 = load i64, i64* @ERROR_SUCCESS, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %81

17:                                               ; preds = %3
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @REG_SZ, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @REG_EXPAND_SZ, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %81

25:                                               ; preds = %21, %17
  %26 = load i64, i64* %8, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %81

28:                                               ; preds = %25
  %29 = call i32 (...) @GetProcessHeap()
  %30 = load i64, i64* %8, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32* @HeapAlloc(i32 %29, i32 0, i32 %31)
  store i32* %32, i32** %9, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %80

35:                                               ; preds = %28
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = call i64 @RegQueryValueExW(i32 %36, i32 %37, i32* null, i64* null, i32* %38, i64* %8)
  %40 = load i32*, i32** %9, align 8
  %41 = call i64 @lstrcmpiW(i32* %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @load_mapi_provider.mapi32_dll, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %76

43:                                               ; preds = %35
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @REG_EXPAND_SZ, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %69

47:                                               ; preds = %43
  %48 = load i32*, i32** %9, align 8
  %49 = call i64 @ExpandEnvironmentStringsW(i32* %48, i32* null, i64 0)
  store i64 %49, i64* %10, align 8
  %50 = call i32 (...) @GetProcessHeap()
  %51 = load i64, i64* %10, align 8
  %52 = mul i64 1, %51
  %53 = add i64 %52, 1
  %54 = trunc i64 %53 to i32
  %55 = call i32* @HeapAlloc(i32 %50, i32 0, i32 %54)
  store i32* %55, i32** %11, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %47
  %59 = load i32*, i32** %9, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = load i64, i64* %10, align 8
  %62 = add nsw i64 %61, 1
  %63 = call i64 @ExpandEnvironmentStringsW(i32* %59, i32* %60, i64 %62)
  %64 = call i32 (...) @GetProcessHeap()
  %65 = load i32*, i32** %9, align 8
  %66 = call i32 @HeapFree(i32 %64, i32 0, i32* %65)
  %67 = load i32*, i32** %11, align 8
  store i32* %67, i32** %9, align 8
  br label %68

68:                                               ; preds = %58, %47
  br label %69

69:                                               ; preds = %68, %43
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @debugstr_w(i32* %70)
  %72 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load i32*, i32** %9, align 8
  %74 = call i32 @LoadLibraryW(i32* %73)
  %75 = load i32*, i32** %6, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %69, %35
  %77 = call i32 (...) @GetProcessHeap()
  %78 = load i32*, i32** %9, align 8
  %79 = call i32 @HeapFree(i32 %77, i32 0, i32* %78)
  br label %80

80:                                               ; preds = %76, %28
  br label %81

81:                                               ; preds = %80, %25, %21, %3
  ret void
}

declare dso_local i64 @RegQueryValueExW(i32, i32, i32*, i64*, i32*, i64*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @lstrcmpiW(i32*, i8*) #1

declare dso_local i64 @ExpandEnvironmentStringsW(i32*, i32*, i64) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32 @LoadLibraryW(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

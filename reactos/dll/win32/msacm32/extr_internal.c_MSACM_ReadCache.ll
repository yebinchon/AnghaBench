; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msacm32/extr_internal.c_MSACM_ReadCache.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msacm32/extr_internal.c_MSACM_ReadCache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32*, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"cFormatTags\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"cFilterTags\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"fdwSupport\00", align 1
@MSACM_hHeap = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"aFormatTagCache\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @MSACM_ReadCache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MSACM_ReadCache(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = call i32* @MSACM_GetRegistryKey(%struct.TYPE_4__* %8)
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %2, align 4
  br label %97

14:                                               ; preds = %1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store i32* null, i32** %16, align 8
  %17 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = call i64 @RegCreateKeyW(i32 %17, i32* %18, i32* %5)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %83

22:                                               ; preds = %14
  store i32 8, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = bitcast i64* %25 to i8*
  %27 = call i64 @RegQueryValueExA(i32 %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0, i32* %6, i8* %26, i32* %7)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %83

30:                                               ; preds = %22
  store i32 4, i32* %7, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %34 = bitcast i32* %33 to i8*
  %35 = call i64 @RegQueryValueExA(i32 %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* %6, i8* %34, i32* %7)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %83

38:                                               ; preds = %30
  store i32 4, i32* %7, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = bitcast i32* %41 to i8*
  %43 = call i64 @RegQueryValueExA(i32 %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 0, i32* %6, i8* %42, i32* %7)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %83

46:                                               ; preds = %38
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %78

51:                                               ; preds = %46
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = mul i64 %54, 4
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* @MSACM_hHeap, align 4
  %58 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32* @HeapAlloc(i32 %57, i32 %58, i32 %59)
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store i32* %60, i32** %62, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %51
  br label %83

68:                                               ; preds = %51
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = bitcast i32* %72 to i8*
  %74 = call i64 @RegQueryValueExA(i32 %69, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 0, i32* %6, i8* %73, i32* %7)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %83

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %77, %46
  %79 = load i32, i32* @MSACM_hHeap, align 4
  %80 = load i32*, i32** %4, align 8
  %81 = call i32 @HeapFree(i32 %79, i32 0, i32* %80)
  %82 = load i32, i32* @TRUE, align 4
  store i32 %82, i32* %2, align 4
  br label %97

83:                                               ; preds = %76, %67, %45, %37, %29, %21
  %84 = load i32, i32* @MSACM_hHeap, align 4
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @HeapFree(i32 %84, i32 0, i32* %85)
  %87 = load i32, i32* @MSACM_hHeap, align 4
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @HeapFree(i32 %87, i32 0, i32* %90)
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  store i32* null, i32** %93, align 8
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @RegCloseKey(i32 %94)
  %96 = load i32, i32* @FALSE, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %83, %78, %12
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32* @MSACM_GetRegistryKey(%struct.TYPE_4__*) #1

declare dso_local i64 @RegCreateKeyW(i32, i32*, i32*) #1

declare dso_local i64 @RegQueryValueExA(i32, i8*, i32, i32*, i8*, i32*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

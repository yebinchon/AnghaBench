; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/winmm/extr_lolvldrv.c_MMDRV_Alloc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/winmm/extr_lolvldrv.c_MMDRV_Alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"(%d, %04x, %p, %p, %p, %p)\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@MAX_MM_MLDRVS = common dso_local global i64 0, align 8
@MM_MLDrvs = common dso_local global %struct.TYPE_6__** null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Too many open drivers\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Shouldn't happen. Bad allocation scheme\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @MMDRV_Alloc(i32 %0, i32 %1, i64* %2, i32* %3, i8** %4, i8** %5) #0 {
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i64* %2, i64** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i8** %5, i8*** %13, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i64*, i64** %10, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = load i8**, i8*** %12, align 8
  %21 = load i8**, i8*** %13, align 8
  %22 = call i32 @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17, i64* %18, i32* %19, i8** %20, i8** %21)
  %23 = call i32 (...) @GetProcessHeap()
  %24 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call %struct.TYPE_6__* @HeapAlloc(i32 %23, i32 %24, i32 %25)
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %14, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %28 = icmp ne %struct.TYPE_6__* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %6
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %7, align 8
  br label %93

30:                                               ; preds = %6
  store i64 0, i64* %15, align 8
  br label %31

31:                                               ; preds = %43, %30
  %32 = load i64, i64* %15, align 8
  %33 = load i64, i64* @MAX_MM_MLDRVS, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @MM_MLDrvs, align 8
  %37 = load i64, i64* %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %36, i64 %37
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = icmp ne %struct.TYPE_6__* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  br label %46

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %15, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %15, align 8
  br label %31

46:                                               ; preds = %41, %31
  %47 = load i64, i64* %15, align 8
  %48 = load i64, i64* @MAX_MM_MLDRVS, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = call i32 @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %52 = call i32 (...) @GetProcessHeap()
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %54 = call i32 @HeapFree(i32 %52, i32 0, %struct.TYPE_6__* %53)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %7, align 8
  br label %93

55:                                               ; preds = %46
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %57 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @MM_MLDrvs, align 8
  %58 = load i64, i64* %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %57, i64 %58
  store %struct.TYPE_6__* %56, %struct.TYPE_6__** %59, align 8
  %60 = load i64, i64* %15, align 8
  %61 = or i64 %60, 32768
  %62 = load i64*, i64** %10, align 8
  store i64 %61, i64* %62, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load i64*, i64** %10, align 8
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i64 @MMDRV_GetNum(i32 %68)
  %70 = icmp ult i64 %67, %69
  br i1 %70, label %76, label %71

71:                                               ; preds = %55
  %72 = load i64*, i64** %10, align 8
  %73 = load i64, i64* %72, align 8
  %74 = lshr i64 %73, 16
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71, %55
  %77 = call i32 @ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %71
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @HIWORD(i32 %80)
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load i8**, i8*** %12, align 8
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  %88 = load i8**, i8*** %13, align 8
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  store %struct.TYPE_6__* %92, %struct.TYPE_6__** %7, align 8
  br label %93

93:                                               ; preds = %78, %50, %29
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  ret %struct.TYPE_6__* %94
}

declare dso_local i32 @TRACE(i8*, i32, i32, i64*, i32*, i8**, i8**) #1

declare dso_local %struct.TYPE_6__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_6__*) #1

declare dso_local i64 @MMDRV_GetNum(i32) #1

declare dso_local i32 @HIWORD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

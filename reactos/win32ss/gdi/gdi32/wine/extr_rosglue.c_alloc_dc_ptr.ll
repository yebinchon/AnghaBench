; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/extr_rosglue.c_alloc_dc_ptr.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/extr_rosglue.c_alloc_dc_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32*, %struct.TYPE_9__, %struct.TYPE_9__*, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_9__ = type { i32*, i32*, i32* }

@SYSTEM_FONT = common dso_local global i32 0, align 4
@WHITE_BRUSH = common dso_local global i32 0, align 4
@BLACK_PEN = common dso_local global i32 0, align 4
@DEFAULT_PALETTE = common dso_local global i32 0, align 4
@OBJ_ENHMETADC = common dso_local global i64 0, align 8
@LDC_EMFLDC = common dso_local global i32 0, align 4
@OBJ_METADC = common dso_local global i64 0, align 8
@GDILoObjType_LO_METADC16_TYPE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@DummyPhysDevFuncs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @alloc_dc_ptr(i64 %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  store i64 %0, i64* %3, align 8
  %5 = call i32 (...) @GetProcessHeap()
  %6 = call %struct.TYPE_10__* @HeapAlloc(i32 %5, i32 0, i32 88)
  store %struct.TYPE_10__* %6, %struct.TYPE_10__** %4, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %8 = icmp eq %struct.TYPE_10__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %96

10:                                               ; preds = %1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = call i32 @ZeroMemory(%struct.TYPE_10__* %11, i32 88)
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load i32, i32* @SYSTEM_FONT, align 4
  %16 = call i8* @GetStockObject(i32 %15)
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 8
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* @WHITE_BRUSH, align 4
  %20 = call i8* @GetStockObject(i32 %19)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 7
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* @BLACK_PEN, align 4
  %24 = call i8* @GetStockObject(i32 %23)
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 6
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* @DEFAULT_PALETTE, align 4
  %28 = call i8* @GetStockObject(i32 %27)
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 5
  store i8* %28, i8** %30, align 8
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* @OBJ_ENHMETADC, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %10
  %35 = call i32* @NtGdiCreateMetafileDC(i32* null)
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  store i32* %35, i32** %37, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = call i32 (...) @GetProcessHeap()
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = call i32 @HeapFree(i32 %43, i32 0, %struct.TYPE_10__* %44)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %96

46:                                               ; preds = %34
  %47 = load i32, i32* @LDC_EMFLDC, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = call i32 @GdiSetLDC(i32* %52, %struct.TYPE_10__* %53)
  br label %78

55:                                               ; preds = %10
  %56 = load i64, i64* %3, align 8
  %57 = load i64, i64* @OBJ_METADC, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %55
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = load i32, i32* @GDILoObjType_LO_METADC16_TYPE, align 4
  %62 = call i32* @GdiCreateClientObj(%struct.TYPE_10__* %60, i32 %61)
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  store i32* %62, i32** %64, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %59
  %70 = call i32 (...) @GetProcessHeap()
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %72 = call i32 @HeapFree(i32 %70, i32 0, %struct.TYPE_10__* %71)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %96

73:                                               ; preds = %59
  br label %77

74:                                               ; preds = %55
  %75 = load i32, i32* @FALSE, align 4
  %76 = call i32 @ASSERT(i32 %75)
  br label %77

77:                                               ; preds = %74, %73
  br label %78

78:                                               ; preds = %77, %46
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 3
  store %struct.TYPE_9__* %80, %struct.TYPE_9__** %82, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 2
  store i32* @DummyPhysDevFuncs, i32** %85, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  store i32* null, i32** %88, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  store i32* %91, i32** %94, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %95, %struct.TYPE_10__** %2, align 8
  br label %96

96:                                               ; preds = %78, %69, %42, %9
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %97
}

declare dso_local %struct.TYPE_10__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_10__*, i32) #1

declare dso_local i8* @GetStockObject(i32) #1

declare dso_local i32* @NtGdiCreateMetafileDC(i32*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @GdiSetLDC(i32*, %struct.TYPE_10__*) #1

declare dso_local i32* @GdiCreateClientObj(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

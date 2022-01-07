; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/enhmfdrv/extr_objects.c_EMFDRV_CreatePenIndirect.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/enhmfdrv/extr_objects.c_EMFDRV_CreatePenIndirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__, i64, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i32 }

@EMR_CREATEPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32)* @EMFDRV_CreatePenIndirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @EMFDRV_CreatePenIndirect(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 2
  %12 = call i32 @GetObjectW(i32 %10, i32 40, %struct.TYPE_9__* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %50, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @GetObjectW(i32 %15, i32 0, %struct.TYPE_9__* null)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store i64 0, i64* %3, align 8
  br label %67

20:                                               ; preds = %14
  %21 = call i32 (...) @GetProcessHeap()
  %22 = load i32, i32* %9, align 4
  %23 = call %struct.TYPE_9__* @HeapAlloc(i32 %21, i32 0, i32 %22)
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %8, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %27 = call i32 @GetObjectW(i32 %24, i32 %25, %struct.TYPE_9__* %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = call i32 (...) @GetProcessHeap()
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %49 = call i32 @HeapFree(i32 %47, i32 0, %struct.TYPE_9__* %48)
  br label %50

50:                                               ; preds = %20, %2
  %51 = load i32, i32* @EMR_CREATEPEN, align 4
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  store i32 56, i32* %55, align 8
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i64 @EMFDRV_AddHandle(i32 %56, i32 %57)
  store i64 %58, i64* %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  store i64 %58, i64* %59, align 8
  %60 = load i32, i32* %4, align 4
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %62 = call i32 @EMFDRV_WriteRecord(i32 %60, %struct.TYPE_11__* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %50
  store i64 0, i64* %7, align 8
  br label %65

65:                                               ; preds = %64, %50
  %66 = load i64, i64* %7, align 8
  store i64 %66, i64* %3, align 8
  br label %67

67:                                               ; preds = %65, %19
  %68 = load i64, i64* %3, align 8
  ret i64 %68
}

declare dso_local i32 @GetObjectW(i32, i32, %struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i64 @EMFDRV_AddHandle(i32, i32) #1

declare dso_local i32 @EMFDRV_WriteRecord(i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

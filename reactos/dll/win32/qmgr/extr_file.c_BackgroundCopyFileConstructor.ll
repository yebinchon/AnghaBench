; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/qmgr/extr_file.c_BackgroundCopyFileConstructor.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/qmgr/extr_file.c_BackgroundCopyFileConstructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32, i64*, i64, %struct.TYPE_14__*, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32, i64, i32 }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { %struct.TYPE_15__*, i8* }

@.str = private unnamed_addr constant [14 x i8] c"(%s, %s, %p)\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@BackgroundCopyFile2Vtbl = common dso_local global i32 0, align 4
@BG_SIZE_UNKNOWN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BackgroundCopyFileConstructor(%struct.TYPE_14__* %0, i32 %1, i32 %2, %struct.TYPE_15__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__**, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_15__** %3, %struct.TYPE_15__*** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @debugstr_w(i32 %11)
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @debugstr_w(i32 %13)
  %15 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %9, align 8
  %16 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %14, %struct.TYPE_15__** %15)
  %17 = call i32 (...) @GetProcessHeap()
  %18 = call %struct.TYPE_15__* @HeapAlloc(i32 %17, i32 0, i32 80)
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %10, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %20 = icmp ne %struct.TYPE_15__* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %22, i32* %5, align 4
  br label %94

23:                                               ; preds = %4
  %24 = load i32, i32* %7, align 4
  %25 = call i8* @strdupW(i32 %24)
  %26 = bitcast i8* %25 to %struct.TYPE_15__*
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 6
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  store %struct.TYPE_15__* %26, %struct.TYPE_15__** %29, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %34 = icmp ne %struct.TYPE_15__* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %23
  %36 = call i32 (...) @GetProcessHeap()
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %38 = call i32 @HeapFree(i32 %36, i32 0, %struct.TYPE_15__* %37)
  %39 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %39, i32* %5, align 4
  br label %94

40:                                               ; preds = %23
  %41 = load i32, i32* %8, align 4
  %42 = call i8* @strdupW(i32 %41)
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 6
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  store i8* %42, i8** %45, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 6
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %62, label %51

51:                                               ; preds = %40
  %52 = call i32 (...) @GetProcessHeap()
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 6
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  %57 = call i32 @HeapFree(i32 %52, i32 0, %struct.TYPE_15__* %56)
  %58 = call i32 (...) @GetProcessHeap()
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %60 = call i32 @HeapFree(i32 %58, i32 0, %struct.TYPE_15__* %59)
  %61 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %61, i32* %5, align 4
  br label %94

62:                                               ; preds = %40
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  store i32* @BackgroundCopyFile2Vtbl, i32** %65, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = load i32, i32* @BG_SIZE_UNKNOWN, align 4
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 2
  store i32 %68, i32* %71, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  store i64 0, i64* %74, align 8
  %75 = load i32, i32* @FALSE, align 4
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 3
  store %struct.TYPE_14__* %79, %struct.TYPE_14__** %81, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 2
  store i64 0, i64* %83, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 1
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 0
  store i64 0, i64* %87, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = call i32 @IBackgroundCopyJob3_AddRef(i32* %89)
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %92 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %9, align 8
  store %struct.TYPE_15__* %91, %struct.TYPE_15__** %92, align 8
  %93 = load i32, i32* @S_OK, align 4
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %62, %51, %35, %21
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @TRACE(i8*, i32, i32, %struct.TYPE_15__**) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local %struct.TYPE_15__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i8* @strdupW(i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @IBackgroundCopyJob3_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

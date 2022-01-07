; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/imagesoft/extr_tooldock.c_TbdAddToolbar.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/imagesoft/extr_tooldock.c_TbdAddToolbar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__*, i32** }
%struct.TYPE_15__ = type { i64, %struct.TYPE_15__*, i32, %struct.TYPE_17__, %struct.TYPE_16__*, i32*, i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i32 (%struct.TYPE_14__*, %struct.TYPE_17__*, i32, i32*, i32*)* }

@ProcessHeap = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TbdAddToolbar(%struct.TYPE_14__* %0, %struct.TYPE_17__* %1, i32 %2, %struct.TYPE_16__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %9, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %14 = load i32**, i32*** %13, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32*, i32** %14, i64 %17
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %11, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %84

22:                                               ; preds = %4
  %23 = load i32, i32* @ProcessHeap, align 4
  %24 = call %struct.TYPE_15__* @HeapAlloc(i32 %23, i32 0, i32 4)
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %10, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %26 = icmp ne %struct.TYPE_15__* %25, null
  br i1 %26, label %27, label %83

27:                                               ; preds = %22
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %31 = bitcast %struct.TYPE_17__* %29 to i8*
  %32 = bitcast %struct.TYPE_17__* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 8, i1 false)
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 5
  store i32* null, i32** %37, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 4
  store %struct.TYPE_16__* %43, %struct.TYPE_16__** %45, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_14__*, %struct.TYPE_17__*, i32, i32*, i32*)*, i32 (%struct.TYPE_14__*, %struct.TYPE_17__*, i32, i32*, i32*)** %47, align 8
  %49 = icmp ne i32 (%struct.TYPE_14__*, %struct.TYPE_17__*, i32, i32*, i32*)* %48, null
  br i1 %49, label %50, label %68

50:                                               ; preds = %27
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i32 (%struct.TYPE_14__*, %struct.TYPE_17__*, i32, i32*, i32*)*, i32 (%struct.TYPE_14__*, %struct.TYPE_17__*, i32, i32*, i32*)** %52, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 3
  %57 = load i32, i32* %8, align 4
  %58 = load i32*, i32** %11, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 2
  %61 = call i32 %53(%struct.TYPE_14__* %54, %struct.TYPE_17__* %56, i32 %57, i32* %58, i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %50
  %64 = load i32, i32* @ProcessHeap, align 4
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %66 = call i32 @HeapFree(i32 %64, i32 0, %struct.TYPE_15__* %65)
  %67 = load i32, i32* @FALSE, align 4
  store i32 %67, i32* %5, align 4
  br label %86

68:                                               ; preds = %50, %27
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %70, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  store %struct.TYPE_15__* %71, %struct.TYPE_15__** %73, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  store %struct.TYPE_15__* %74, %struct.TYPE_15__** %76, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @TdbInsertToolbar(%struct.TYPE_14__* %77, %struct.TYPE_15__* %78, i64 %81)
  store i32 %82, i32* %5, align 4
  br label %86

83:                                               ; preds = %22
  br label %84

84:                                               ; preds = %83, %4
  %85 = load i32, i32* @FALSE, align 4
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %84, %68, %63
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local %struct.TYPE_15__* @HeapAlloc(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @TdbInsertToolbar(%struct.TYPE_14__*, %struct.TYPE_15__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

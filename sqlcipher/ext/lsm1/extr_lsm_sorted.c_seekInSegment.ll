; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_seekInSegment.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_seekInSegment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i64 }

@LSM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_14__*, i32, i8*, i32, i32, i32, i32*, i32*)* @seekInSegment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seekInSegment(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6, i32* %7, i32* %8) #0 {
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %22 = load i32, i32* %15, align 4
  store i32 %22, i32* %19, align 4
  %23 = load i32, i32* @LSM_OK, align 4
  store i32 %23, i32* %20, align 4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %55

30:                                               ; preds = %9
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load i8*, i8** %13, align 8
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @seekInBtree(%struct.TYPE_15__* %39, %struct.TYPE_12__* %42, i32 %43, i8* %44, i32 %45, i32 0, i32** %21)
  store i32 %46, i32* %20, align 4
  %47 = load i32, i32* %20, align 4
  %48 = load i32, i32* @LSM_OK, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %30
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %52 = load i32*, i32** %21, align 8
  %53 = call i32 @segmentPtrSetPage(%struct.TYPE_14__* %51, i32* %52)
  br label %54

54:                                               ; preds = %50, %30
  br label %79

55:                                               ; preds = %9
  %56 = load i32, i32* %19, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %19, align 4
  br label %65

65:                                               ; preds = %58, %55
  %66 = load i32, i32* %20, align 4
  %67 = load i32, i32* @LSM_OK, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %76 = load i32, i32* %19, align 4
  %77 = call i32 @segmentPtrLoadPage(i32 %74, %struct.TYPE_14__* %75, i32 %76)
  store i32 %77, i32* %20, align 4
  br label %78

78:                                               ; preds = %69, %65
  br label %79

79:                                               ; preds = %78, %54
  %80 = load i32, i32* %20, align 4
  %81 = load i32, i32* @LSM_OK, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %79
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load i8*, i8** %13, align 8
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %16, align 4
  %90 = load i32*, i32** %17, align 8
  %91 = load i32*, i32** %18, align 8
  %92 = call i32 @segmentPtrSeek(%struct.TYPE_15__* %84, %struct.TYPE_14__* %85, i32 %86, i8* %87, i32 %88, i32 %89, i32* %90, i32* %91)
  store i32 %92, i32* %20, align 4
  br label %93

93:                                               ; preds = %83, %79
  %94 = load i32, i32* %20, align 4
  ret i32 %94
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @seekInBtree(%struct.TYPE_15__*, %struct.TYPE_12__*, i32, i8*, i32, i32, i32**) #1

declare dso_local i32 @segmentPtrSetPage(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @segmentPtrLoadPage(i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @segmentPtrSeek(%struct.TYPE_15__*, %struct.TYPE_14__*, i32, i8*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerComputeReshardTable.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerComputeReshardTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { float, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* }

@clusterManagerSlotCountCompareDesc = common dso_local global i32 0, align 4
@CLUSTER_MANAGER_SLOTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32)* @clusterManagerComputeReshardTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @clusterManagerComputeReshardTable(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %20 = call i32* (...) @listCreate()
  store i32* %20, i32** %5, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @listLength(i32* %21)
  store i32 %22, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 8
  %26 = trunc i64 %25 to i32
  %27 = call i8* @zmalloc(i32 %26)
  %28 = bitcast i8* %27 to %struct.TYPE_10__**
  store %struct.TYPE_10__** %28, %struct.TYPE_10__*** %10, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @listRewind(i32* %29, i32* %11)
  br label %31

31:                                               ; preds = %34, %2
  %32 = call %struct.TYPE_8__* @listNext(i32* %11)
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %12, align 8
  %33 = icmp ne %struct.TYPE_8__* %32, null
  br i1 %33, label %34, label %51

34:                                               ; preds = %31
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %13, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load float, float* %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sitofp i32 %41 to float
  %43 = fadd float %42, %40
  %44 = fptosi float %43 to i32
  store i32 %44, i32* %8, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %46 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %46, i64 %49
  store %struct.TYPE_10__* %45, %struct.TYPE_10__** %50, align 8
  br label %31

51:                                               ; preds = %31
  %52 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @clusterManagerSlotCountCompareDesc, align 4
  %55 = call i32 @qsort(%struct.TYPE_10__** %52, i32 %53, i32 8, i32 %54)
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %129, %51
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %132

60:                                               ; preds = %56
  %61 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %61, i64 %63
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  store %struct.TYPE_10__* %65, %struct.TYPE_10__** %14, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sitofp i32 %66 to float
  %68 = load i32, i32* %8, align 4
  %69 = sitofp i32 %68 to float
  %70 = fdiv float %67, %69
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load float, float* %72, align 8
  %74 = fmul float %70, %73
  store float %74, float* %15, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %60
  %78 = load float, float* %15, align 4
  %79 = call float @ceil(float %78)
  store float %79, float* %15, align 4
  br label %83

80:                                               ; preds = %60
  %81 = load float, float* %15, align 4
  %82 = call float @floor(float %81)
  store float %82, float* %15, align 4
  br label %83

83:                                               ; preds = %80, %77
  %84 = load float, float* %15, align 4
  %85 = fptosi float %84 to i32
  store i32 %85, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %9, align 4
  br label %86

86:                                               ; preds = %125, %83
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @CLUSTER_MANAGER_SLOTS, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %128

90:                                               ; preds = %86
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %18, align 4
  %98 = load i32, i32* %18, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %90
  br label %125

101:                                              ; preds = %90
  %102 = load i32, i32* %17, align 4
  %103 = load i32, i32* %16, align 4
  %104 = icmp sge i32 %102, %103
  br i1 %104, label %110, label %105

105:                                              ; preds = %101
  %106 = load i32*, i32** %5, align 8
  %107 = call i32 @listLength(i32* %106)
  %108 = load i32, i32* %4, align 4
  %109 = icmp sge i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %105, %101
  br label %128

111:                                              ; preds = %105
  %112 = call i8* @zmalloc(i32 16)
  %113 = bitcast i8* %112 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %113, %struct.TYPE_9__** %19, align 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  store %struct.TYPE_10__* %114, %struct.TYPE_10__** %116, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load i32*, i32** %5, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %122 = call i32 @listAddNodeTail(i32* %120, %struct.TYPE_9__* %121)
  %123 = load i32, i32* %17, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %17, align 4
  br label %125

125:                                              ; preds = %111, %100
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %86

128:                                              ; preds = %110, %86
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %7, align 4
  br label %56

132:                                              ; preds = %56
  %133 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %134 = call i32 @zfree(%struct.TYPE_10__** %133)
  %135 = load i32*, i32** %5, align 8
  ret i32* %135
}

declare dso_local i32* @listCreate(...) #1

declare dso_local i32 @listLength(i32*) #1

declare dso_local i8* @zmalloc(i32) #1

declare dso_local i32 @listRewind(i32*, i32*) #1

declare dso_local %struct.TYPE_8__* @listNext(i32*) #1

declare dso_local i32 @qsort(%struct.TYPE_10__**, i32, i32, i32) #1

declare dso_local float @ceil(float) #1

declare dso_local float @floor(float) #1

declare dso_local i32 @listAddNodeTail(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @zfree(%struct.TYPE_10__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

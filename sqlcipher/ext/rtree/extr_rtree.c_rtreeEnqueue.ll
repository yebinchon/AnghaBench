; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_rtreeEnqueue.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_rtreeEnqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__* }

@RTREE_MAX_DEPTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct.TYPE_11__*, i32, i64)* @rtreeEnqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @rtreeEnqueue(%struct.TYPE_11__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp sge i32 %15, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %3
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %23, 2
  %25 = add nsw i32 %24, 8
  store i32 %25, i32* %11, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 16
  %32 = trunc i64 %31 to i32
  %33 = call %struct.TYPE_10__* @sqlite3_realloc64(%struct.TYPE_10__* %28, i32 %32)
  store %struct.TYPE_10__* %33, %struct.TYPE_10__** %10, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %35 = icmp eq %struct.TYPE_10__* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %20
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %93

37:                                               ; preds = %20
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 2
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %40, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %37, %3
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  store i32 %47, i32* %8, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i64 %53
  store %struct.TYPE_10__* %54, %struct.TYPE_10__** %10, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* @RTREE_MAX_DEPTH, align 8
  %63 = icmp sle i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  br label %66

66:                                               ; preds = %84, %44
  %67 = load i32, i32* %8, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %91

69:                                               ; preds = %66
  %70 = load i32, i32* %8, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sdiv i32 %71, 2
  store i32 %72, i32* %9, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i64 %77
  store %struct.TYPE_10__* %78, %struct.TYPE_10__** %12, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %81 = call i64 @rtreeSearchPointCompare(%struct.TYPE_10__* %79, %struct.TYPE_10__* %80)
  %82 = icmp sge i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %69
  br label %91

84:                                               ; preds = %69
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @rtreeSearchPointSwap(%struct.TYPE_11__* %85, i32 %86, i32 %87)
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %8, align 4
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %90, %struct.TYPE_10__** %10, align 8
  br label %66

91:                                               ; preds = %83, %66
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %92, %struct.TYPE_10__** %4, align 8
  br label %93

93:                                               ; preds = %91, %36
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  ret %struct.TYPE_10__* %94
}

declare dso_local %struct.TYPE_10__* @sqlite3_realloc64(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @rtreeSearchPointCompare(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @rtreeSearchPointSwap(%struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

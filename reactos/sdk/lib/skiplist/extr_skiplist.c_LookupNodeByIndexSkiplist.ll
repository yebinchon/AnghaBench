; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/skiplist/extr_skiplist.c_LookupNodeByIndexSkiplist.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/skiplist/extr_skiplist.c_LookupNodeByIndexSkiplist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64*, %struct.TYPE_5__** }
%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_5__ }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @LookupNodeByIndexSkiplist(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %7, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %8, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sge i64 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %70

17:                                               ; preds = %2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %6, align 8
  br label %22

22:                                               ; preds = %63, %17
  %23 = load i64, i64* %6, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, i64* %6, align 8
  %25 = icmp sge i64 %24, 0
  br i1 %25, label %26, label %64

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %48, %26
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %30, i64 %31
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = icmp ne %struct.TYPE_5__* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %27
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %36, %42
  %44 = load i64, i64* %5, align 8
  %45 = icmp sle i64 %43, %44
  br label %46

46:                                               ; preds = %35, %27
  %47 = phi i1 [ false, %27 ], [ %45, %35 ]
  br i1 %47, label %48, label %63

48:                                               ; preds = %46
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %7, align 8
  %56 = add nsw i64 %55, %54
  store i64 %56, i64* %7, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %58, align 8
  %60 = load i64, i64* %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %59, i64 %60
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %8, align 8
  br label %27

63:                                               ; preds = %46
  br label %22

64:                                               ; preds = %22
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %67, i64 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  store %struct.TYPE_5__* %69, %struct.TYPE_5__** %3, align 8
  br label %70

70:                                               ; preds = %64, %16
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

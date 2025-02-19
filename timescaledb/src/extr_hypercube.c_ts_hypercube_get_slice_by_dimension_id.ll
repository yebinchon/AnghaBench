; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_hypercube.c_ts_hypercube_get_slice_by_dimension_id.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_hypercube.c_ts_hypercube_get_slice_by_dimension_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@cmp_slices_by_dimension_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @ts_hypercube_get_slice_by_dimension_id(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__, align 4
  %7 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %9, align 4
  %11 = bitcast %struct.TYPE_9__* %6 to i8*
  store i8* %11, i8** %7, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %36

17:                                               ; preds = %2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = call i32 @hypercube_is_sorted(%struct.TYPE_8__* %18)
  %20 = call i32 @Assert(i32 %19)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @cmp_slices_by_dimension_id, align 4
  %28 = call i8* @bsearch(i8** %7, i32 %23, i32 %26, i32 8, i32 %27)
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = icmp eq i8* null, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %36

32:                                               ; preds = %17
  %33 = load i8*, i8** %7, align 8
  %34 = bitcast i8* %33 to %struct.TYPE_9__**
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %3, align 8
  br label %36

36:                                               ; preds = %32, %31, %16
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %37
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @hypercube_is_sorted(%struct.TYPE_8__*) #1

declare dso_local i8* @bsearch(i8**, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

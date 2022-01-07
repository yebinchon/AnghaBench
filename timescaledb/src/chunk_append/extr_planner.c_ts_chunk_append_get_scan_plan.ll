; ModuleID = '/home/carl/AnghaBench/timescaledb/src/chunk_append/extr_planner.c_ts_chunk_append_get_scan_plan.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/chunk_append/extr_planner.c_ts_chunk_append_get_scan_plan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_9__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@Sort = common dso_local global i32 0, align 4
@Result = common dso_local global i32 0, align 4
@CustomScan = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"invalid child of chunk append: %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ts_chunk_append_get_scan_plan(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %5 = icmp ne %struct.TYPE_9__* %4, null
  br i1 %5, label %6, label %20

6:                                                ; preds = %1
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = load i32, i32* @Sort, align 4
  %9 = call i64 @IsA(%struct.TYPE_9__* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = load i32, i32* @Result, align 4
  %14 = call i64 @IsA(%struct.TYPE_9__* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11, %6
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %3, align 8
  br label %20

20:                                               ; preds = %16, %11, %1
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = icmp eq %struct.TYPE_9__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32* null, i32** %2, align 8
  br label %48

24:                                               ; preds = %20
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = call i32 @nodeTag(%struct.TYPE_9__* %25)
  switch i32 %26, label %43 [
    i32 142, label %27
    i32 141, label %27
    i32 140, label %27
    i32 138, label %27
    i32 137, label %27
    i32 136, label %27
    i32 135, label %27
    i32 133, label %27
    i32 132, label %27
    i32 131, label %27
    i32 130, label %27
    i32 129, label %27
    i32 128, label %27
    i32 139, label %30
    i32 134, label %42
  ]

27:                                               ; preds = %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = bitcast %struct.TYPE_9__* %28 to i32*
  store i32* %29, i32** %2, align 8
  br label %48

30:                                               ; preds = %24
  %31 = load i32, i32* @CustomScan, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = call %struct.TYPE_10__* @castNode(i32 %31, %struct.TYPE_9__* %32)
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = bitcast %struct.TYPE_9__* %39 to i32*
  store i32* %40, i32** %2, align 8
  br label %48

41:                                               ; preds = %30
  store i32* null, i32** %2, align 8
  br label %48

42:                                               ; preds = %24
  store i32* null, i32** %2, align 8
  br label %48

43:                                               ; preds = %24
  %44 = load i32, i32* @ERROR, align 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = call i32 @nodeTag(%struct.TYPE_9__* %45)
  %47 = call i32 @elog(i32 %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %46)
  store i32* null, i32** %2, align 8
  br label %48

48:                                               ; preds = %43, %42, %41, %38, %27, %23
  %49 = load i32*, i32** %2, align 8
  ret i32* %49
}

declare dso_local i64 @IsA(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @nodeTag(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_10__* @castNode(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

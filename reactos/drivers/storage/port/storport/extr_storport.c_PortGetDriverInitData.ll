; ModuleID = '/home/carl/AnghaBench/reactos/drivers/storage/port/storport/extr_storport.c_PortGetDriverInitData.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/storage/port/storport/extr_storport.c_PortGetDriverInitData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_9__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }

@.str = private unnamed_addr constant [25 x i8] c"PortGetDriverInitData()\0A\00", align 1
@DRIVER_INIT_DATA = common dso_local global i32 0, align 4
@Entry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @PortGetDriverInitData(%struct.TYPE_11__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = call i32 @DPRINT1(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %7, align 8
  br label %13

13:                                               ; preds = %32, %2
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = icmp ne %struct.TYPE_9__* %14, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %13
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %20 = load i32, i32* @DRIVER_INIT_DATA, align 4
  %21 = load i32, i32* @Entry, align 4
  %22 = call %struct.TYPE_12__* @CONTAINING_RECORD(%struct.TYPE_9__* %19, i32 %20, i32 %21)
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %6, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %3, align 8
  br label %37

32:                                               ; preds = %18
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %7, align 8
  br label %13

36:                                               ; preds = %13
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %37

37:                                               ; preds = %36, %29
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  ret %struct.TYPE_10__* %38
}

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local %struct.TYPE_12__* @CONTAINING_RECORD(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

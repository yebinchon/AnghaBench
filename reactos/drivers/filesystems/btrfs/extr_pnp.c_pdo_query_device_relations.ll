; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_pnp.c_pdo_query_device_relations.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_pnp.c_pdo_query_device_relations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_16__ = type { i32, i32* }

@TargetDeviceRelation = common dso_local global i64 0, align 8
@PagedPool = common dso_local global i32 0, align 4
@ALLOC_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_14__*)* @pdo_query_device_relations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdo_query_device_relations(i32 %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %9 = call %struct.TYPE_15__* @IoGetCurrentIrpStackLocation(%struct.TYPE_14__* %8)
  store %struct.TYPE_15__* %9, %struct.TYPE_15__** %6, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TargetDeviceRelation, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %3, align 4
  br label %47

22:                                               ; preds = %2
  %23 = load i32, i32* @PagedPool, align 4
  %24 = load i32, i32* @ALLOC_TAG, align 4
  %25 = call %struct.TYPE_16__* @ExAllocatePoolWithTag(i32 %23, i32 4, i32 %24)
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %7, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %27 = icmp ne %struct.TYPE_16__* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = call i32 @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %30, i32* %3, align 4
  br label %47

31:                                               ; preds = %22
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %34, i32* %38, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @ObReferenceObject(i32 %39)
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %42 = ptrtoint %struct.TYPE_16__* %41 to i64
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  store i64 %42, i64* %45, align 8
  %46 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %31, %28, %17
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.TYPE_15__* @IoGetCurrentIrpStackLocation(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_16__* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @ObReferenceObject(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

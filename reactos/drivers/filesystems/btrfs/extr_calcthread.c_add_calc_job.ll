; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_calcthread.c_add_calc_job.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_calcthread.c_add_calc_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i64, i64, i32*, i32, i32* }

@NonPagedPool = common dso_local global i32 0, align 4
@ALLOC_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@NotificationEvent = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_calc_job(%struct.TYPE_8__* %0, i32* %1, i32 %2, i32* %3, %struct.TYPE_9__** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__**, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_9__** %4, %struct.TYPE_9__*** %11, align 8
  %13 = load i32, i32* @NonPagedPool, align 4
  %14 = load i32, i32* @ALLOC_TAG, align 4
  %15 = call %struct.TYPE_9__* @ExAllocatePoolWithTag(i32 %13, i32 56, i32 %14)
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %12, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %17 = icmp ne %struct.TYPE_9__* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = call i32 @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %20, i32* %6, align 4
  br label %66

21:                                               ; preds = %5
  %22 = load i32*, i32** %8, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 7
  store i32* %22, i32** %24, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 5
  store i32* %28, i32** %30, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 4
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 3
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 2
  %39 = load i32, i32* @NotificationEvent, align 4
  %40 = call i32 @KeInitializeEvent(i32* %38, i32 %39, i32 0)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = call i32 @ExAcquireResourceExclusiveLite(i32* %43, i32 1)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = call i32 @InsertTailList(i32* %47, i32* %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = call i32 @KeSetEvent(i32* %53, i32 0, i32 0)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = call i32 @KeClearEvent(i32* %57)
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = call i32 @ExReleaseResourceLite(i32* %61)
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %64 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %11, align 8
  store %struct.TYPE_9__* %63, %struct.TYPE_9__** %64, align 8
  %65 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %21, %18
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local %struct.TYPE_9__* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @KeInitializeEvent(i32*, i32, i32) #1

declare dso_local i32 @ExAcquireResourceExclusiveLite(i32*, i32) #1

declare dso_local i32 @InsertTailList(i32*, i32*) #1

declare dso_local i32 @KeSetEvent(i32*, i32, i32) #1

declare dso_local i32 @KeClearEvent(i32*) #1

declare dso_local i32 @ExReleaseResourceLite(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

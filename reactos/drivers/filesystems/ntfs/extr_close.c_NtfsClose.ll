; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_close.c_NtfsClose.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_close.c_NtfsClose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"NtfsClose() called\0A\00", align 1
@NtfsGlobalData = common dso_local global %struct.TYPE_15__* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Closing file system\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@IRPCONTEXT_CANWAIT = common dso_local global i32 0, align 4
@STATUS_PENDING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @NtfsClose(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %8 = call i32 @DPRINT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %7, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** @NtfsGlobalData, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %16 = icmp eq %struct.TYPE_13__* %12, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = call i32 @DPRINT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %24, i64* %2, align 8
  br label %64

25:                                               ; preds = %1
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %5, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  store %struct.TYPE_14__* %31, %struct.TYPE_14__** %4, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @IRPCONTEXT_CANWAIT, align 4
  %38 = call i32 @BooleanFlagOn(i32 %36, i32 %37)
  %39 = call i32 @ExAcquireResourceExclusiveLite(i32* %33, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %25
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %43 = call i64 @NtfsMarkIrpContextForQueue(%struct.TYPE_12__* %42)
  store i64 %43, i64* %2, align 8
  br label %64

44:                                               ; preds = %25
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i64 @NtfsCloseFile(%struct.TYPE_14__* %45, i32 %46)
  store i64 %47, i64* %6, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = call i32 @ExReleaseResourceLite(i32* %49)
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @STATUS_PENDING, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %56 = call i64 @NtfsMarkIrpContextForQueue(%struct.TYPE_12__* %55)
  store i64 %56, i64* %2, align 8
  br label %64

57:                                               ; preds = %44
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = load i64, i64* %6, align 8
  store i64 %63, i64* %2, align 8
  br label %64

64:                                               ; preds = %57, %54, %41, %17
  %65 = load i64, i64* %2, align 8
  ret i64 %65
}

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i32 @ExAcquireResourceExclusiveLite(i32*, i32) #1

declare dso_local i32 @BooleanFlagOn(i32, i32) #1

declare dso_local i64 @NtfsMarkIrpContextForQueue(%struct.TYPE_12__*) #1

declare dso_local i64 @NtfsCloseFile(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ExReleaseResourceLite(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

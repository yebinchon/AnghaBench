; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_create.c_NtfsCreate.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_create.c_NtfsCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@NtfsGlobalData = common dso_local global %struct.TYPE_16__* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"Opening file system\0A\00", align 1
@FILE_OPENED = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@IRPCONTEXT_CANWAIT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NtfsCreate(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_14__* %9, %struct.TYPE_14__** %6, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** @NtfsGlobalData, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %14 = icmp eq %struct.TYPE_14__* %10, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = call i32 @DPRINT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @FILE_OPENED, align 4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  store i32 %17, i32* %22, align 4
  %23 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %23, i32* %2, align 4
  br label %49

24:                                               ; preds = %1
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %4, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @IRPCONTEXT_CANWAIT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %24
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %36 = call i32 @NtfsMarkIrpContextForQueue(%struct.TYPE_13__* %35)
  store i32 %36, i32* %2, align 4
  br label %49

37:                                               ; preds = %24
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32, i32* @TRUE, align 4
  %41 = call i32 @ExAcquireResourceExclusiveLite(i32* %39, i32 %40)
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %44 = call i32 @NtfsCreateFile(%struct.TYPE_14__* %42, %struct.TYPE_13__* %43)
  store i32 %44, i32* %5, align 4
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = call i32 @ExReleaseResourceLite(i32* %46)
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %37, %34, %15
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i32 @NtfsMarkIrpContextForQueue(%struct.TYPE_13__*) #1

declare dso_local i32 @ExAcquireResourceExclusiveLite(i32*, i32) #1

declare dso_local i32 @NtfsCreateFile(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i32 @ExReleaseResourceLite(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

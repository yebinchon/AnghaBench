; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_flush.c_VfatFlushFile.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_flush.c_VfatFlushFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i64 }

@.str = private unnamed_addr constant [47 x i8] c"VfatFlushFile(DeviceExt %p, Fcb %p) for '%wZ'\0A\00", align 1
@STATUS_INVALID_PARAMETER = common dso_local global i64 0, align 8
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FCB_IS_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*, %struct.TYPE_11__*)* @VfatFlushFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @VfatFlushFile(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_13__, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 2
  %11 = call i32 @DPRINT(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %7, %struct.TYPE_11__* %8, i32* %10)
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %14 = call i32 @CcFlushCache(i32* %13, i32* null, i32 0, %struct.TYPE_13__* %5)
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @STATUS_INVALID_PARAMETER, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i64, i64* @STATUS_SUCCESS, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  store i64 %20, i64* %21, align 8
  br label %22

22:                                               ; preds = %19, %2
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32, i32* @TRUE, align 4
  %26 = call i32 @ExAcquireResourceExclusiveLite(i32* %24, i32 %25)
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @FCB_IS_DIRTY, align 4
  %31 = call i64 @BooleanFlagOn(i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %22
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = call i64 @VfatUpdateEntry(%struct.TYPE_12__* %34, %struct.TYPE_11__* %35)
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @NT_SUCCESS(i64 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  store i64 %41, i64* %42, align 8
  br label %43

43:                                               ; preds = %40, %33
  br label %44

44:                                               ; preds = %43, %22
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = call i32 @ExReleaseResourceLite(i32* %46)
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  ret i64 %49
}

declare dso_local i32 @DPRINT(i8*, %struct.TYPE_12__*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @CcFlushCache(i32*, i32*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @ExAcquireResourceExclusiveLite(i32*, i32) #1

declare dso_local i64 @BooleanFlagOn(i32, i32) #1

declare dso_local i64 @VfatUpdateEntry(%struct.TYPE_12__*, %struct.TYPE_11__*) #1

declare dso_local i32 @NT_SUCCESS(i64) #1

declare dso_local i32 @ExReleaseResourceLite(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

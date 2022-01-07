; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/fslib/btrfslib/extr_btrfslib.c_is_ssd.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/fslib/btrfslib/extr_btrfslib.c_is_ssd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i32*, i32 }
%struct.TYPE_10__ = type { i32 }

@ATA_FLAGS_DATA_IN = common dso_local global i32 0, align 4
@IDE_COMMAND_IDENTIFY = common dso_local global i32 0, align 4
@IOCTL_ATA_PASS_THROUGH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @is_ssd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_ssd(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 544, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.TYPE_11__* @malloc(i32 %9)
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %5, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @RtlZeroMemory(%struct.TYPE_11__* %11, i32 %12)
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  store i32 32, i32* %15, align 8
  %16 = load i32, i32* @ATA_FLAGS_DATA_IN, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = sub i64 %20, 32
  %22 = trunc i64 %21 to i32
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 2
  store i32 3, i32* %26, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @IDE_COMMAND_IDENTIFY, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 6
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @IOCTL_ATA_PASS_THROUGH, align 4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @NtDeviceIoControlFile(i32 %37, i32* null, i32* null, i32* null, i32* %6, i32 %38, %struct.TYPE_11__* %39, i32 %40, %struct.TYPE_11__* %41, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i64 @NT_SUCCESS(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %1
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = bitcast %struct.TYPE_11__* %48 to i32*
  %50 = getelementptr inbounds i32, i32* %49, i64 32
  %51 = bitcast i32* %50 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %8, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %58 = call i32 @free(%struct.TYPE_11__* %57)
  %59 = load i32, i32* @TRUE, align 4
  store i32 %59, i32* %2, align 4
  br label %65

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60, %1
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %63 = call i32 @free(%struct.TYPE_11__* %62)
  %64 = load i32, i32* @FALSE, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %61, %56
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.TYPE_11__* @malloc(i32) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @NtDeviceIoControlFile(i32, i32*, i32*, i32*, i32*, i32, %struct.TYPE_11__*, i32, %struct.TYPE_11__*, i32) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

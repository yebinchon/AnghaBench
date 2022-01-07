; ModuleID = '/home/carl/AnghaBench/reactos/drivers/storage/floppy_new/extr_floppy.c_FlopticalFormatMedia.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/storage/floppy_new/extr_floppy.c_FlopticalFormatMedia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32 }

@DriveMediaConstants = common dso_local global %struct.TYPE_10__* null, align 8
@Drive2080Media2080 = common dso_local global i64 0, align 8
@NonPagedPoolNxCacheAligned = common dso_local global i32 0, align 4
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i64 0, align 8
@NotificationEvent = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IRP_MJ_WRITE = common dso_local global i32 0, align 4
@STATUS_PENDING = common dso_local global i64 0, align 8
@Executive = common dso_local global i32 0, align 4
@KernelMode = common dso_local global i32 0, align 4
@NonPagedPoolCacheAligned = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FlopticalFormatMedia(i32 %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_12__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %14 = call i32 (...) @PAGED_CODE()
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** @DriveMediaConstants, align 8
  %16 = load i64, i64* @Drive2080Media2080, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i64 %16
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %12, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %20, %23
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %24, %27
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %28, %31
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %32, %35
  %37 = add nsw i32 %36, 1
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %37, %40
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %41, %44
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* @NonPagedPoolNxCacheAligned, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32* @ExAllocatePool(i32 %46, i32 %47)
  store i32* %48, i32** %11, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %2
  %52 = load i64, i64* @STATUS_INSUFFICIENT_RESOURCES, align 8
  store i64 %52, i64* %3, align 8
  br label %113

53:                                               ; preds = %2
  %54 = load i32*, i32** %11, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @RtlZeroMemory(i32* %54, i32 %55)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %59, %62
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %63, %66
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %67, %70
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %71, %74
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* @NotificationEvent, align 4
  %78 = load i32, i32* @FALSE, align 4
  %79 = call i32 @KeInitializeEvent(i32* %8, i32 %77, i32 %78)
  %80 = load i32, i32* @IRP_MJ_WRITE, align 4
  %81 = load i32, i32* %4, align 4
  %82 = load i32*, i32** %11, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i32* @IoBuildSynchronousFsdRequest(i32 %80, i32 %81, i32* %82, i32 %83, %struct.TYPE_11__* %9, i32* %8, %struct.TYPE_12__* %6)
  store i32* %84, i32** %7, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %107

87:                                               ; preds = %53
  %88 = load i32, i32* %4, align 4
  %89 = load i32*, i32** %7, align 8
  %90 = call i64 @IoCallDriver(i32 %88, i32* %89)
  store i64 %90, i64* %13, align 8
  %91 = load i64, i64* %13, align 8
  %92 = load i64, i64* @STATUS_PENDING, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %87
  %95 = load i32, i32* @Executive, align 4
  %96 = load i32, i32* @KernelMode, align 4
  %97 = load i32, i32* @FALSE, align 4
  %98 = call i32 @KeWaitForSingleObject(i32* %8, i32 %95, i32 %96, i32 %97, i32* null)
  br label %99

99:                                               ; preds = %94, %87
  %100 = load i64, i64* %13, align 8
  %101 = call i64 @NT_SUCCESS(i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %13, align 8
  br label %106

106:                                              ; preds = %103, %99
  br label %109

107:                                              ; preds = %53
  %108 = load i64, i64* @STATUS_INSUFFICIENT_RESOURCES, align 8
  store i64 %108, i64* %13, align 8
  br label %109

109:                                              ; preds = %107, %106
  %110 = load i32*, i32** %11, align 8
  %111 = call i32 @ExFreePool(i32* %110)
  %112 = load i64, i64* %13, align 8
  store i64 %112, i64* %3, align 8
  br label %113

113:                                              ; preds = %109, %51
  %114 = load i64, i64* %3, align 8
  ret i64 %114
}

declare dso_local i32 @PAGED_CODE(...) #1

declare dso_local i32* @ExAllocatePool(i32, i32) #1

declare dso_local i32 @RtlZeroMemory(i32*, i32) #1

declare dso_local i32 @KeInitializeEvent(i32*, i32, i32) #1

declare dso_local i32* @IoBuildSynchronousFsdRequest(i32, i32, i32*, i32, %struct.TYPE_11__*, i32*, %struct.TYPE_12__*) #1

declare dso_local i64 @IoCallDriver(i32, i32*) #1

declare dso_local i32 @KeWaitForSingleObject(i32*, i32, i32, i32, i32*) #1

declare dso_local i64 @NT_SUCCESS(i64) #1

declare dso_local i32 @ExFreePool(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

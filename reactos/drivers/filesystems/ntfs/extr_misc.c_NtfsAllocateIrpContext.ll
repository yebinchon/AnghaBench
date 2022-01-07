; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_misc.c_NtfsAllocateIrpContext.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_misc.c_NtfsAllocateIrpContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i32, %struct.TYPE_10__*, i32, i32, i32, i64, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i64, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@NTFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"NtfsAllocateIrpContext()\0A\00", align 1
@NtfsGlobalData = common dso_local global %struct.TYPE_9__* null, align 8
@NTFS_TYPE_IRP_CONTEXT = common dso_local global i32 0, align 4
@IO_NO_INCREMENT = common dso_local global i32 0, align 4
@IRPCONTEXT_COMPLETE = common dso_local global i32 0, align 4
@IRP_MJ_FILE_SYSTEM_CONTROL = common dso_local global i64 0, align 8
@IRP_MJ_DEVICE_CONTROL = common dso_local global i64 0, align 8
@IRP_MJ_SHUTDOWN = common dso_local global i64 0, align 8
@IRP_MJ_CLEANUP = common dso_local global i64 0, align 8
@IRP_MJ_CLOSE = common dso_local global i64 0, align 8
@IRPCONTEXT_CANWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @NtfsAllocateIrpContext(i32 %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* @NTFS, align 4
  %8 = call i32 @TRACE_(i32 %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** @NtfsGlobalData, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = call i64 @ExAllocateFromNPagedLookasideList(i32* %10)
  %12 = inttoptr i64 %11 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %6, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %14 = icmp eq %struct.TYPE_8__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %110

16:                                               ; preds = %2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = call i32 @RtlZeroMemory(%struct.TYPE_8__* %17, i32 4)
  %19 = load i32, i32* @NTFS_TYPE_IRP_CONTEXT, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 9
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 9
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  store i32 4, i32* %25, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 8
  store i64 %26, i64* %28, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call %struct.TYPE_10__* @IoGetCurrentIrpStackLocation(i64 %32)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 4
  store %struct.TYPE_10__* %33, %struct.TYPE_10__** %35, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 8
  %57 = call i64 (...) @IoGetTopLevelIrp()
  %58 = load i64, i64* %5, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @IO_NO_INCREMENT, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @IRPCONTEXT_COMPLETE, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @IRP_MJ_FILE_SYSTEM_CONTROL, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %102, label %74

74:                                               ; preds = %16
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @IRP_MJ_DEVICE_CONTROL, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %102, label %80

80:                                               ; preds = %74
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @IRP_MJ_SHUTDOWN, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %102, label %86

86:                                               ; preds = %80
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @IRP_MJ_CLEANUP, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %86
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @IRP_MJ_CLOSE, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %92
  %99 = load i64, i64* %5, align 8
  %100 = call i64 @IoIsOperationSynchronous(i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %98, %80, %74, %16
  %103 = load i32, i32* @IRPCONTEXT_CANWAIT, align 4
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %102, %98, %92, %86
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %109, %struct.TYPE_8__** %3, align 8
  br label %110

110:                                              ; preds = %108, %15
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %111
}

declare dso_local i32 @TRACE_(i32, i8*) #1

declare dso_local i64 @ExAllocateFromNPagedLookasideList(i32*) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_8__*, i32) #1

declare dso_local %struct.TYPE_10__* @IoGetCurrentIrpStackLocation(i64) #1

declare dso_local i64 @IoGetTopLevelIrp(...) #1

declare dso_local i64 @IoIsOperationSynchronous(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

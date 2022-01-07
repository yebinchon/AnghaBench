; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_dirctl.c_NtfsDirectoryControl.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_dirctl.c_NtfsDirectoryControl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@STATUS_UNSUCCESSFUL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"NtfsDirectoryControl() called\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"IRP_MN_NOTIFY_CHANGE_DIRECTORY\0A\00", align 1
@STATUS_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@STATUS_INVALID_DEVICE_REQUEST = common dso_local global i64 0, align 8
@STATUS_PENDING = common dso_local global i64 0, align 8
@IRPCONTEXT_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @NtfsDirectoryControl(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %5 = load i64, i64* @STATUS_UNSUCCESSFUL, align 8
  store i64 %5, i64* %4, align 8
  %6 = call i32 @DPRINT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %16 [
    i32 128, label %10
    i32 129, label %13
  ]

10:                                               ; preds = %1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = call i64 @NtfsQueryDirectory(%struct.TYPE_9__* %11)
  store i64 %12, i64* %4, align 8
  br label %18

13:                                               ; preds = %1
  %14 = call i32 @DPRINT1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i64, i64* @STATUS_NOT_IMPLEMENTED, align 8
  store i64 %15, i64* %4, align 8
  br label %18

16:                                               ; preds = %1
  %17 = load i64, i64* @STATUS_INVALID_DEVICE_REQUEST, align 8
  store i64 %17, i64* %4, align 8
  br label %18

18:                                               ; preds = %16, %13, %10
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @STATUS_PENDING, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IRPCONTEXT_COMPLETE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = call i64 @NtfsMarkIrpContextForQueue(%struct.TYPE_9__* %30)
  store i64 %31, i64* %2, align 8
  br label %39

32:                                               ; preds = %22, %18
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load i64, i64* %4, align 8
  store i64 %38, i64* %2, align 8
  br label %39

39:                                               ; preds = %32, %29
  %40 = load i64, i64* %2, align 8
  ret i64 %40
}

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i64 @NtfsQueryDirectory(%struct.TYPE_9__*) #1

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i64 @NtfsMarkIrpContextForQueue(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zvol_os.c_zvol_check_events.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zvol_os.c_zvol_check_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@zvol_state_lock = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@DISK_EVENT_MEDIA_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gendisk*, i32)* @zvol_check_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zvol_check_events(%struct.gendisk* %0, i32 %1) #0 {
  %3 = alloca %struct.gendisk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_2__*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @RW_READER, align 4
  %8 = call i32 @rw_enter(i32* @zvol_state_lock, i32 %7)
  %9 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %10 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %6, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %32

14:                                               ; preds = %2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @mutex_enter(i32* %16)
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* @DISK_EVENT_MEDIA_CHANGE, align 4
  br label %25

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  store i32 %26, i32* %5, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @mutex_exit(i32* %30)
  br label %32

32:                                               ; preds = %25, %2
  %33 = call i32 @rw_exit(i32* @zvol_state_lock)
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @rw_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

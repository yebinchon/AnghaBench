; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_linux.c_prepare_to_wait_exclusive.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_linux.c_prepare_to_wait_exclusive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.__wait_queue = type { i32, i32 }

@WQ_FLAG_EXCLUSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prepare_to_wait_exclusive(%struct.TYPE_4__* %0, %struct.__wait_queue** %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.__wait_queue**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.__wait_queue*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.__wait_queue** %1, %struct.__wait_queue*** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.__wait_queue**, %struct.__wait_queue*** %5, align 8
  %10 = load %struct.__wait_queue*, %struct.__wait_queue** %9, align 8
  store %struct.__wait_queue* %10, %struct.__wait_queue** %8, align 8
  %11 = load i32, i32* @WQ_FLAG_EXCLUSIVE, align 4
  %12 = load %struct.__wait_queue*, %struct.__wait_queue** %8, align 8
  %13 = getelementptr inbounds %struct.__wait_queue, %struct.__wait_queue* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.__wait_queue*, %struct.__wait_queue** %8, align 8
  %21 = getelementptr inbounds %struct.__wait_queue, %struct.__wait_queue* %20, i32 0, i32 0
  %22 = call i64 @list_empty(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = load %struct.__wait_queue*, %struct.__wait_queue** %8, align 8
  %27 = call i32 @__add_wait_queue_tail(%struct.TYPE_4__* %25, %struct.__wait_queue* %26)
  br label %28

28:                                               ; preds = %24, %3
  %29 = load %struct.__wait_queue*, %struct.__wait_queue** %8, align 8
  %30 = call i64 @is_sync_wait(%struct.__wait_queue* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @set_current_state(i32 %33)
  br label %35

35:                                               ; preds = %32, %28
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @__add_wait_queue_tail(%struct.TYPE_4__*, %struct.__wait_queue*) #1

declare dso_local i64 @is_sync_wait(%struct.__wait_queue*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

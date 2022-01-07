; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_linux.c_sync_dirty_buffer.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_linux.c_sync_dirty_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }

@WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sync_dirty_buffer(%struct.buffer_head* %0) #0 {
  %2 = alloca %struct.buffer_head*, align 8
  %3 = alloca i32, align 4
  store %struct.buffer_head* %0, %struct.buffer_head** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %5 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %4, i32 0, i32 0
  %6 = call i32 @atomic_read(i32* %5)
  %7 = icmp sle i32 %6, 1
  %8 = zext i1 %7 to i32
  %9 = call i32 @ASSERT(i32 %8)
  %10 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %11 = call i32 @lock_buffer(%struct.buffer_head* %10)
  %12 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %13 = call i64 @test_clear_buffer_dirty(%struct.buffer_head* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %17 = call i32 @get_bh(%struct.buffer_head* %16)
  %18 = load i32, i32* @WRITE, align 4
  %19 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %20 = call i32 @submit_bh(i32 %18, %struct.buffer_head* %19)
  store i32 %20, i32* %3, align 4
  %21 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %22 = call i32 @wait_on_buffer(%struct.buffer_head* %21)
  br label %26

23:                                               ; preds = %1
  %24 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %25 = call i32 @unlock_buffer(%struct.buffer_head* %24)
  br label %26

26:                                               ; preds = %23, %15
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i64 @test_clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @submit_bh(i32, %struct.buffer_head*) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

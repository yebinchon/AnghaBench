; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_linux.c_new_buffer_head.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_linux.c_new_buffer_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.buffer_head = type { i32, i32 }

@g_jbh = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@DL_BH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"bh=%p allocated.\0A\00", align 1
@PS_BUFF_HEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer_head* @new_buffer_head() #0 {
  %1 = alloca %struct.buffer_head*, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %1, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_jbh, i32 0, i32 2), align 4
  %3 = load i32, i32* @GFP_NOFS, align 4
  %4 = call %struct.buffer_head* @kmem_cache_alloc(i32 %2, i32 %3)
  store %struct.buffer_head* %4, %struct.buffer_head** %1, align 8
  %5 = load %struct.buffer_head*, %struct.buffer_head** %1, align 8
  %6 = icmp ne %struct.buffer_head* %5, null
  br i1 %6, label %7, label %25

7:                                                ; preds = %0
  %8 = call i32 @atomic_inc(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_jbh, i32 0, i32 1))
  %9 = call i32 @atomic_inc(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_jbh, i32 0, i32 0))
  %10 = load %struct.buffer_head*, %struct.buffer_head** %1, align 8
  %11 = call i32 @memset(%struct.buffer_head* %10, i32 0, i32 8)
  %12 = load %struct.buffer_head*, %struct.buffer_head** %1, align 8
  %13 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %12, i32 0, i32 1
  %14 = call i32 @InitializeListHead(i32* %13)
  %15 = load %struct.buffer_head*, %struct.buffer_head** %1, align 8
  %16 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %15, i32 0, i32 0
  %17 = call i32 @KeQuerySystemTime(i32* %16)
  %18 = load i32, i32* @DL_BH, align 4
  %19 = load %struct.buffer_head*, %struct.buffer_head** %1, align 8
  %20 = bitcast %struct.buffer_head* %19 to i8*
  %21 = call i32 @DEBUG(i32 %18, i8* %20)
  %22 = load i32, i32* @PS_BUFF_HEAD, align 4
  %23 = load %struct.buffer_head*, %struct.buffer_head** %1, align 8
  %24 = call i32 @INC_MEM_COUNT(i32 %22, %struct.buffer_head* %23, i32 8)
  br label %25

25:                                               ; preds = %7, %0
  %26 = load %struct.buffer_head*, %struct.buffer_head** %1, align 8
  ret %struct.buffer_head* %26
}

declare dso_local %struct.buffer_head* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @memset(%struct.buffer_head*, i32, i32) #1

declare dso_local i32 @InitializeListHead(i32*) #1

declare dso_local i32 @KeQuerySystemTime(i32*) #1

declare dso_local i32 @DEBUG(i32, i8*) #1

declare dso_local i32 @INC_MEM_COUNT(i32, %struct.buffer_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

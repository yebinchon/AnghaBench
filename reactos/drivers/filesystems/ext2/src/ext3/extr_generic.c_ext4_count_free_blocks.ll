; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_generic.c_ext4_count_free_blocks.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_generic.c_ext4_count_free_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_group_desc = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext4_count_free_blocks(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ext4_group_desc*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %5, align 8
  %8 = load %struct.super_block*, %struct.super_block** %2, align 8
  %9 = call %struct.TYPE_2__* @EXT3_SB(%struct.super_block* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %7, align 8
  store i64 0, i64* %3, align 8
  %12 = call i32 (...) @smp_rmb()
  store i64 0, i64* %6, align 8
  br label %13

13:                                               ; preds = %31, %1
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %13
  %18 = load %struct.super_block*, %struct.super_block** %2, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block* %18, i64 %19, %struct.buffer_head** %5)
  store %struct.ext4_group_desc* %20, %struct.ext4_group_desc** %4, align 8
  %21 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %22 = icmp ne %struct.buffer_head* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  br label %31

24:                                               ; preds = %17
  %25 = load %struct.super_block*, %struct.super_block** %2, align 8
  %26 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %4, align 8
  %27 = call i64 @ext4_free_blks_count(%struct.super_block* %25, %struct.ext4_group_desc* %26)
  %28 = load i64, i64* %3, align 8
  %29 = add nsw i64 %28, %27
  store i64 %29, i64* %3, align 8
  %30 = call i32 @fini_bh(%struct.buffer_head** %5)
  br label %31

31:                                               ; preds = %24, %23
  %32 = load i64, i64* %6, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %6, align 8
  br label %13

34:                                               ; preds = %13
  %35 = load i64, i64* %3, align 8
  ret i64 %35
}

declare dso_local %struct.TYPE_2__* @EXT3_SB(%struct.super_block*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block*, i64, %struct.buffer_head**) #1

declare dso_local i64 @ext4_free_blks_count(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i32 @fini_bh(%struct.buffer_head**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_generic.c_ext4_block_bitmap.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_generic.c_ext4_block_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_group_desc = type { i32, i32 }

@EXT4_MIN_DESC_SIZE_64BIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_block_bitmap(%struct.super_block* %0, %struct.ext4_group_desc* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.ext4_group_desc*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.ext4_group_desc* %1, %struct.ext4_group_desc** %4, align 8
  %5 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %4, align 8
  %6 = getelementptr inbounds %struct.ext4_group_desc, %struct.ext4_group_desc* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @le32_to_cpu(i32 %7)
  %9 = load %struct.super_block*, %struct.super_block** %3, align 8
  %10 = call i64 @EXT4_DESC_SIZE(%struct.super_block* %9)
  %11 = load i64, i64* @EXT4_MIN_DESC_SIZE_64BIT, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %4, align 8
  %15 = getelementptr inbounds %struct.ext4_group_desc, %struct.ext4_group_desc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le32_to_cpu(i32 %16)
  %18 = shl i32 %17, 32
  br label %20

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %19, %13
  %21 = phi i32 [ %18, %13 ], [ 0, %19 ]
  %22 = or i32 %8, %21
  ret i32 %22
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @EXT4_DESC_SIZE(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

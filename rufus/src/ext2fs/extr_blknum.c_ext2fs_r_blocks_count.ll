; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_blknum.c_ext2fs_r_blocks_count.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_blknum.c_ext2fs_r_blocks_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2_super_block = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_r_blocks_count(%struct.ext2_super_block* %0) #0 {
  %2 = alloca %struct.ext2_super_block*, align 8
  store %struct.ext2_super_block* %0, %struct.ext2_super_block** %2, align 8
  %3 = load %struct.ext2_super_block*, %struct.ext2_super_block** %2, align 8
  %4 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.ext2_super_block*, %struct.ext2_super_block** %2, align 8
  %7 = call i64 @ext2fs_has_feature_64bit(%struct.ext2_super_block* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.ext2_super_block*, %struct.ext2_super_block** %2, align 8
  %11 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = shl i32 %13, 32
  br label %16

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %15, %9
  %17 = phi i32 [ %14, %9 ], [ 0, %15 ]
  %18 = or i32 %5, %17
  ret i32 %18
}

declare dso_local i64 @ext2fs_has_feature_64bit(%struct.ext2_super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

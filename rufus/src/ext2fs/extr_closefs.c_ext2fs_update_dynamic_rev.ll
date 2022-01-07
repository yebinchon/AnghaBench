; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_closefs.c_ext2fs_update_dynamic_rev.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_closefs.c_ext2fs_update_dynamic_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.ext2_super_block* }
%struct.ext2_super_block = type { i64, i32, i32 }

@EXT2_GOOD_OLD_REV = common dso_local global i64 0, align 8
@EXT2_DYNAMIC_REV = common dso_local global i64 0, align 8
@EXT2_GOOD_OLD_FIRST_INO = common dso_local global i32 0, align 4
@EXT2_GOOD_OLD_INODE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext2fs_update_dynamic_rev(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.ext2_super_block*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load %struct.ext2_super_block*, %struct.ext2_super_block** %5, align 8
  store %struct.ext2_super_block* %6, %struct.ext2_super_block** %3, align 8
  %7 = load %struct.ext2_super_block*, %struct.ext2_super_block** %3, align 8
  %8 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @EXT2_GOOD_OLD_REV, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %23

13:                                               ; preds = %1
  %14 = load i64, i64* @EXT2_DYNAMIC_REV, align 8
  %15 = load %struct.ext2_super_block*, %struct.ext2_super_block** %3, align 8
  %16 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load i32, i32* @EXT2_GOOD_OLD_FIRST_INO, align 4
  %18 = load %struct.ext2_super_block*, %struct.ext2_super_block** %3, align 8
  %19 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @EXT2_GOOD_OLD_INODE_SIZE, align 4
  %21 = load %struct.ext2_super_block*, %struct.ext2_super_block** %3, align 8
  %22 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  br label %23

23:                                               ; preds = %13, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

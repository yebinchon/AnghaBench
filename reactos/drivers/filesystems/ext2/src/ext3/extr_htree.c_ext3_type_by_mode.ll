; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_htree.c_ext3_type_by_mode.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_htree.c_ext3_type_by_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_IFMT = common dso_local global i32 0, align 4
@EXT3_FT_REG_FILE = common dso_local global i8 0, align 1
@EXT3_FT_DIR = common dso_local global i8 0, align 1
@EXT3_FT_CHRDEV = common dso_local global i8 0, align 1
@EXT3_FT_BLKDEV = common dso_local global i8 0, align 1
@EXT3_FT_FIFO = common dso_local global i8 0, align 1
@EXT3_FT_SOCK = common dso_local global i8 0, align 1
@EXT3_FT_SYMLINK = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @ext3_type_by_mode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  store i8 0, i8* %3, align 1
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @S_IFMT, align 4
  %6 = and i32 %4, %5
  switch i32 %6, label %21 [
    i32 129, label %7
    i32 132, label %9
    i32 133, label %11
    i32 134, label %13
    i32 131, label %15
    i32 128, label %17
    i32 130, label %19
  ]

7:                                                ; preds = %1
  %8 = load i8, i8* @EXT3_FT_REG_FILE, align 1
  store i8 %8, i8* %3, align 1
  br label %21

9:                                                ; preds = %1
  %10 = load i8, i8* @EXT3_FT_DIR, align 1
  store i8 %10, i8* %3, align 1
  br label %21

11:                                               ; preds = %1
  %12 = load i8, i8* @EXT3_FT_CHRDEV, align 1
  store i8 %12, i8* %3, align 1
  br label %21

13:                                               ; preds = %1
  %14 = load i8, i8* @EXT3_FT_BLKDEV, align 1
  store i8 %14, i8* %3, align 1
  br label %21

15:                                               ; preds = %1
  %16 = load i8, i8* @EXT3_FT_FIFO, align 1
  store i8 %16, i8* %3, align 1
  br label %21

17:                                               ; preds = %1
  %18 = load i8, i8* @EXT3_FT_SOCK, align 1
  store i8 %18, i8* %3, align 1
  br label %21

19:                                               ; preds = %1
  %20 = load i8, i8* @EXT3_FT_SYMLINK, align 1
  store i8 %20, i8* %3, align 1
  br label %21

21:                                               ; preds = %19, %1, %17, %15, %13, %11, %9, %7
  %22 = load i8, i8* %3, align 1
  ret i8 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

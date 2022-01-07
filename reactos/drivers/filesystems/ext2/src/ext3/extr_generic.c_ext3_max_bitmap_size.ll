; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_generic.c_ext3_max_bitmap_size.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_generic.c_ext3_max_bitmap_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXT3_NDIR_BLOCKS = common dso_local global i32 0, align 4
@MAX_LFS_FILESIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext3_max_bitmap_size(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @EXT3_NDIR_BLOCKS, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  store i32 undef, i32* %7, align 4
  %12 = load i32, i32* %3, align 4
  %13 = sub nsw i32 %12, 9
  %14 = load i32, i32* %7, align 4
  %15 = ashr i32 %14, %13
  store i32 %15, i32* %7, align 4
  br label %17

16:                                               ; preds = %2
  store i32 undef, i32* %7, align 4
  br label %17

17:                                               ; preds = %16, %11
  store i32 1, i32* %6, align 4
  %18 = load i32, i32* %3, align 4
  %19 = sub nsw i32 %18, 2
  %20 = shl i32 1, %19
  %21 = add nsw i32 1, %20
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %3, align 4
  %25 = sub nsw i32 %24, 2
  %26 = shl i32 1, %25
  %27 = add nsw i32 1, %26
  %28 = load i32, i32* %3, align 4
  %29 = sub nsw i32 %28, 2
  %30 = mul nsw i32 2, %29
  %31 = shl i32 1, %30
  %32 = add nsw i32 %27, %31
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %7, align 4
  %40 = shl i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %3, align 4
  %42 = sub nsw i32 %41, 2
  %43 = shl i32 1, %42
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %3, align 4
  %47 = sub nsw i32 %46, 2
  %48 = mul nsw i32 2, %47
  %49 = shl i32 1, %48
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %3, align 4
  %53 = sub nsw i32 %52, 2
  %54 = mul nsw i32 3, %53
  %55 = shl i32 1, %54
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* %5, align 4
  %60 = shl i32 %59, %58
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %17
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %64, %17
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @MAX_LFS_FILESIZE, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* @MAX_LFS_FILESIZE, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %70, %66
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_gen_bitmap.c_ext2fs_find_first_set_generic_bitmap.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_gen_bitmap.c_ext2fs_find_first_set_generic_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32 }

@EXT2FS_TEST_ERROR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_find_first_set_generic_bitmap(i32 %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %10, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %30, label %20

20:                                               ; preds = %4
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %21, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26, %20, %4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @EXT2FS_TEST_ERROR, align 4
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @ext2fs_warn_bitmap2(i32 %31, i32 %32, i64 %33)
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %5, align 4
  br label %61

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %56, %36
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp sle i64 %38, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %42, %45
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @ext2fs_test_bit(i64 %46, i32 %49)
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %11, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %41
  %54 = load i64, i64* %7, align 8
  %55 = load i64*, i64** %9, align 8
  store i64 %54, i64* %55, align 8
  store i32 0, i32* %5, align 4
  br label %61

56:                                               ; preds = %41
  %57 = load i64, i64* %7, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %7, align 8
  br label %37

59:                                               ; preds = %37
  %60 = load i32, i32* @ENOENT, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %59, %53, %30
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @ext2fs_warn_bitmap2(i32, i32, i64) #1

declare dso_local i64 @ext2fs_test_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_gen_bitmap64.c_ext2fs_test_generic_bmap.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_gen_bitmap64.c_ext2fs_test_generic_bmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_10__*, i32)* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@EXT2FS_TEST_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_test_generic_bmap(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = inttoptr i64 %8 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %6, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %11 = icmp ne %struct.TYPE_10__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

13:                                               ; preds = %2
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %15 = call i64 @EXT2FS_IS_32_BITMAP(%struct.TYPE_10__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = and i64 %19, -4294967296
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @EXT2FS_TEST_ERROR, align 4
  %25 = call i32 @ext2fs_warn_bitmap2(i32 %23, i32 %24, i32 -1)
  store i32 0, i32* %3, align 4
  br label %66

26:                                               ; preds = %17
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @ext2fs_test_generic_bitmap(i32 %27, i32 %28)
  store i32 %29, i32* %3, align 4
  br label %66

30:                                               ; preds = %13
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = call i32 @EXT2FS_IS_64_BITMAP(%struct.TYPE_10__* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %66

35:                                               ; preds = %30
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = ashr i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %35
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp sgt i32 %47, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %46, %35
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %54 = load i32, i32* @EXT2FS_TEST_ERROR, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @warn_bitmap(%struct.TYPE_10__* %53, i32 %54, i32 %55)
  store i32 0, i32* %3, align 4
  br label %66

57:                                               ; preds = %46
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %61, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 %62(%struct.TYPE_10__* %63, i32 %64)
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %57, %52, %34, %26, %22, %12
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @EXT2FS_IS_32_BITMAP(%struct.TYPE_10__*) #1

declare dso_local i32 @ext2fs_warn_bitmap2(i32, i32, i32) #1

declare dso_local i32 @ext2fs_test_generic_bitmap(i32, i32) #1

declare dso_local i32 @EXT2FS_IS_64_BITMAP(%struct.TYPE_10__*) #1

declare dso_local i32 @warn_bitmap(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

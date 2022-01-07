; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_gen_bitmap64.c_ext2fs_unmark_generic_bmap.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_gen_bitmap64.c_ext2fs_unmark_generic_bmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*, i32)* }

@EXT2FS_UNMARK_ERROR = common dso_local global i32 0, align 4
@unmark_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_unmark_generic_bmap(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = inttoptr i64 %8 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %6, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %11 = icmp ne %struct.TYPE_9__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %69

13:                                               ; preds = %2
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = call i64 @EXT2FS_IS_32_BITMAP(%struct.TYPE_9__* %14)
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
  %24 = load i32, i32* @EXT2FS_UNMARK_ERROR, align 4
  %25 = call i32 @ext2fs_warn_bitmap2(i32 %23, i32 %24, i32 -1)
  store i32 0, i32* %3, align 4
  br label %69

26:                                               ; preds = %17
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @ext2fs_unmark_generic_bitmap(i32 %27, i32 %28)
  store i32 %29, i32* %3, align 4
  br label %69

30:                                               ; preds = %13
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = call i32 @EXT2FS_IS_64_BITMAP(%struct.TYPE_9__* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %69

35:                                               ; preds = %30
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = ashr i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %42 = load i32, i32* @unmark_count, align 4
  %43 = call i32 @INC_STAT(%struct.TYPE_9__* %41, i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %35
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp sgt i32 %50, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %49, %35
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %57 = load i32, i32* @EXT2FS_UNMARK_ERROR, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @warn_bitmap(%struct.TYPE_9__* %56, i32 %57, i32 %58)
  store i32 0, i32* %3, align 4
  br label %69

60:                                               ; preds = %49
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %64, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 %65(%struct.TYPE_9__* %66, i32 %67)
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %60, %55, %34, %26, %22, %12
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @EXT2FS_IS_32_BITMAP(%struct.TYPE_9__*) #1

declare dso_local i32 @ext2fs_warn_bitmap2(i32, i32, i32) #1

declare dso_local i32 @ext2fs_unmark_generic_bitmap(i32, i32) #1

declare dso_local i32 @EXT2FS_IS_64_BITMAP(%struct.TYPE_9__*) #1

declare dso_local i32 @INC_STAT(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @warn_bitmap(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

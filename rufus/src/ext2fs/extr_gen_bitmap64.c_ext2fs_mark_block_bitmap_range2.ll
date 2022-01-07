; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_gen_bitmap64.c_ext2fs_mark_block_bitmap_range2.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_gen_bitmap64.c_ext2fs_mark_block_bitmap_range2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*, i32, i32)* }

@EXT2FS_UNMARK_ERROR = common dso_local global i32 0, align 4
@mark_ext_count = common dso_local global i32 0, align 4
@EXT2_ET_BAD_BLOCK_MARK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext2fs_mark_block_bitmap_range2(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = inttoptr i64 %10 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = add i32 %12, %13
  store i32 %14, i32* %8, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %16 = icmp ne %struct.TYPE_8__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %112

18:                                               ; preds = %3
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %20 = call i64 @EXT2FS_IS_32_BITMAP(%struct.TYPE_8__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = and i64 %24, -4294967296
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = add i32 %28, %29
  %31 = sub i32 %30, 1
  %32 = zext i32 %31 to i64
  %33 = and i64 %32, -4294967296
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %27, %22
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %37 = ptrtoint %struct.TYPE_8__* %36 to i32
  %38 = load i32, i32* @EXT2FS_UNMARK_ERROR, align 4
  %39 = call i32 @ext2fs_warn_bitmap2(i32 %37, i32 %38, i32 -1)
  br label %112

40:                                               ; preds = %27
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %42 = ptrtoint %struct.TYPE_8__* %41 to i32
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @ext2fs_mark_block_bitmap_range(i32 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %40, %18
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %48 = call i32 @EXT2FS_IS_64_BITMAP(%struct.TYPE_8__* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  br label %112

51:                                               ; preds = %46
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %53 = load i32, i32* @mark_ext_count, align 4
  %54 = call i32 @INC_STAT(%struct.TYPE_8__* %52, i32 %53)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = lshr i32 %58, %57
  store i32 %59, i32* %5, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = shl i32 1, %62
  %64 = sub nsw i32 %63, 1
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %8, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = ashr i32 %70, %69
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %5, align 4
  %74 = sub i32 %72, %73
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ult i32 %75, %78
  br i1 %79, label %95, label %80

80:                                               ; preds = %51
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = icmp ugt i32 %81, %84
  br i1 %85, label %95, label %86

86:                                               ; preds = %80
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* %6, align 4
  %89 = add i32 %87, %88
  %90 = sub i32 %89, 1
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp ugt i32 %90, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %86, %80, %51
  %96 = load i32, i32* @EXT2_ET_BAD_BLOCK_MARK, align 4
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @ext2fs_warn_bitmap(i32 %96, i32 %97, i32 %100)
  br label %112

102:                                              ; preds = %86
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 3
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32 (%struct.TYPE_8__*, i32, i32)*, i32 (%struct.TYPE_8__*, i32, i32)** %106, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* %6, align 4
  %111 = call i32 %107(%struct.TYPE_8__* %108, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %102, %95, %50, %35, %17
  ret void
}

declare dso_local i64 @EXT2FS_IS_32_BITMAP(%struct.TYPE_8__*) #1

declare dso_local i32 @ext2fs_warn_bitmap2(i32, i32, i32) #1

declare dso_local i32 @ext2fs_mark_block_bitmap_range(i32, i32, i32) #1

declare dso_local i32 @EXT2FS_IS_64_BITMAP(%struct.TYPE_8__*) #1

declare dso_local i32 @INC_STAT(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ext2fs_warn_bitmap(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_gen_bitmap64.c_ext2fs_test_block_bitmap_range2.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_gen_bitmap64.c_ext2fs_test_block_bitmap_range2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*, i32, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@EXT2FS_UNMARK_ERROR = common dso_local global i32 0, align 4
@test_ext_count = common dso_local global i32 0, align 4
@EXT2_ET_BAD_BLOCK_TEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_test_block_bitmap_range2(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = add i32 %13, %14
  store i32 %15, i32* %9, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %17 = icmp ne %struct.TYPE_8__* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %4, align 4
  br label %128

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %25 = ptrtoint %struct.TYPE_8__* %24 to i32
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @ext2fs_test_generic_bmap(i32 %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %4, align 4
  br label %128

31:                                               ; preds = %20
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %33 = call i64 @EXT2FS_IS_32_BITMAP(%struct.TYPE_8__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = and i64 %37, -4294967296
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = add i32 %41, %42
  %44 = sub i32 %43, 1
  %45 = zext i32 %44 to i64
  %46 = and i64 %45, -4294967296
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %40, %35
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %50 = ptrtoint %struct.TYPE_8__* %49 to i32
  %51 = load i32, i32* @EXT2FS_UNMARK_ERROR, align 4
  %52 = call i32 @ext2fs_warn_bitmap2(i32 %50, i32 %51, i32 -1)
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* %4, align 4
  br label %128

54:                                               ; preds = %40
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %56 = ptrtoint %struct.TYPE_8__* %55 to i32
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @ext2fs_test_block_bitmap_range(i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %4, align 4
  br label %128

60:                                               ; preds = %31
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %62 = call i32 @EXT2FS_IS_64_BITMAP(%struct.TYPE_8__* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* %4, align 4
  br label %128

66:                                               ; preds = %60
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %68 = load i32, i32* @test_ext_count, align 4
  %69 = call i32 @INC_STAT(%struct.TYPE_8__* %67, i32 %68)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = lshr i32 %73, %72
  store i32 %74, i32* %6, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = shl i32 1, %77
  %79 = sub nsw i32 %78, 1
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %9, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = ashr i32 %85, %84
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %6, align 4
  %89 = sub i32 %87, %88
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp ult i32 %90, %93
  br i1 %94, label %110, label %95

95:                                               ; preds = %66
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = icmp ugt i32 %96, %99
  br i1 %100, label %110, label %101

101:                                              ; preds = %95
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %7, align 4
  %104 = add i32 %102, %103
  %105 = sub i32 %104, 1
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp ugt i32 %105, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %101, %95, %66
  %111 = load i32, i32* @EXT2_ET_BAD_BLOCK_TEST, align 4
  %112 = load i32, i32* %6, align 4
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @ext2fs_warn_bitmap(i32 %111, i32 %112, i32 %115)
  %117 = load i32, i32* @EINVAL, align 4
  store i32 %117, i32* %4, align 4
  br label %128

118:                                              ; preds = %101
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32 (%struct.TYPE_8__*, i32, i32)*, i32 (%struct.TYPE_8__*, i32, i32)** %122, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* %7, align 4
  %127 = call i32 %123(%struct.TYPE_8__* %124, i32 %125, i32 %126)
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %118, %110, %64, %54, %48, %23, %18
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i32 @ext2fs_test_generic_bmap(i32, i32) #1

declare dso_local i64 @EXT2FS_IS_32_BITMAP(%struct.TYPE_8__*) #1

declare dso_local i32 @ext2fs_warn_bitmap2(i32, i32, i32) #1

declare dso_local i32 @ext2fs_test_block_bitmap_range(i32, i32, i32) #1

declare dso_local i32 @EXT2FS_IS_64_BITMAP(%struct.TYPE_8__*) #1

declare dso_local i32 @INC_STAT(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ext2fs_warn_bitmap(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

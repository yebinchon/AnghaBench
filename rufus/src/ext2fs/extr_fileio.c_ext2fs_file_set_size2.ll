; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_fileio.c_ext2fs_file_set_size2.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_fileio.c_ext2fs_file_set_size2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }

@EXT2_ET_MAGIC_EXT2_FILE = common dso_local global i32 0, align 4
@EXT2_ET_FILE_TOO_BIG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_file_set_size2(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = load i32, i32* @EXT2_ET_MAGIC_EXT2_FILE, align 4
  %12 = call i32 @EXT2_CHECK_MAGIC(%struct.TYPE_9__* %10, i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %2
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %5, align 4
  %22 = sub nsw i32 %21, 1
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %22, %27
  %29 = call i64 @ext2fs_file_block_offset_too_big(%struct.TYPE_10__* %18, i32* %20, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %15
  %32 = load i64, i64* @EXT2_ET_FILE_TOO_BIG, align 8
  store i64 %32, i64* %3, align 8
  br label %122

33:                                               ; preds = %15, %2
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %34, %39
  %41 = sub nsw i32 %40, 1
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @EXT2_BLOCK_SIZE_BITS(i32 %46)
  %48 = ashr i32 %41, %47
  store i32 %48, i32* %9, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = call i32 @EXT2_I_SIZE(i32* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %52, %57
  %59 = sub nsw i32 %58, 1
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @EXT2_BLOCK_SIZE_BITS(i32 %64)
  %66 = ashr i32 %59, %65
  store i32 %66, i32* %8, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %5, align 4
  %73 = call i64 @ext2fs_inode_size_set(%struct.TYPE_10__* %69, i32* %71, i32 %72)
  store i64 %73, i64* %7, align 8
  %74 = load i64, i64* %7, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %33
  %77 = load i64, i64* %7, align 8
  store i64 %77, i64* %3, align 8
  br label %122

78:                                               ; preds = %33
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %78
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = call i64 @ext2fs_write_inode(%struct.TYPE_10__* %86, i64 %89, i32* %91)
  store i64 %92, i64* %7, align 8
  %93 = load i64, i64* %7, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %83
  %96 = load i64, i64* %7, align 8
  store i64 %96, i64* %3, align 8
  br label %122

97:                                               ; preds = %83
  br label %98

98:                                               ; preds = %97, %78
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %100 = load i32, i32* %5, align 4
  %101 = call i64 @ext2fs_file_zero_past_offset(%struct.TYPE_9__* %99, i32 %100)
  store i64 %101, i64* %7, align 8
  %102 = load i64, i64* %7, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = load i64, i64* %7, align 8
  store i64 %105, i64* %3, align 8
  br label %122

106:                                              ; preds = %98
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp sge i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store i64 0, i64* %3, align 8
  br label %122

111:                                              ; preds = %106
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i32, i32* %9, align 4
  %121 = call i64 @ext2fs_punch(%struct.TYPE_10__* %114, i64 %117, i32* %119, i32 0, i32 %120, i64 -1)
  store i64 %121, i64* %3, align 8
  br label %122

122:                                              ; preds = %111, %110, %104, %95, %76, %31
  %123 = load i64, i64* %3, align 8
  ret i64 %123
}

declare dso_local i32 @EXT2_CHECK_MAGIC(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @ext2fs_file_block_offset_too_big(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @EXT2_BLOCK_SIZE_BITS(i32) #1

declare dso_local i32 @EXT2_I_SIZE(i32*) #1

declare dso_local i64 @ext2fs_inode_size_set(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i64 @ext2fs_write_inode(%struct.TYPE_10__*, i64, i32*) #1

declare dso_local i64 @ext2fs_file_zero_past_offset(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @ext2fs_punch(%struct.TYPE_10__*, i64, i32*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

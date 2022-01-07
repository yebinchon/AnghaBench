; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_closefs.c_write_primary_superblock.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_closefs.c_write_primary_superblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.ext2_super_block = type { i32 }

@SUPERBLOCK_OFFSET = common dso_local global i64 0, align 8
@SUPERBLOCK_SIZE = common dso_local global i32 0, align 4
@EXT2_ET_UNIMPLEMENTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, %struct.ext2_super_block*)* @write_primary_superblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @write_primary_superblock(%struct.TYPE_8__* %0, %struct.ext2_super_block* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.ext2_super_block*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.ext2_super_block* %1, %struct.ext2_super_block** %5, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %47, label %25

25:                                               ; preds = %20, %2
  br label %26

26:                                               ; preds = %120, %25
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = load i64, i64* @SUPERBLOCK_OFFSET, align 8
  %31 = call i32 @io_channel_set_blksize(%struct.TYPE_9__* %29, i64 %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = load i32, i32* @SUPERBLOCK_SIZE, align 4
  %36 = sub nsw i32 0, %35
  %37 = load %struct.ext2_super_block*, %struct.ext2_super_block** %5, align 8
  %38 = call i64 @io_channel_write_blk64(%struct.TYPE_9__* %34, i32 1, i32 %36, %struct.ext2_super_block* %37)
  store i64 %38, i64* %11, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @io_channel_set_blksize(%struct.TYPE_9__* %41, i64 %44)
  %46 = load i64, i64* %11, align 8
  store i64 %46, i64* %3, align 8
  br label %137

47:                                               ; preds = %20
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i64*
  store i64* %51, i64** %6, align 8
  %52 = load %struct.ext2_super_block*, %struct.ext2_super_block** %5, align 8
  %53 = bitcast %struct.ext2_super_block* %52 to i64*
  store i64* %53, i64** %7, align 8
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %127, %47
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @SUPERBLOCK_SIZE, align 4
  %57 = sdiv i32 %56, 2
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %130

59:                                               ; preds = %54
  %60 = load i64*, i64** %6, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load i64*, i64** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %64, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %59
  br label %127

72:                                               ; preds = %59
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %95, %72
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @SUPERBLOCK_SIZE, align 4
  %79 = sdiv i32 %78, 2
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %81, label %98

81:                                               ; preds = %76
  %82 = load i64*, i64** %6, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = load i64*, i64** %7, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %86, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %81
  br label %98

94:                                               ; preds = %81
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %76

98:                                               ; preds = %93, %76
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %9, align 4
  %101 = sub nsw i32 %99, %100
  %102 = mul nsw i32 2, %101
  store i32 %102, i32* %10, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = load i64, i64* @SUPERBLOCK_OFFSET, align 8
  %107 = load i32, i32* %9, align 4
  %108 = mul nsw i32 2, %107
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %106, %109
  %111 = load i32, i32* %10, align 4
  %112 = load i64*, i64** %7, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  %116 = call i64 @io_channel_write_byte(%struct.TYPE_9__* %105, i64 %110, i32 %111, i64* %115)
  store i64 %116, i64* %11, align 8
  %117 = load i64, i64* %11, align 8
  %118 = load i64, i64* @EXT2_ET_UNIMPLEMENTED, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %98
  br label %26

121:                                              ; preds = %98
  %122 = load i64, i64* %11, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = load i64, i64* %11, align 8
  store i64 %125, i64* %3, align 8
  br label %137

126:                                              ; preds = %121
  br label %127

127:                                              ; preds = %126, %71
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %8, align 4
  br label %54

130:                                              ; preds = %54
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.ext2_super_block*, %struct.ext2_super_block** %5, align 8
  %135 = load i32, i32* @SUPERBLOCK_SIZE, align 4
  %136 = call i32 @memcpy(i64 %133, %struct.ext2_super_block* %134, i32 %135)
  store i64 0, i64* %3, align 8
  br label %137

137:                                              ; preds = %130, %124, %26
  %138 = load i64, i64* %3, align 8
  ret i64 %138
}

declare dso_local i32 @io_channel_set_blksize(%struct.TYPE_9__*, i64) #1

declare dso_local i64 @io_channel_write_blk64(%struct.TYPE_9__*, i32, i32, %struct.ext2_super_block*) #1

declare dso_local i64 @io_channel_write_byte(%struct.TYPE_9__*, i64, i32, i64*) #1

declare dso_local i32 @memcpy(i64, %struct.ext2_super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

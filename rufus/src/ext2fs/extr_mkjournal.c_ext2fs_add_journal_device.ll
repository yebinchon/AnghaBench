; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_mkjournal.c_ext2fs_add_journal_device.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_mkjournal.c_ext2fs_add_journal_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__*, i32, i64, i32 }
%struct.TYPE_11__ = type { i32, i32*, i32, i64, i32 }
%struct.stat = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32*, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@SUPERBLOCK_SIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EXT2_ET_JOURNAL_NOT_BLOCK = common dso_local global i32 0, align 4
@JFS_MAGIC_NUMBER = common dso_local global i32 0, align 4
@JFS_SUPERBLOCK_V2 = common dso_local global i32 0, align 4
@EXT2_ET_NO_JOURNAL_SB = common dso_local global i32 0, align 4
@EXT2_ET_UNEXPECTED_BLOCK_SIZE = common dso_local global i32 0, align 4
@JFS_USERS_MAX = common dso_local global i32 0, align 4
@EXT2_ET_CORRUPT_JOURNAL_SB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_add_journal_device(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %15 = load i32, i32* @SUPERBLOCK_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @stat(i32 %21, %struct.stat* %6)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @errno, align 4
  store i32 %25, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %182

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @S_ISBLK(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @EXT2_ET_JOURNAL_NOT_BLOCK, align 4
  store i32 %32, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %182

33:                                               ; preds = %26
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @ext2fs_journal_sb_start(i64 %36)
  store i32 %37, i32* %11, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @SUPERBLOCK_SIZE, align 4
  %43 = sub nsw i32 0, %42
  %44 = call i32 @io_channel_read_blk64(i32 %40, i32 %41, i32 %43, i8* %18)
  store i32 %44, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %33
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %182

48:                                               ; preds = %33
  %49 = bitcast i8* %18 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %10, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @JFS_MAGIC_NUMBER, align 4
  %55 = call i64 @ntohl(i32 %54)
  %56 = trunc i64 %55 to i32
  %57 = icmp ne i32 %53, %56
  br i1 %57, label %67, label %58

58:                                               ; preds = %48
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @JFS_SUPERBLOCK_V2, align 4
  %64 = call i64 @ntohl(i32 %63)
  %65 = trunc i64 %64 to i32
  %66 = icmp ne i32 %62, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %58, %48
  %68 = load i32, i32* @EXT2_ET_NO_JOURNAL_SB, align 4
  store i32 %68, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %182

69:                                               ; preds = %58
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @ntohl(i32 %72)
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %73, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = load i32, i32* @EXT2_ET_UNEXPECTED_BLOCK_SIZE, align 4
  store i32 %79, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %182

80:                                               ; preds = %69
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @ntohl(i32 %83)
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @JFS_USERS_MAX, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %80
  %90 = load i32, i32* @EXT2_ET_CORRUPT_JOURNAL_SB, align 4
  store i32 %90, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %182

91:                                               ; preds = %80
  store i32 0, i32* %12, align 4
  br label %92

92:                                               ; preds = %113, %91
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %116

96:                                               ; preds = %92
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %12, align 4
  %106 = mul nsw i32 %105, 16
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  %109 = call i64 @memcmp(i32 %101, i32* %108, i32 16)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %96
  br label %116

112:                                              ; preds = %96
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %12, align 4
  br label %92

116:                                              ; preds = %111, %92
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %13, align 4
  %119 = icmp sge i32 %117, %118
  br i1 %119, label %120, label %139

120:                                              ; preds = %116
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %13, align 4
  %125 = mul nsw i32 %124, 16
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %123, i64 %126
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @memcpy(i32* %127, i32 %132, i32 16)
  %134 = load i32, i32* %13, align 4
  %135 = add nsw i32 %134, 1
  %136 = call i32 @htonl(i32 %135)
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  br label %139

139:                                              ; preds = %120, %116
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* @SUPERBLOCK_SIZE, align 4
  %145 = sub nsw i32 0, %144
  %146 = call i32 @io_channel_write_blk64(i32 %142, i32 %143, i32 %145, i8* %18)
  store i32 %146, i32* %7, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %139
  %149 = load i32, i32* %7, align 4
  store i32 %149, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %182

150:                                              ; preds = %139
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 3
  store i64 0, i64* %154, align 8
  %155 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 2
  store i32 %156, i32* %160, align 8
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @memcpy(i32* %165, i32 %168, i32 8)
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @memset(i32 %174, i32 0, i32 4)
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %177, align 8
  %179 = call i32 @ext2fs_set_feature_journal(%struct.TYPE_11__* %178)
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %181 = call i32 @ext2fs_mark_super_dirty(%struct.TYPE_10__* %180)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %182

182:                                              ; preds = %150, %148, %89, %78, %67, %46, %31, %24
  %183 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %183)
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @stat(i32, %struct.stat*) #2

declare dso_local i32 @S_ISBLK(i32) #2

declare dso_local i32 @ext2fs_journal_sb_start(i64) #2

declare dso_local i32 @io_channel_read_blk64(i32, i32, i32, i8*) #2

declare dso_local i64 @ntohl(i32) #2

declare dso_local i64 @memcmp(i32, i32*, i32) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i32 @htonl(i32) #2

declare dso_local i32 @io_channel_write_blk64(i32, i32, i32, i8*) #2

declare dso_local i32 @memset(i32, i32, i32) #2

declare dso_local i32 @ext2fs_set_feature_journal(%struct.TYPE_11__*) #2

declare dso_local i32 @ext2fs_mark_super_dirty(%struct.TYPE_10__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

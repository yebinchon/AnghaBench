; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_mkjournal.c_ext2fs_create_journal_superblock.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_mkjournal.c_ext2fs_create_journal_superblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i8*, i8*, i32, i8*, i8*, i8*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i8* }

@JFS_MIN_JOURNAL_BLOCKS = common dso_local global i64 0, align 8
@EXT2_ET_JOURNAL_TOO_SMALL = common dso_local global i32 0, align 4
@JFS_MAGIC_NUMBER = common dso_local global i32 0, align 4
@EXT2_MKJOURNAL_V1_SUPER = common dso_local global i32 0, align 4
@JFS_SUPERBLOCK_V1 = common dso_local global i32 0, align 4
@JFS_SUPERBLOCK_V2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_create_journal_superblock(%struct.TYPE_10__* %0, i64 %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @JFS_MIN_JOURNAL_BLOCKS, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @EXT2_ET_JOURNAL_TOO_SMALL, align 4
  store i32 %16, i32* %5, align 4
  br label %102

17:                                               ; preds = %4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ext2fs_get_mem(i32 %20, %struct.TYPE_9__** %11)
  store i32 %21, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %5, align 4
  br label %102

25:                                               ; preds = %17
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @memset(%struct.TYPE_9__* %26, i32 0, i32 %29)
  %31 = load i32, i32* @JFS_MAGIC_NUMBER, align 4
  %32 = call i8* @htonl(i32 %31)
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  store i8* %32, i8** %35, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @EXT2_MKJOURNAL_V1_SUPER, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %25
  %41 = load i32, i32* @JFS_SUPERBLOCK_V1, align 4
  %42 = call i8* @htonl(i32 %41)
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 6
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  store i8* %42, i8** %45, align 8
  br label %52

46:                                               ; preds = %25
  %47 = load i32, i32* @JFS_SUPERBLOCK_V2, align 4
  %48 = call i8* @htonl(i32 %47)
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 6
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i8* %48, i8** %51, align 8
  br label %52

52:                                               ; preds = %46, %40
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i8* @htonl(i32 %55)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 5
  store i8* %56, i8** %58, align 8
  %59 = load i64, i64* %7, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i8* @htonl(i32 %60)
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 4
  store i8* %61, i8** %63, align 8
  %64 = call i8* @htonl(i32 1)
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = call i8* @htonl(i32 1)
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = call i8* @htonl(i32 1)
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @memcpy(i32 %75, i32 %80, i32 4)
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = call i64 @ext2fs_has_feature_journal_dev(%struct.TYPE_11__* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %52
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  store i8* null, i8** %89, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @ext2fs_journal_sb_start(i32 %92)
  %94 = add nsw i32 %93, 1
  %95 = call i8* @htonl(i32 %94)
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  store i8* %95, i8** %97, align 8
  br label %98

98:                                               ; preds = %87, %52
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %100 = bitcast %struct.TYPE_9__* %99 to i8*
  %101 = load i8**, i8*** %9, align 8
  store i8* %100, i8** %101, align 8
  store i32 0, i32* %5, align 4
  br label %102

102:                                              ; preds = %98, %23, %15
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @ext2fs_get_mem(i32, %struct.TYPE_9__**) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @ext2fs_has_feature_journal_dev(%struct.TYPE_11__*) #1

declare dso_local i32 @ext2fs_journal_sb_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

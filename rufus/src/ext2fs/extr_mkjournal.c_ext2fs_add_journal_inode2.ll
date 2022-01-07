; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_mkjournal.c_ext2fs_add_journal_inode2.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_mkjournal.c_ext2fs_add_journal_inode2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, i64, i32, i32 }
%struct.stat = type { i32 }

@EXT2_MKJOURNAL_NO_MNT_CHECK = common dso_local global i32 0, align 4
@EXT2_MF_MOUNTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"/.journal\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EXT2_MKJOURNAL_LAZYINIT = common dso_local global i32 0, align 4
@EXT2_MF_BUSY = common dso_local global i32 0, align 4
@EXT2_FLAG_EXCLUSIVE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i64 0, align 8
@EXT2_JOURNAL_INO = common dso_local global i32 0, align 4
@EXT2_IMMUTABLE_FL = common dso_local global i32 0, align 4
@EXT2_IOC_GETFLAGS = common dso_local global i32 0, align 4
@EXT2_IOC_SETFLAGS = common dso_local global i32 0, align 4
@EXT2_NODUMP_FL = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@UF_IMMUTABLE = common dso_local global i32 0, align 4
@UF_NODUMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_add_journal_inode2(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.stat, align 4
  %13 = alloca [1024 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 -1, i32* %15, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @EXT2_MKJOURNAL_NO_MNT_CHECK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  br label %31

21:                                               ; preds = %4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %26 = call i64 @ext2fs_check_mount_point(i32 %24, i32* %14, i8* %25, i32 1014)
  store i64 %26, i64* %10, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i64, i64* %10, align 8
  store i64 %29, i64* %5, align 8
  br label %141

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30, %20
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* @EXT2_MF_MOUNTED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %85

36:                                               ; preds = %31
  %37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %38 = call i32 @strcat(i8* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %39 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %40 = load i32, i32* @O_CREAT, align 4
  %41 = load i32, i32* @O_WRONLY, align 4
  %42 = or i32 %40, %41
  %43 = call i32 (i8*, i32, ...) @open(i8* %39, i32 %42, i32 384)
  store i32 %43, i32* %15, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i64, i64* @errno, align 8
  store i64 %46, i64* %5, align 8
  br label %141

47:                                               ; preds = %36
  %48 = load i32, i32* @EXT2_MKJOURNAL_LAZYINIT, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %9, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %53 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i64 @write_journal_file(%struct.TYPE_7__* %52, i8* %53, i32 %54, i32 %55)
  store i64 %56, i64* %10, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %133

59:                                               ; preds = %47
  %60 = load i32, i32* %15, align 4
  %61 = call i64 @fstat(i32 %60, %struct.stat* %12)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i64, i64* @errno, align 8
  store i64 %64, i64* %10, align 8
  br label %133

65:                                               ; preds = %59
  %66 = load i64, i64* %10, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i64, i64* @errno, align 8
  store i64 %69, i64* %10, align 8
  br label %133

70:                                               ; preds = %65
  %71 = load i32, i32* %15, align 4
  %72 = call i64 @close(i32 %71)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i64, i64* @errno, align 8
  store i64 %75, i64* %10, align 8
  store i32 -1, i32* %15, align 4
  br label %133

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %11, align 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @memset(i32 %83, i32 0, i32 4)
  br label %111

85:                                               ; preds = %31
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* @EXT2_MF_BUSY, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %85
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @EXT2_FLAG_EXCLUSIVE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %90
  %98 = load i64, i64* @EBUSY, align 8
  store i64 %98, i64* %10, align 8
  br label %133

99:                                               ; preds = %90, %85
  %100 = load i32, i32* @EXT2_JOURNAL_INO, align 4
  store i32 %100, i32* %11, align 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %9, align 4
  %106 = call i64 @write_journal_inode(%struct.TYPE_7__* %101, i32 %102, i32 %103, i32 %104, i32 %105)
  store i64 %106, i64* %10, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %99
  %109 = load i64, i64* %10, align 8
  store i64 %109, i64* %5, align 8
  br label %141

110:                                              ; preds = %99
  br label %111

111:                                              ; preds = %110, %76
  %112 = load i32, i32* %11, align 4
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  store i32 %112, i32* %116, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  store i64 0, i64* %120, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @memset(i32 %125, i32 0, i32 4)
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = call i32 @ext2fs_set_feature_journal(%struct.TYPE_8__* %129)
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %132 = call i32 @ext2fs_mark_super_dirty(%struct.TYPE_7__* %131)
  store i64 0, i64* %5, align 8
  br label %141

133:                                              ; preds = %97, %74, %68, %63, %58
  %134 = load i32, i32* %15, align 4
  %135 = icmp sge i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load i32, i32* %15, align 4
  %138 = call i64 @close(i32 %137)
  br label %139

139:                                              ; preds = %136, %133
  %140 = load i64, i64* %10, align 8
  store i64 %140, i64* %5, align 8
  br label %141

141:                                              ; preds = %139, %111, %108, %45, %28
  %142 = load i64, i64* %5, align 8
  ret i64 %142
}

declare dso_local i64 @ext2fs_check_mount_point(i32, i32*, i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @open(i8*, i32, ...) #1

declare dso_local i64 @write_journal_file(%struct.TYPE_7__*, i8*, i32, i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @write_journal_inode(%struct.TYPE_7__*, i32, i32, i32, i32) #1

declare dso_local i32 @ext2fs_set_feature_journal(%struct.TYPE_8__*) #1

declare dso_local i32 @ext2fs_mark_super_dirty(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

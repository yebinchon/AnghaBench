; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_inode.c_block_map_looks_insane.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_inode.c_block_map_looks_insane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.ext2_inode_large = type { i32, i64, i64*, i32 }

@EXT4_INLINE_DATA_FL = common dso_local global i32 0, align 4
@EXT4_EXTENTS_FL = common dso_local global i32 0, align 4
@EXT2_N_BLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.ext2_inode_large*)* @block_map_looks_insane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @block_map_looks_insane(%struct.TYPE_4__* %0, %struct.ext2_inode_large* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.ext2_inode_large*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.ext2_inode_large* %1, %struct.ext2_inode_large** %5, align 8
  %8 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %5, align 8
  %9 = getelementptr inbounds %struct.ext2_inode_large, %struct.ext2_inode_large* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @EXT4_INLINE_DATA_FL, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %5, align 8
  %16 = getelementptr inbounds %struct.ext2_inode_large, %struct.ext2_inode_large* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @EXT4_EXTENTS_FL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14, %2
  store i32 0, i32* %3, align 4
  br label %113

22:                                               ; preds = %14
  %23 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %5, align 8
  %24 = getelementptr inbounds %struct.ext2_inode_large, %struct.ext2_inode_large* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @LINUX_S_ISREG(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %22
  %29 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %5, align 8
  %30 = getelementptr inbounds %struct.ext2_inode_large, %struct.ext2_inode_large* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @LINUX_S_ISLNK(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %28
  %35 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %5, align 8
  %36 = getelementptr inbounds %struct.ext2_inode_large, %struct.ext2_inode_large* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @LINUX_S_ISDIR(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %113

41:                                               ; preds = %34, %28, %22
  %42 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %5, align 8
  %43 = getelementptr inbounds %struct.ext2_inode_large, %struct.ext2_inode_large* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @LINUX_S_ISLNK(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %5, align 8
  %49 = call i32 @EXT2_I_SIZE(%struct.ext2_inode_large* %48)
  %50 = sext i32 %49 to i64
  %51 = icmp ule i64 %50, 8
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %113

53:                                               ; preds = %47, %41
  %54 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %5, align 8
  %55 = getelementptr inbounds %struct.ext2_inode_large, %struct.ext2_inode_large* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %113

59:                                               ; preds = %53
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %104, %59
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @EXT2_N_BLOCKS, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %107

64:                                               ; preds = %60
  %65 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %5, align 8
  %66 = getelementptr inbounds %struct.ext2_inode_large, %struct.ext2_inode_large* %65, i32 0, i32 2
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %103

73:                                               ; preds = %64
  %74 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %5, align 8
  %75 = getelementptr inbounds %struct.ext2_inode_large, %struct.ext2_inode_large* %74, i32 0, i32 2
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp slt i64 %80, %85
  br i1 %86, label %100, label %87

87:                                               ; preds = %73
  %88 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %5, align 8
  %89 = getelementptr inbounds %struct.ext2_inode_large, %struct.ext2_inode_large* %88, i32 0, i32 2
  %90 = load i64*, i64** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = call i64 @ext2fs_blocks_count(%struct.TYPE_5__* %97)
  %99 = icmp sge i64 %94, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %87, %73
  %101 = load i32, i32* %7, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %100, %87, %64
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %6, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %6, align 4
  br label %60

107:                                              ; preds = %60
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @EXT2_N_BLOCKS, align 4
  %110 = udiv i32 %109, 2
  %111 = icmp ugt i32 %108, %110
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %107, %58, %52, %40, %21
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @LINUX_S_ISREG(i32) #1

declare dso_local i64 @LINUX_S_ISLNK(i32) #1

declare dso_local i32 @LINUX_S_ISDIR(i32) #1

declare dso_local i32 @EXT2_I_SIZE(%struct.ext2_inode_large*) #1

declare dso_local i64 @ext2fs_blocks_count(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

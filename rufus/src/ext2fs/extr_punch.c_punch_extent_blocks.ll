; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_punch.c_punch_extent_blocks.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_punch.c_punch_extent_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2_inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, %struct.ext2_inode*, i32, i32, i32, i32*)* @punch_extent_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @punch_extent_blocks(i32 %0, i32 %1, %struct.ext2_inode* %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ext2_inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store %struct.ext2_inode* %2, %struct.ext2_inode** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %17, align 4
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @EXT2FS_CLUSTER_RATIO(i32 %20)
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %39

23:                                               ; preds = %7
  %24 = load i32, i32* %14, align 4
  %25 = load i32*, i32** %15, align 8
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, %24
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %32, %23
  %29 = load i32, i32* %14, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %14, align 4
  %31 = icmp sgt i32 %29, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %13, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %13, align 4
  %36 = call i32 @ext2fs_block_alloc_stats2(i32 %33, i32 %34, i32 -1)
  br label %28

37:                                               ; preds = %28
  %38 = load i64, i64* %19, align 8
  store i64 %38, i64* %8, align 8
  br label %143

39:                                               ; preds = %7
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @EXT2FS_CLUSTER_MASK(i32 %41)
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %86

45:                                               ; preds = %39
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.ext2_inode*, %struct.ext2_inode** %11, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i64 @ext2fs_map_cluster_block(i32 %46, i32 %47, %struct.ext2_inode* %48, i32 %49, i32* %16)
  store i64 %50, i64* %19, align 8
  %51 = load i64, i64* %19, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %137

54:                                               ; preds = %45
  %55 = load i32, i32* %16, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @ext2fs_block_alloc_stats2(i32 %58, i32 %59, i32 -1)
  %61 = load i32, i32* %17, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %17, align 4
  br label %63

63:                                               ; preds = %57, %54
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @EXT2FS_CLUSTER_RATIO(i32 %64)
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @EXT2FS_CLUSTER_MASK(i32 %67)
  %69 = and i32 %66, %68
  %70 = sub nsw i32 %65, %69
  store i32 %70, i32* %18, align 4
  %71 = load i32, i32* %18, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %63
  %75 = load i32, i32* %14, align 4
  store i32 %75, i32* %18, align 4
  br label %76

76:                                               ; preds = %74, %63
  %77 = load i32, i32* %18, align 4
  %78 = load i32, i32* %14, align 4
  %79 = sub nsw i32 %78, %77
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %18, align 4
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %12, align 4
  br label %86

86:                                               ; preds = %76, %39
  br label %87

87:                                               ; preds = %97, %86
  %88 = load i32, i32* %14, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @EXT2FS_CLUSTER_RATIO(i32 %92)
  %94 = icmp uge i32 %91, %93
  br label %95

95:                                               ; preds = %90, %87
  %96 = phi i1 [ false, %87 ], [ %94, %90 ]
  br i1 %96, label %97, label %114

97:                                               ; preds = %95
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @ext2fs_block_alloc_stats2(i32 %98, i32 %99, i32 -1)
  %101 = load i32, i32* %17, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %17, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @EXT2FS_CLUSTER_RATIO(i32 %103)
  store i32 %104, i32* %18, align 4
  %105 = load i32, i32* %18, align 4
  %106 = load i32, i32* %14, align 4
  %107 = sub nsw i32 %106, %105
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %18, align 4
  %109 = load i32, i32* %13, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %18, align 4
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %12, align 4
  br label %87

114:                                              ; preds = %95
  %115 = load i32, i32* %14, align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %136

117:                                              ; preds = %114
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load %struct.ext2_inode*, %struct.ext2_inode** %11, align 8
  %121 = load i32, i32* %12, align 4
  %122 = call i64 @ext2fs_map_cluster_block(i32 %118, i32 %119, %struct.ext2_inode* %120, i32 %121, i32* %16)
  store i64 %122, i64* %19, align 8
  %123 = load i64, i64* %19, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %117
  br label %137

126:                                              ; preds = %117
  %127 = load i32, i32* %16, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %126
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %13, align 4
  %132 = call i32 @ext2fs_block_alloc_stats2(i32 %130, i32 %131, i32 -1)
  %133 = load i32, i32* %17, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %17, align 4
  br label %135

135:                                              ; preds = %129, %126
  br label %136

136:                                              ; preds = %135, %114
  br label %137

137:                                              ; preds = %136, %125, %53
  %138 = load i32, i32* %17, align 4
  %139 = load i32*, i32** %15, align 8
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, %138
  store i32 %141, i32* %139, align 4
  %142 = load i64, i64* %19, align 8
  store i64 %142, i64* %8, align 8
  br label %143

143:                                              ; preds = %137, %37
  %144 = load i64, i64* %8, align 8
  ret i64 %144
}

declare dso_local i32 @EXT2FS_CLUSTER_RATIO(i32) #1

declare dso_local i32 @ext2fs_block_alloc_stats2(i32, i32, i32) #1

declare dso_local i32 @EXT2FS_CLUSTER_MASK(i32) #1

declare dso_local i64 @ext2fs_map_cluster_block(i32, i32, %struct.ext2_inode*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

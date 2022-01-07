; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_gen_bitmap64.c_ext2fs_alloc_generic_bmap.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_gen_bitmap64.c_ext2fs_alloc_generic_bmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2_bitmap_ops = type { i32 (%struct.TYPE_16__*, %struct.TYPE_15__*)* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_15__*, %struct.ext2_bitmap_ops*, i32, i64, i8*, i8*, i8*, %struct.TYPE_16__*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }

@ext2fs_blkmap64_bitarray = common dso_local global %struct.ext2_bitmap_ops zeroinitializer, align 8
@ext2fs_blkmap64_rbtree = common dso_local global %struct.ext2_bitmap_ops zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@EXT2_ET_BAD_INODE_MARK = common dso_local global i32 0, align 4
@EXT2_ET_BAD_BLOCK_MARK = common dso_local global i32 0, align 4
@EXT2_ET_BAD_GENERIC_MARK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_alloc_generic_bmap(%struct.TYPE_16__* %0, i32 %1, i32 %2, i8* %3, i8* %4, i8* %5, i8* %6, i64* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca %struct.TYPE_15__*, align 8
  %19 = alloca %struct.ext2_bitmap_ops*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i64* %7, i64** %17, align 8
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %8
  store i32 131, i32* %12, align 4
  br label %25

25:                                               ; preds = %24, %8
  %26 = load i32, i32* %12, align 4
  switch i32 %26, label %46 [
    i32 131, label %27
    i32 130, label %28
    i32 132, label %29
  ]

27:                                               ; preds = %25
  store %struct.ext2_bitmap_ops* @ext2fs_blkmap64_bitarray, %struct.ext2_bitmap_ops** %19, align 8
  br label %48

28:                                               ; preds = %25
  store %struct.ext2_bitmap_ops* @ext2fs_blkmap64_rbtree, %struct.ext2_bitmap_ops** %19, align 8
  br label %48

29:                                               ; preds = %25
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %31 = call i32 @ext2fs_get_num_dirs(%struct.TYPE_16__* %30, i32* %20)
  store i32 %31, i32* %21, align 4
  %32 = load i32, i32* %21, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %20, align 4
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %40, 320
  %42 = icmp sgt i32 %35, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %34, %29
  store %struct.ext2_bitmap_ops* @ext2fs_blkmap64_bitarray, %struct.ext2_bitmap_ops** %19, align 8
  br label %45

44:                                               ; preds = %34
  store %struct.ext2_bitmap_ops* @ext2fs_blkmap64_rbtree, %struct.ext2_bitmap_ops** %19, align 8
  br label %45

45:                                               ; preds = %44, %43
  br label %48

46:                                               ; preds = %25
  %47 = load i32, i32* @EINVAL, align 4
  store i32 %47, i32* %9, align 4
  br label %138

48:                                               ; preds = %45, %28, %27
  %49 = call i32 @ext2fs_get_memzero(i32 4, %struct.TYPE_15__** %18)
  store i32 %49, i32* %21, align 4
  %50 = load i32, i32* %21, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* %21, align 4
  store i32 %53, i32* %9, align 4
  br label %138

54:                                               ; preds = %48
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 8
  store %struct.TYPE_16__* %58, %struct.TYPE_16__** %60, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 7
  store i8* %61, i8** %63, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 6
  store i8* %64, i8** %66, align 8
  %67 = load i8*, i8** %15, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 5
  store i8* %67, i8** %69, align 8
  %70 = load %struct.ext2_bitmap_ops*, %struct.ext2_bitmap_ops** %19, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 2
  store %struct.ext2_bitmap_ops* %70, %struct.ext2_bitmap_ops** %72, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 4
  store i64 0, i64* %74, align 8
  %75 = load i32, i32* %11, align 4
  switch i32 %75, label %89 [
    i32 128, label %76
    i32 129, label %80
  ]

76:                                               ; preds = %54
  %77 = load i32, i32* @EXT2_ET_BAD_INODE_MARK, align 4
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 8
  br label %93

80:                                               ; preds = %54
  %81 = load i32, i32* @EXT2_ET_BAD_BLOCK_MARK, align 4
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 4
  store i64 %86, i64* %88, align 8
  br label %93

89:                                               ; preds = %54
  %90 = load i32, i32* @EXT2_ET_BAD_GENERIC_MARK, align 4
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %89, %80, %76
  %94 = load i8*, i8** %16, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %114

96:                                               ; preds = %93
  %97 = load i8*, i8** %16, align 8
  %98 = call i64 @strlen(i8* %97)
  %99 = add nsw i64 %98, 1
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 1
  %102 = call i32 @ext2fs_get_mem(i64 %99, %struct.TYPE_15__** %101)
  store i32 %102, i32* %21, align 4
  %103 = load i32, i32* %21, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %96
  %106 = call i32 @ext2fs_free_mem(%struct.TYPE_15__** %18)
  %107 = load i32, i32* %21, align 4
  store i32 %107, i32* %9, align 4
  br label %138

108:                                              ; preds = %96
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %110, align 8
  %112 = load i8*, i8** %16, align 8
  %113 = call i32 @strcpy(%struct.TYPE_15__* %111, i8* %112)
  br label %117

114:                                              ; preds = %93
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 1
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %116, align 8
  br label %117

117:                                              ; preds = %114, %108
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 2
  %120 = load %struct.ext2_bitmap_ops*, %struct.ext2_bitmap_ops** %119, align 8
  %121 = getelementptr inbounds %struct.ext2_bitmap_ops, %struct.ext2_bitmap_ops* %120, i32 0, i32 0
  %122 = load i32 (%struct.TYPE_16__*, %struct.TYPE_15__*)*, i32 (%struct.TYPE_16__*, %struct.TYPE_15__*)** %121, align 8
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %125 = call i32 %122(%struct.TYPE_16__* %123, %struct.TYPE_15__* %124)
  store i32 %125, i32* %21, align 4
  %126 = load i32, i32* %21, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %117
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 1
  %131 = call i32 @ext2fs_free_mem(%struct.TYPE_15__** %130)
  %132 = call i32 @ext2fs_free_mem(%struct.TYPE_15__** %18)
  %133 = load i32, i32* %21, align 4
  store i32 %133, i32* %9, align 4
  br label %138

134:                                              ; preds = %117
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %136 = ptrtoint %struct.TYPE_15__* %135 to i64
  %137 = load i64*, i64** %17, align 8
  store i64 %136, i64* %137, align 8
  store i32 0, i32* %9, align 4
  br label %138

138:                                              ; preds = %134, %128, %105, %52, %46
  %139 = load i32, i32* %9, align 4
  ret i32 %139
}

declare dso_local i32 @ext2fs_get_num_dirs(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @ext2fs_get_memzero(i32, %struct.TYPE_15__**) #1

declare dso_local i32 @ext2fs_get_mem(i64, %struct.TYPE_15__**) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ext2fs_free_mem(%struct.TYPE_15__**) #1

declare dso_local i32 @strcpy(%struct.TYPE_15__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

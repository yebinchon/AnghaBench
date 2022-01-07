; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_dir_iterate.c_ext2fs_dir_iterate2.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_dir_iterate.c_ext2fs_dir_iterate2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.ext2_dir_entry = type opaque
%struct.dir_context = type { i32, i8*, i32 (i32, i32, %struct.ext2_dir_entry.0*, i32, i32, i8*, i8*)*, i64, i8*, i32 }
%struct.ext2_dir_entry.0 = type opaque

@EXT2_ET_MAGIC_EXT2FS_FILSYS = common dso_local global i32 0, align 4
@BLOCK_FLAG_READ_ONLY = common dso_local global i32 0, align 4
@ext2fs_process_dir_block = common dso_local global i32 0, align 4
@EXT2_ET_INLINE_DATA_CANT_ITERATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_dir_iterate2(%struct.TYPE_7__* %0, i32 %1, i32 %2, i8* %3, i32 (i32, i32, %struct.ext2_dir_entry*, i32, i32, i8*, i8*)* %4, i8* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32 (i32, i32, %struct.ext2_dir_entry*, i32, i32, i8*, i8*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.dir_context, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 (i32, i32, %struct.ext2_dir_entry*, i32, i32, i8*, i8*)* %4, i32 (i32, i32, %struct.ext2_dir_entry*, i32, i32, i8*, i8*)** %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %17 = load i32, i32* @EXT2_ET_MAGIC_EXT2FS_FILSYS, align 4
  %18 = call i32 @EXT2_CHECK_MAGIC(%struct.TYPE_7__* %16, i32 %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i64 @ext2fs_check_directory(%struct.TYPE_7__* %19, i32 %20)
  store i64 %21, i64* %15, align 8
  %22 = load i64, i64* %15, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i64, i64* %15, align 8
  store i64 %25, i64* %7, align 8
  br label %80

26:                                               ; preds = %6
  %27 = load i32, i32* %9, align 4
  %28 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %14, i32 0, i32 5
  store i32 %27, i32* %28, align 8
  %29 = load i32, i32* %10, align 4
  %30 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %14, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i8*, i8** %11, align 8
  %35 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %14, i32 0, i32 1
  store i8* %34, i8** %35, align 8
  br label %47

36:                                               ; preds = %26
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %14, i32 0, i32 1
  %41 = call i64 @ext2fs_get_mem(i32 %39, i8** %40)
  store i64 %41, i64* %15, align 8
  %42 = load i64, i64* %15, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i64, i64* %15, align 8
  store i64 %45, i64* %7, align 8
  br label %80

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46, %33
  %48 = load i32 (i32, i32, %struct.ext2_dir_entry*, i32, i32, i8*, i8*)*, i32 (i32, i32, %struct.ext2_dir_entry*, i32, i32, i8*, i8*)** %12, align 8
  %49 = bitcast i32 (i32, i32, %struct.ext2_dir_entry*, i32, i32, i8*, i8*)* %48 to i32 (i32, i32, %struct.ext2_dir_entry.0*, i32, i32, i8*, i8*)*
  %50 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %14, i32 0, i32 2
  store i32 (i32, i32, %struct.ext2_dir_entry.0*, i32, i32, i8*, i8*)* %49, i32 (i32, i32, %struct.ext2_dir_entry.0*, i32, i32, i8*, i8*)** %50, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %14, i32 0, i32 4
  store i8* %51, i8** %52, align 8
  %53 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %14, i32 0, i32 3
  store i64 0, i64* %53, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @BLOCK_FLAG_READ_ONLY, align 4
  %57 = load i32, i32* @ext2fs_process_dir_block, align 4
  %58 = call i64 @ext2fs_block_iterate3(%struct.TYPE_7__* %54, i32 %55, i32 %56, i32 0, i32 %57, %struct.dir_context* %14)
  store i64 %58, i64* %15, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %47
  %62 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %14, i32 0, i32 1
  %63 = call i32 @ext2fs_free_mem(i8** %62)
  br label %64

64:                                               ; preds = %61, %47
  %65 = load i64, i64* %15, align 8
  %66 = load i64, i64* @EXT2_ET_INLINE_DATA_CANT_ITERATE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @ext2fs_inline_data_dir_iterate(%struct.TYPE_7__* %69, i32 %70, %struct.dir_context* %14)
  store i64 0, i64* %15, align 8
  br label %72

72:                                               ; preds = %68, %64
  %73 = load i64, i64* %15, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i64, i64* %15, align 8
  store i64 %76, i64* %7, align 8
  br label %80

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %14, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %7, align 8
  br label %80

80:                                               ; preds = %77, %75, %44, %24
  %81 = load i64, i64* %7, align 8
  ret i64 %81
}

declare dso_local i32 @EXT2_CHECK_MAGIC(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @ext2fs_check_directory(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @ext2fs_get_mem(i32, i8**) #1

declare dso_local i64 @ext2fs_block_iterate3(%struct.TYPE_7__*, i32, i32, i32, i32, %struct.dir_context*) #1

declare dso_local i32 @ext2fs_free_mem(i8**) #1

declare dso_local i32 @ext2fs_inline_data_dir_iterate(%struct.TYPE_7__*, i32, %struct.dir_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

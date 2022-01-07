; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_newdir.c_ext2fs_new_dir_block.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_newdir.c_ext2fs_new_dir_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.ext2_dir_entry = type { i8*, i32, i8* }
%struct.ext2_dir_entry_tail = type { i32 }

@EXT2_ET_MAGIC_EXT2FS_FILSYS = common dso_local global i32 0, align 4
@EXT2_FT_DIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_new_dir_block(%struct.TYPE_6__* %0, i8* %1, i8* %2, i8** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.ext2_dir_entry*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ext2_dir_entry_tail*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  store %struct.ext2_dir_entry* null, %struct.ext2_dir_entry** %10, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = load i32, i32* @EXT2_ET_MAGIC_EXT2FS_FILSYS, align 4
  %19 = call i32 @EXT2_CHECK_MAGIC(%struct.TYPE_6__* %17, i32 %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @ext2fs_get_mem(i32 %22, i8** %12)
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* %11, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i64, i64* %11, align 8
  store i64 %27, i64* %5, align 8
  br label %138

28:                                               ; preds = %4
  %29 = load i8*, i8** %12, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @memset(i8* %29, i32 0, i32 %32)
  %34 = load i8*, i8** %12, align 8
  %35 = bitcast i8* %34 to %struct.ext2_dir_entry*
  store %struct.ext2_dir_entry* %35, %struct.ext2_dir_entry** %10, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @ext2fs_has_feature_metadata_csum(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  store i32 4, i32* %16, align 4
  br label %42

42:                                               ; preds = %41, %28
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %16, align 4
  %48 = sub nsw i32 %46, %47
  %49 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %10, align 8
  %50 = call i64 @ext2fs_set_rec_len(%struct.TYPE_6__* %43, i32 %48, %struct.ext2_dir_entry* %49)
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %11, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %42
  %54 = call i32 @ext2fs_free_mem(i8** %12)
  %55 = load i64, i64* %11, align 8
  store i64 %55, i64* %5, align 8
  br label %138

56:                                               ; preds = %42
  %57 = load i8*, i8** %7, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %123

59:                                               ; preds = %56
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @ext2fs_has_feature_filetype(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* @EXT2_FT_DIR, align 4
  store i32 %66, i32* %14, align 4
  br label %67

67:                                               ; preds = %65, %59
  %68 = load i8*, i8** %7, align 8
  %69 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %10, align 8
  %70 = getelementptr inbounds %struct.ext2_dir_entry, %struct.ext2_dir_entry* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %10, align 8
  %72 = call i32 @ext2fs_dirent_set_name_len(%struct.ext2_dir_entry* %71, i32 1)
  %73 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %10, align 8
  %74 = load i32, i32* %14, align 4
  %75 = call i32 @ext2fs_dirent_set_file_type(%struct.ext2_dir_entry* %73, i32 %74)
  %76 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %10, align 8
  %77 = getelementptr inbounds %struct.ext2_dir_entry, %struct.ext2_dir_entry* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  store i8 46, i8* %79, align 1
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %16, align 4
  %84 = sub nsw i32 %82, %83
  %85 = call i32 @EXT2_DIR_REC_LEN(i32 1)
  %86 = sub nsw i32 %84, %85
  store i32 %86, i32* %13, align 4
  %87 = call i32 @EXT2_DIR_REC_LEN(i32 1)
  %88 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %10, align 8
  %89 = getelementptr inbounds %struct.ext2_dir_entry, %struct.ext2_dir_entry* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  %90 = load i8*, i8** %12, align 8
  %91 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %10, align 8
  %92 = getelementptr inbounds %struct.ext2_dir_entry, %struct.ext2_dir_entry* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %90, i64 %94
  %96 = bitcast i8* %95 to %struct.ext2_dir_entry*
  store %struct.ext2_dir_entry* %96, %struct.ext2_dir_entry** %10, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %98 = load i32, i32* %13, align 4
  %99 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %10, align 8
  %100 = call i64 @ext2fs_set_rec_len(%struct.TYPE_6__* %97, i32 %98, %struct.ext2_dir_entry* %99)
  store i64 %100, i64* %11, align 8
  %101 = load i64, i64* %11, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %67
  %104 = call i32 @ext2fs_free_mem(i8** %12)
  %105 = load i64, i64* %11, align 8
  store i64 %105, i64* %5, align 8
  br label %138

106:                                              ; preds = %67
  %107 = load i8*, i8** %8, align 8
  %108 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %10, align 8
  %109 = getelementptr inbounds %struct.ext2_dir_entry, %struct.ext2_dir_entry* %108, i32 0, i32 2
  store i8* %107, i8** %109, align 8
  %110 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %10, align 8
  %111 = call i32 @ext2fs_dirent_set_name_len(%struct.ext2_dir_entry* %110, i32 2)
  %112 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %10, align 8
  %113 = load i32, i32* %14, align 4
  %114 = call i32 @ext2fs_dirent_set_file_type(%struct.ext2_dir_entry* %112, i32 %113)
  %115 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %10, align 8
  %116 = getelementptr inbounds %struct.ext2_dir_entry, %struct.ext2_dir_entry* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 0
  store i8 46, i8* %118, align 1
  %119 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %10, align 8
  %120 = getelementptr inbounds %struct.ext2_dir_entry, %struct.ext2_dir_entry* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 1
  store i8 46, i8* %122, align 1
  br label %123

123:                                              ; preds = %106, %56
  %124 = load i32, i32* %16, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %123
  %127 = load i8*, i8** %12, align 8
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call %struct.ext2_dir_entry_tail* @EXT2_DIRENT_TAIL(i8* %127, i32 %130)
  store %struct.ext2_dir_entry_tail* %131, %struct.ext2_dir_entry_tail** %15, align 8
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %133 = load %struct.ext2_dir_entry_tail*, %struct.ext2_dir_entry_tail** %15, align 8
  %134 = call i32 @ext2fs_initialize_dirent_tail(%struct.TYPE_6__* %132, %struct.ext2_dir_entry_tail* %133)
  br label %135

135:                                              ; preds = %126, %123
  %136 = load i8*, i8** %12, align 8
  %137 = load i8**, i8*** %9, align 8
  store i8* %136, i8** %137, align 8
  store i64 0, i64* %5, align 8
  br label %138

138:                                              ; preds = %135, %103, %53, %26
  %139 = load i64, i64* %5, align 8
  ret i64 %139
}

declare dso_local i32 @EXT2_CHECK_MAGIC(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @ext2fs_get_mem(i32, i8**) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @ext2fs_has_feature_metadata_csum(i32) #1

declare dso_local i64 @ext2fs_set_rec_len(%struct.TYPE_6__*, i32, %struct.ext2_dir_entry*) #1

declare dso_local i32 @ext2fs_free_mem(i8**) #1

declare dso_local i64 @ext2fs_has_feature_filetype(i32) #1

declare dso_local i32 @ext2fs_dirent_set_name_len(%struct.ext2_dir_entry*, i32) #1

declare dso_local i32 @ext2fs_dirent_set_file_type(%struct.ext2_dir_entry*, i32) #1

declare dso_local i32 @EXT2_DIR_REC_LEN(i32) #1

declare dso_local %struct.ext2_dir_entry_tail* @EXT2_DIRENT_TAIL(i8*, i32) #1

declare dso_local i32 @ext2fs_initialize_dirent_tail(%struct.TYPE_6__*, %struct.ext2_dir_entry_tail*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

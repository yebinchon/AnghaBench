; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_inline_data.c_ext2fs_inline_data_convert_dir.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_inline_data.c_ext2fs_inline_data_convert_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.ext2_dir_entry = type { i8*, i32, i32 }
%struct.ext2_dir_entry_tail = type { i32 }

@EXT2_FT_DIR = common dso_local global i32 0, align 4
@EXT4_INLINE_DATA_DOTDOT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i32, i8*, i8*, i32)* @ext2fs_inline_data_convert_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ext2fs_inline_data_convert_dir(%struct.TYPE_6__* %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ext2_dir_entry*, align 8
  %12 = alloca %struct.ext2_dir_entry*, align 8
  %13 = alloca %struct.ext2_dir_entry_tail*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @ext2fs_has_feature_metadata_csum(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store i32 4, i32* %17, align 4
  br label %25

25:                                               ; preds = %24, %5
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @ext2fs_has_feature_filetype(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @EXT2_FT_DIR, align 4
  store i32 %32, i32* %18, align 4
  br label %33

33:                                               ; preds = %31, %25
  %34 = load i8*, i8** %8, align 8
  %35 = bitcast i8* %34 to %struct.ext2_dir_entry*
  store %struct.ext2_dir_entry* %35, %struct.ext2_dir_entry** %11, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %11, align 8
  %38 = getelementptr inbounds %struct.ext2_dir_entry, %struct.ext2_dir_entry* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %11, align 8
  %40 = call i32 @ext2fs_dirent_set_name_len(%struct.ext2_dir_entry* %39, i32 1)
  %41 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %11, align 8
  %42 = load i32, i32* %18, align 4
  %43 = call i32 @ext2fs_dirent_set_file_type(%struct.ext2_dir_entry* %41, i32 %42)
  %44 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %11, align 8
  %45 = getelementptr inbounds %struct.ext2_dir_entry, %struct.ext2_dir_entry* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  store i8 46, i8* %47, align 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %17, align 4
  %52 = sub nsw i32 %50, %51
  %53 = call i32 @EXT2_DIR_REC_LEN(i32 1)
  %54 = sub nsw i32 %52, %53
  store i32 %54, i32* %16, align 4
  %55 = call i32 @EXT2_DIR_REC_LEN(i32 1)
  %56 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %11, align 8
  %57 = getelementptr inbounds %struct.ext2_dir_entry, %struct.ext2_dir_entry* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %11, align 8
  %60 = getelementptr inbounds %struct.ext2_dir_entry, %struct.ext2_dir_entry* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %58, i64 %62
  %64 = bitcast i8* %63 to %struct.ext2_dir_entry*
  store %struct.ext2_dir_entry* %64, %struct.ext2_dir_entry** %11, align 8
  %65 = call i32 @EXT2_DIR_REC_LEN(i32 2)
  %66 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %11, align 8
  %67 = getelementptr inbounds %struct.ext2_dir_entry, %struct.ext2_dir_entry* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = bitcast i8* %68 to i32*
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ext2fs_le32_to_cpu(i32 %71)
  %73 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %11, align 8
  %74 = getelementptr inbounds %struct.ext2_dir_entry, %struct.ext2_dir_entry* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %11, align 8
  %76 = call i32 @ext2fs_dirent_set_name_len(%struct.ext2_dir_entry* %75, i32 2)
  %77 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %11, align 8
  %78 = load i32, i32* %18, align 4
  %79 = call i32 @ext2fs_dirent_set_file_type(%struct.ext2_dir_entry* %77, i32 %78)
  %80 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %11, align 8
  %81 = getelementptr inbounds %struct.ext2_dir_entry, %struct.ext2_dir_entry* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  store i8 46, i8* %83, align 1
  %84 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %11, align 8
  %85 = getelementptr inbounds %struct.ext2_dir_entry, %struct.ext2_dir_entry* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  store i8 46, i8* %87, align 1
  %88 = call i32 @EXT2_DIR_REC_LEN(i32 1)
  %89 = call i32 @EXT2_DIR_REC_LEN(i32 2)
  %90 = add nsw i32 %88, %89
  store i32 %90, i32* %15, align 4
  %91 = load i8*, i8** %8, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = bitcast i8* %94 to %struct.ext2_dir_entry*
  store %struct.ext2_dir_entry* %95, %struct.ext2_dir_entry** %11, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = load i32, i32* %15, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i8*, i8** %9, align 8
  %101 = load i32, i32* @EXT4_INLINE_DATA_DOTDOT_SIZE, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* @EXT4_INLINE_DATA_DOTDOT_SIZE, align 4
  %106 = sub nsw i32 %104, %105
  %107 = call i32 @memcpy(i8* %99, i8* %103, i32 %106)
  %108 = call i32 @EXT2_DIR_REC_LEN(i32 1)
  %109 = call i32 @EXT2_DIR_REC_LEN(i32 2)
  %110 = add nsw i32 %108, %109
  %111 = load i32, i32* @EXT4_INLINE_DATA_DOTDOT_SIZE, align 4
  %112 = sub nsw i32 %110, %111
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %10, align 4
  br label %115

115:                                              ; preds = %132, %33
  %116 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %11, align 8
  store %struct.ext2_dir_entry* %116, %struct.ext2_dir_entry** %12, align 8
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %118 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %11, align 8
  %119 = call i64 @ext2fs_get_rec_len(%struct.TYPE_6__* %117, %struct.ext2_dir_entry* %118, i32* %16)
  store i64 %119, i64* %14, align 8
  %120 = load i64, i64* %14, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  br label %166

123:                                              ; preds = %115
  %124 = load i32, i32* %16, align 4
  %125 = load i32, i32* %15, align 4
  %126 = add i32 %125, %124
  store i32 %126, i32* %15, align 4
  %127 = load i8*, i8** %8, align 8
  %128 = load i32, i32* %15, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = bitcast i8* %130 to %struct.ext2_dir_entry*
  store %struct.ext2_dir_entry* %131, %struct.ext2_dir_entry** %11, align 8
  br label %132

132:                                              ; preds = %123
  %133 = load i32, i32* %15, align 4
  %134 = load i32, i32* %10, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %115, label %136

136:                                              ; preds = %132
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %17, align 4
  %141 = sub nsw i32 %139, %140
  %142 = load i32, i32* %15, align 4
  %143 = sub nsw i32 %141, %142
  %144 = load i32, i32* %16, align 4
  %145 = add i32 %144, %143
  store i32 %145, i32* %16, align 4
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %147 = load i32, i32* %16, align 4
  %148 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %12, align 8
  %149 = call i64 @ext2fs_set_rec_len(%struct.TYPE_6__* %146, i32 %147, %struct.ext2_dir_entry* %148)
  store i64 %149, i64* %14, align 8
  %150 = load i64, i64* %14, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %136
  br label %166

153:                                              ; preds = %136
  %154 = load i32, i32* %17, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %153
  %157 = load i8*, i8** %8, align 8
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call %struct.ext2_dir_entry_tail* @EXT2_DIRENT_TAIL(i8* %157, i32 %160)
  store %struct.ext2_dir_entry_tail* %161, %struct.ext2_dir_entry_tail** %13, align 8
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %163 = load %struct.ext2_dir_entry_tail*, %struct.ext2_dir_entry_tail** %13, align 8
  %164 = call i32 @ext2fs_initialize_dirent_tail(%struct.TYPE_6__* %162, %struct.ext2_dir_entry_tail* %163)
  br label %165

165:                                              ; preds = %156, %153
  br label %166

166:                                              ; preds = %165, %152, %122
  %167 = load i64, i64* %14, align 8
  ret i64 %167
}

declare dso_local i64 @ext2fs_has_feature_metadata_csum(i32) #1

declare dso_local i64 @ext2fs_has_feature_filetype(i32) #1

declare dso_local i32 @ext2fs_dirent_set_name_len(%struct.ext2_dir_entry*, i32) #1

declare dso_local i32 @ext2fs_dirent_set_file_type(%struct.ext2_dir_entry*, i32) #1

declare dso_local i32 @EXT2_DIR_REC_LEN(i32) #1

declare dso_local i32 @ext2fs_le32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @ext2fs_get_rec_len(%struct.TYPE_6__*, %struct.ext2_dir_entry*, i32*) #1

declare dso_local i64 @ext2fs_set_rec_len(%struct.TYPE_6__*, i32, %struct.ext2_dir_entry*) #1

declare dso_local %struct.ext2_dir_entry_tail* @EXT2_DIRENT_TAIL(i8*, i32) #1

declare dso_local i32 @ext2fs_initialize_dirent_tail(%struct.TYPE_6__*, %struct.ext2_dir_entry_tail*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

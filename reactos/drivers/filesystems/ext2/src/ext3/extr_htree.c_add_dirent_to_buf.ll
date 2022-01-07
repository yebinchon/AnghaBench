; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_htree.c_add_dirent_to_buf.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_htree.c_add_dirent_to_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2_icb = type { i32 }
%struct.dentry = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i8*, i32 }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { i32, i32, i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ext3_dir_entry_2 = type { i32, i32, i64, i32, i8* }
%struct.buffer_head = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"ext3_add_entry\00", align 1
@EIO = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EXT3_FT_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_dirent_to_buf(%struct.ext2_icb* %0, %struct.dentry* %1, %struct.inode* %2, %struct.ext3_dir_entry_2* %3, %struct.buffer_head* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext2_icb*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.ext3_dir_entry_2*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i16, align 2
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca %struct.ext3_dir_entry_2*, align 8
  store %struct.ext2_icb* %0, %struct.ext2_icb** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store %struct.inode* %2, %struct.inode** %9, align 8
  store %struct.ext3_dir_entry_2* %3, %struct.ext3_dir_entry_2** %10, align 8
  store %struct.buffer_head* %4, %struct.buffer_head** %11, align 8
  %22 = load %struct.dentry*, %struct.dentry** %8, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.inode*, %struct.inode** %25, align 8
  store %struct.inode* %26, %struct.inode** %12, align 8
  %27 = load %struct.dentry*, %struct.dentry** %8, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %13, align 8
  %31 = load %struct.dentry*, %struct.dentry** %8, align 8
  %32 = getelementptr inbounds %struct.dentry, %struct.dentry* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %35 = load i32, i32* %14, align 4
  %36 = call i8* @EXT3_DIR_REC_LEN(i32 %35)
  %37 = ptrtoint i8* %36 to i16
  store i16 %37, i16* %16, align 2
  %38 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %39 = icmp ne %struct.ext3_dir_entry_2* %38, null
  br i1 %39, label %132, label %40

40:                                               ; preds = %5
  %41 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %42 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.ext3_dir_entry_2*
  store %struct.ext3_dir_entry_2* %44, %struct.ext3_dir_entry_2** %10, align 8
  %45 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %46 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.inode*, %struct.inode** %12, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %47, %53
  %55 = load i16, i16* %16, align 2
  %56 = zext i16 %55 to i64
  %57 = sub nsw i64 %54, %56
  %58 = inttoptr i64 %57 to i8*
  store i8* %58, i8** %20, align 8
  br label %59

59:                                               ; preds = %113, %40
  %60 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %61 = bitcast %struct.ext3_dir_entry_2* %60 to i8*
  %62 = load i8*, i8** %20, align 8
  %63 = icmp ule i8* %61, %62
  br i1 %63, label %64, label %123

64:                                               ; preds = %59
  %65 = load %struct.inode*, %struct.inode** %12, align 8
  %66 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %67 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %68 = load i32, i32* %15, align 4
  %69 = call i32 @ext3_check_dir_entry(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.inode* %65, %struct.ext3_dir_entry_2* %66, %struct.buffer_head* %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %64
  %72 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %73 = call i32 @__brelse(%struct.buffer_head* %72)
  %74 = load i32, i32* @EIO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %6, align 4
  br label %217

76:                                               ; preds = %64
  %77 = load i32, i32* %14, align 4
  %78 = load i8*, i8** %13, align 8
  %79 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %80 = call i64 @ext3_match(i32 %77, i8* %78, %struct.ext3_dir_entry_2* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %84 = call i32 @__brelse(%struct.buffer_head* %83)
  %85 = load i32, i32* @EEXIST, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %6, align 4
  br label %217

87:                                               ; preds = %76
  %88 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %89 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i8* @EXT3_DIR_REC_LEN(i32 %90)
  %92 = ptrtoint i8* %91 to i32
  store i32 %92, i32* %17, align 4
  %93 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %94 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %93, i32 0, i32 4
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @ext3_rec_len_from_disk(i8* %95)
  store i32 %96, i32* %18, align 4
  %97 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %98 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %87
  %102 = load i32, i32* %18, align 4
  %103 = load i32, i32* %17, align 4
  %104 = sub nsw i32 %102, %103
  br label %107

105:                                              ; preds = %87
  %106 = load i32, i32* %18, align 4
  br label %107

107:                                              ; preds = %105, %101
  %108 = phi i32 [ %104, %101 ], [ %106, %105 ]
  %109 = load i16, i16* %16, align 2
  %110 = zext i16 %109 to i32
  %111 = icmp sge i32 %108, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %123

113:                                              ; preds = %107
  %114 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %115 = bitcast %struct.ext3_dir_entry_2* %114 to i8*
  %116 = load i32, i32* %18, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = bitcast i8* %118 to %struct.ext3_dir_entry_2*
  store %struct.ext3_dir_entry_2* %119, %struct.ext3_dir_entry_2** %10, align 8
  %120 = load i32, i32* %18, align 4
  %121 = load i32, i32* %15, align 4
  %122 = add i32 %121, %120
  store i32 %122, i32* %15, align 4
  br label %59

123:                                              ; preds = %112, %59
  %124 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %125 = bitcast %struct.ext3_dir_entry_2* %124 to i8*
  %126 = load i8*, i8** %20, align 8
  %127 = icmp ugt i8* %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load i32, i32* @ENOSPC, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %6, align 4
  br label %217

131:                                              ; preds = %123
  br label %132

132:                                              ; preds = %131, %5
  %133 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %134 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i8* @EXT3_DIR_REC_LEN(i32 %135)
  %137 = ptrtoint i8* %136 to i32
  store i32 %137, i32* %17, align 4
  %138 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %139 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %138, i32 0, i32 4
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @ext3_rec_len_from_disk(i8* %140)
  store i32 %141, i32* %18, align 4
  %142 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %143 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %164

146:                                              ; preds = %132
  %147 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %148 = bitcast %struct.ext3_dir_entry_2* %147 to i8*
  %149 = load i32, i32* %17, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %148, i64 %150
  %152 = bitcast i8* %151 to %struct.ext3_dir_entry_2*
  store %struct.ext3_dir_entry_2* %152, %struct.ext3_dir_entry_2** %21, align 8
  %153 = load i32, i32* %18, align 4
  %154 = load i32, i32* %17, align 4
  %155 = sub nsw i32 %153, %154
  %156 = call i8* @ext3_rec_len_to_disk(i32 %155)
  %157 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %21, align 8
  %158 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %157, i32 0, i32 4
  store i8* %156, i8** %158, align 8
  %159 = load i32, i32* %17, align 4
  %160 = call i8* @ext3_rec_len_to_disk(i32 %159)
  %161 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %162 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %161, i32 0, i32 4
  store i8* %160, i8** %162, align 8
  %163 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %21, align 8
  store %struct.ext3_dir_entry_2* %163, %struct.ext3_dir_entry_2** %10, align 8
  br label %164

164:                                              ; preds = %146, %132
  %165 = load i32, i32* @EXT3_FT_UNKNOWN, align 4
  %166 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %167 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %166, i32 0, i32 3
  store i32 %165, i32* %167, align 8
  %168 = load %struct.inode*, %struct.inode** %9, align 8
  %169 = icmp ne %struct.inode* %168, null
  br i1 %169, label %170, label %185

170:                                              ; preds = %164
  %171 = load %struct.inode*, %struct.inode** %9, align 8
  %172 = getelementptr inbounds %struct.inode, %struct.inode* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 8
  %174 = call i64 @cpu_to_le32(i32 %173)
  %175 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %176 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %175, i32 0, i32 2
  store i64 %174, i64* %176, align 8
  %177 = load %struct.inode*, %struct.inode** %12, align 8
  %178 = getelementptr inbounds %struct.inode, %struct.inode* %177, i32 0, i32 4
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %178, align 8
  %180 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %181 = load %struct.inode*, %struct.inode** %9, align 8
  %182 = getelementptr inbounds %struct.inode, %struct.inode* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @ext3_set_de_type(%struct.TYPE_6__* %179, %struct.ext3_dir_entry_2* %180, i32 %183)
  br label %188

185:                                              ; preds = %164
  %186 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %187 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %186, i32 0, i32 2
  store i64 0, i64* %187, align 8
  br label %188

188:                                              ; preds = %185, %170
  %189 = load i32, i32* %14, align 4
  %190 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %191 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 8
  %192 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %193 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load i8*, i8** %13, align 8
  %196 = load i32, i32* %14, align 4
  %197 = call i32 @memcpy(i32 %194, i8* %195, i32 %196)
  %198 = load %struct.inode*, %struct.inode** %12, align 8
  %199 = call i32 @ext3_current_time(%struct.inode* %198)
  %200 = load %struct.inode*, %struct.inode** %12, align 8
  %201 = getelementptr inbounds %struct.inode, %struct.inode* %200, i32 0, i32 1
  store i32 %199, i32* %201, align 4
  %202 = load %struct.inode*, %struct.inode** %12, align 8
  %203 = getelementptr inbounds %struct.inode, %struct.inode* %202, i32 0, i32 2
  store i32 %199, i32* %203, align 8
  %204 = load %struct.inode*, %struct.inode** %12, align 8
  %205 = call i32 @ext3_update_dx_flag(%struct.inode* %204)
  %206 = load %struct.inode*, %struct.inode** %12, align 8
  %207 = getelementptr inbounds %struct.inode, %struct.inode* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %207, align 8
  %210 = load %struct.ext2_icb*, %struct.ext2_icb** %7, align 8
  %211 = load %struct.inode*, %struct.inode** %12, align 8
  %212 = call i32 @ext3_mark_inode_dirty(%struct.ext2_icb* %210, %struct.inode* %211)
  %213 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %214 = call i32 @set_buffer_dirty(%struct.buffer_head* %213)
  %215 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %216 = call i32 @__brelse(%struct.buffer_head* %215)
  store i32 0, i32* %6, align 4
  br label %217

217:                                              ; preds = %188, %128, %82, %71
  %218 = load i32, i32* %6, align 4
  ret i32 %218
}

declare dso_local i8* @EXT3_DIR_REC_LEN(i32) #1

declare dso_local i32 @ext3_check_dir_entry(i8*, %struct.inode*, %struct.ext3_dir_entry_2*, %struct.buffer_head*, i32) #1

declare dso_local i32 @__brelse(%struct.buffer_head*) #1

declare dso_local i64 @ext3_match(i32, i8*, %struct.ext3_dir_entry_2*) #1

declare dso_local i32 @ext3_rec_len_from_disk(i8*) #1

declare dso_local i8* @ext3_rec_len_to_disk(i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @ext3_set_de_type(%struct.TYPE_6__*, %struct.ext3_dir_entry_2*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @ext3_current_time(%struct.inode*) #1

declare dso_local i32 @ext3_update_dx_flag(%struct.inode*) #1

declare dso_local i32 @ext3_mark_inode_dirty(%struct.ext2_icb*, %struct.inode*) #1

declare dso_local i32 @set_buffer_dirty(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

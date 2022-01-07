; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_extents.c_ext4_ext_get_blocks.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_extents.c_ext4_ext_get_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.buffer_head = type { i64, i32 }
%struct.ext4_ext_path = type { %struct.ext4_extent* }
%struct.ext4_extent = type { i32, i32 }

@EXT4_GET_BLOCKS_PRE_IO = common dso_local global i32 0, align 4
@EXT_UNWRITTEN_MAX_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_ext_get_blocks(i8* %0, i32* %1, %struct.inode* %2, i64 %3, i64 %4, %struct.buffer_head* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ext4_ext_path*, align 8
  %18 = alloca %struct.ext4_extent, align 4
  %19 = alloca %struct.ext4_extent*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i16, align 2
  store i8* %0, i8** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.inode* %2, %struct.inode** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store %struct.buffer_head* %5, %struct.buffer_head** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store %struct.ext4_ext_path* null, %struct.ext4_ext_path** %17, align 8
  store i32 0, i32* %21, align 4
  store i64 0, i64* %23, align 8
  %29 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %30 = call i32 @clear_buffer_new(%struct.buffer_head* %29)
  %31 = load %struct.inode*, %struct.inode** %11, align 8
  %32 = load i64, i64* %12, align 8
  %33 = call %struct.ext4_ext_path* @ext4_find_extent(%struct.inode* %31, i64 %32, i32* null, i32 0)
  store %struct.ext4_ext_path* %33, %struct.ext4_ext_path** %17, align 8
  %34 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %17, align 8
  %35 = call i64 @IS_ERR(%struct.ext4_ext_path* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %8
  %38 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %17, align 8
  %39 = call i32 @PTR_ERR(%struct.ext4_ext_path* %38)
  store i32 %39, i32* %21, align 4
  store %struct.ext4_ext_path* null, %struct.ext4_ext_path** %17, align 8
  br label %238

40:                                               ; preds = %8
  %41 = load %struct.inode*, %struct.inode** %11, align 8
  %42 = call i32 @ext_depth(%struct.inode* %41)
  store i32 %42, i32* %22, align 4
  %43 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %17, align 8
  %44 = load i32, i32* %22, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %43, i64 %45
  %47 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %46, i32 0, i32 0
  %48 = load %struct.ext4_extent*, %struct.ext4_extent** %47, align 8
  %49 = icmp eq %struct.ext4_extent* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %40
  %51 = load i32, i32* %22, align 4
  %52 = icmp ne i32 %51, 0
  br label %53

53:                                               ; preds = %50, %40
  %54 = phi i1 [ false, %40 ], [ %52, %50 ]
  %55 = zext i1 %54 to i32
  %56 = call i32 @BUG_ON(i32 %55)
  %57 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %17, align 8
  %58 = load i32, i32* %22, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %57, i64 %59
  %61 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %60, i32 0, i32 0
  %62 = load %struct.ext4_extent*, %struct.ext4_extent** %61, align 8
  store %struct.ext4_extent* %62, %struct.ext4_extent** %19, align 8
  %63 = icmp ne %struct.ext4_extent* %62, null
  br i1 %63, label %64, label %123

64:                                               ; preds = %53
  %65 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %66 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @le32_to_cpu(i32 %67)
  store i64 %68, i64* %26, align 8
  %69 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %70 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %69)
  store i64 %70, i64* %27, align 8
  %71 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %72 = call zeroext i16 @ext4_ext_get_actual_len(%struct.ext4_extent* %71)
  store i16 %72, i16* %28, align 2
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* %26, align 8
  %75 = icmp sge i64 %73, %74
  br i1 %75, label %76, label %122

76:                                               ; preds = %64
  %77 = load i64, i64* %12, align 8
  %78 = load i64, i64* %26, align 8
  %79 = load i16, i16* %28, align 2
  %80 = zext i16 %79 to i64
  %81 = add nsw i64 %78, %80
  %82 = icmp slt i64 %77, %81
  br i1 %82, label %83, label %122

83:                                               ; preds = %76
  %84 = load i16, i16* %28, align 2
  %85 = zext i16 %84 to i64
  %86 = load i64, i64* %26, align 8
  %87 = add nsw i64 %85, %86
  %88 = load i64, i64* %12, align 8
  %89 = sub nsw i64 %87, %88
  store i64 %89, i64* %23, align 8
  %90 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %91 = call i64 @ext4_ext_is_unwritten(%struct.ext4_extent* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %115

93:                                               ; preds = %83
  %94 = load i32, i32* %15, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %113

96:                                               ; preds = %93
  %97 = load i64, i64* %12, align 8
  %98 = load i64, i64* %26, align 8
  %99 = sub nsw i64 %97, %98
  %100 = load i64, i64* %27, align 8
  %101 = add nsw i64 %99, %100
  store i64 %101, i64* %25, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = load i32*, i32** %10, align 8
  %104 = load %struct.inode*, %struct.inode** %11, align 8
  %105 = load i64, i64* %12, align 8
  %106 = load i64, i64* %23, align 8
  %107 = load i32, i32* %16, align 4
  %108 = call i32 @ext4_ext_convert_to_initialized(i8* %102, i32* %103, %struct.inode* %104, %struct.ext4_ext_path** %17, i64 %105, i64 %106, i32 %107)
  store i32 %108, i32* %21, align 4
  %109 = load i32, i32* %21, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %96
  br label %238

112:                                              ; preds = %96
  br label %114

113:                                              ; preds = %93
  store i64 0, i64* %25, align 8
  br label %114

114:                                              ; preds = %113, %112
  br label %121

115:                                              ; preds = %83
  %116 = load i64, i64* %12, align 8
  %117 = load i64, i64* %26, align 8
  %118 = sub nsw i64 %116, %117
  %119 = load i64, i64* %27, align 8
  %120 = add nsw i64 %118, %119
  store i64 %120, i64* %25, align 8
  br label %121

121:                                              ; preds = %115, %114
  br label %216

122:                                              ; preds = %76, %64
  br label %123

123:                                              ; preds = %122, %53
  %124 = load i32, i32* %15, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %123
  br label %238

127:                                              ; preds = %123
  %128 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %17, align 8
  %129 = call i64 @ext4_ext_next_allocated_block(%struct.ext4_ext_path* %128)
  store i64 %129, i64* %24, align 8
  %130 = load i64, i64* %24, align 8
  %131 = load i64, i64* %12, align 8
  %132 = icmp sle i64 %130, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 @BUG_ON(i32 %133)
  %135 = load i64, i64* %24, align 8
  %136 = load i64, i64* %12, align 8
  %137 = sub nsw i64 %135, %136
  store i64 %137, i64* %23, align 8
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* @EXT4_GET_BLOCKS_PRE_IO, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %127
  %143 = load i64, i64* %13, align 8
  %144 = load i64, i64* @EXT_UNWRITTEN_MAX_LEN, align 8
  %145 = icmp ugt i64 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = load i64, i64* @EXT_UNWRITTEN_MAX_LEN, align 8
  store i64 %147, i64* %13, align 8
  br label %148

148:                                              ; preds = %146, %142, %127
  %149 = load i64, i64* %23, align 8
  %150 = load i64, i64* %13, align 8
  %151 = icmp ugt i64 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = load i64, i64* %13, align 8
  store i64 %153, i64* %23, align 8
  br label %154

154:                                              ; preds = %152, %148
  %155 = load %struct.inode*, %struct.inode** %11, align 8
  %156 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %17, align 8
  %157 = load i64, i64* %12, align 8
  %158 = call i32 @ext4_ext_find_goal(%struct.inode* %155, %struct.ext4_ext_path* %156, i64 %157)
  store i32 %158, i32* %20, align 4
  %159 = load i8*, i8** %9, align 8
  %160 = load i32*, i32** %10, align 8
  %161 = load %struct.inode*, %struct.inode** %11, align 8
  %162 = load i32, i32* %20, align 4
  %163 = call i64 @ext4_new_meta_blocks(i8* %159, i32* %160, %struct.inode* %161, i32 %162, i32 0, i64* %23, i32* %21)
  store i64 %163, i64* %25, align 8
  %164 = load i64, i64* %25, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %154
  br label %238

167:                                              ; preds = %154
  %168 = load i64, i64* %12, align 8
  %169 = call i32 @cpu_to_le32(i64 %168)
  %170 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %18, i32 0, i32 1
  store i32 %169, i32* %170, align 4
  %171 = load i64, i64* %25, align 8
  %172 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %18, i64 %171)
  %173 = load i64, i64* %23, align 8
  %174 = call i32 @cpu_to_le16(i64 %173)
  %175 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %18, i32 0, i32 0
  store i32 %174, i32* %175, align 4
  %176 = load i32, i32* %16, align 4
  %177 = load i32, i32* @EXT4_GET_BLOCKS_PRE_IO, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %167
  %181 = call i32 @ext4_ext_mark_unwritten(%struct.ext4_extent* %18)
  br label %182

182:                                              ; preds = %180, %167
  %183 = load i8*, i8** %9, align 8
  %184 = load i32*, i32** %10, align 8
  %185 = load %struct.inode*, %struct.inode** %11, align 8
  %186 = load i32, i32* %16, align 4
  %187 = load i32, i32* @EXT4_GET_BLOCKS_PRE_IO, align 4
  %188 = and i32 %186, %187
  %189 = call i32 @ext4_ext_insert_extent(i8* %183, i32* %184, %struct.inode* %185, %struct.ext4_ext_path** %17, %struct.ext4_extent* %18, i32 %188)
  store i32 %189, i32* %21, align 4
  %190 = load i32, i32* %21, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %203

192:                                              ; preds = %182
  %193 = load i8*, i8** %9, align 8
  %194 = load i32*, i32** %10, align 8
  %195 = load %struct.inode*, %struct.inode** %11, align 8
  %196 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %18)
  %197 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %18, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @le16_to_cpu(i32 %198)
  %200 = load %struct.inode*, %struct.inode** %11, align 8
  %201 = call i32 @get_default_free_blocks_flags(%struct.inode* %200)
  %202 = call i32 @ext4_free_blocks(i8* %193, i32* %194, %struct.inode* %195, i32* null, i64 %196, i32 %199, i32 %201)
  br label %238

203:                                              ; preds = %182
  %204 = load i8*, i8** %9, align 8
  %205 = load i32*, i32** %10, align 8
  %206 = load %struct.inode*, %struct.inode** %11, align 8
  %207 = call i32 @ext4_mark_inode_dirty(i8* %204, i32* %205, %struct.inode* %206)
  %208 = call i64 @ext4_ext_is_unwritten(%struct.ext4_extent* %18)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %203
  store i64 0, i64* %25, align 8
  br label %213

211:                                              ; preds = %203
  %212 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %18)
  store i64 %212, i64* %25, align 8
  br label %213

213:                                              ; preds = %211, %210
  %214 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %215 = call i32 @set_buffer_new(%struct.buffer_head* %214)
  br label %216

216:                                              ; preds = %213, %121
  %217 = load i64, i64* %23, align 8
  %218 = load i64, i64* %13, align 8
  %219 = icmp ugt i64 %217, %218
  br i1 %219, label %220, label %222

220:                                              ; preds = %216
  %221 = load i64, i64* %13, align 8
  store i64 %221, i64* %23, align 8
  br label %222

222:                                              ; preds = %220, %216
  %223 = load %struct.inode*, %struct.inode** %11, align 8
  %224 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %17, align 8
  %225 = call i32 @ext4_ext_show_leaf(%struct.inode* %223, %struct.ext4_ext_path* %224)
  %226 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %227 = call i32 @set_buffer_mapped(%struct.buffer_head* %226)
  %228 = load %struct.inode*, %struct.inode** %11, align 8
  %229 = getelementptr inbounds %struct.inode, %struct.inode* %228, i32 0, i32 0
  %230 = load %struct.TYPE_2__*, %struct.TYPE_2__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %234 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %233, i32 0, i32 1
  store i32 %232, i32* %234, align 8
  %235 = load i64, i64* %25, align 8
  %236 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %237 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %236, i32 0, i32 0
  store i64 %235, i64* %237, align 8
  br label %238

238:                                              ; preds = %222, %192, %166, %126, %111, %37
  %239 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %17, align 8
  %240 = icmp ne %struct.ext4_ext_path* %239, null
  br i1 %240, label %241, label %246

241:                                              ; preds = %238
  %242 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %17, align 8
  %243 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %242)
  %244 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %17, align 8
  %245 = call i32 @kfree(%struct.ext4_ext_path* %244)
  br label %246

246:                                              ; preds = %241, %238
  %247 = load i32, i32* %21, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %246
  %250 = load i32, i32* %21, align 4
  %251 = sext i32 %250 to i64
  br label %254

252:                                              ; preds = %246
  %253 = load i64, i64* %23, align 8
  br label %254

254:                                              ; preds = %252, %249
  %255 = phi i64 [ %251, %249 ], [ %253, %252 ]
  %256 = trunc i64 %255 to i32
  ret i32 %256
}

declare dso_local i32 @clear_buffer_new(%struct.buffer_head*) #1

declare dso_local %struct.ext4_ext_path* @ext4_find_extent(%struct.inode*, i64, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ext4_ext_path*) #1

declare dso_local i32 @PTR_ERR(%struct.ext4_ext_path*) #1

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @ext4_ext_pblock(%struct.ext4_extent*) #1

declare dso_local zeroext i16 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i64 @ext4_ext_is_unwritten(%struct.ext4_extent*) #1

declare dso_local i32 @ext4_ext_convert_to_initialized(i8*, i32*, %struct.inode*, %struct.ext4_ext_path**, i64, i64, i32) #1

declare dso_local i64 @ext4_ext_next_allocated_block(%struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_ext_find_goal(%struct.inode*, %struct.ext4_ext_path*, i64) #1

declare dso_local i64 @ext4_new_meta_blocks(i8*, i32*, %struct.inode*, i32, i32, i64*, i32*) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @ext4_ext_store_pblock(%struct.ext4_extent*, i64) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @ext4_ext_mark_unwritten(%struct.ext4_extent*) #1

declare dso_local i32 @ext4_ext_insert_extent(i8*, i32*, %struct.inode*, %struct.ext4_ext_path**, %struct.ext4_extent*, i32) #1

declare dso_local i32 @ext4_free_blocks(i8*, i32*, %struct.inode*, i32*, i64, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @get_default_free_blocks_flags(%struct.inode*) #1

declare dso_local i32 @ext4_mark_inode_dirty(i8*, i32*, %struct.inode*) #1

declare dso_local i32 @set_buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @ext4_ext_show_leaf(%struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @set_buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @ext4_ext_drop_refs(%struct.ext4_ext_path*) #1

declare dso_local i32 @kfree(%struct.ext4_ext_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

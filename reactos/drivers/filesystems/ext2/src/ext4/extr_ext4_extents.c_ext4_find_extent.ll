; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_extents.c_ext4_find_extent.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_extents.c_ext4_find_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_ext_path = type { i16, i16, i32*, i32, i32*, %struct.ext4_extent_header*, %struct.buffer_head* }
%struct.ext4_extent_header = type { i32, i32 }
%struct.buffer_head = type { i32 }
%struct.inode = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"depth %d: num %d, max %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"ppos %d > depth %d\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ext4_ext_path* @ext4_find_extent(%struct.inode* %0, i32 %1, %struct.ext4_ext_path** %2, i32 %3) #0 {
  %5 = alloca %struct.ext4_ext_path*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ext4_ext_path**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ext4_extent_header*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.ext4_ext_path*, align 8
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ext4_ext_path** %2, %struct.ext4_ext_path*** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %8, align 8
  %18 = icmp ne %struct.ext4_ext_path** %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %8, align 8
  %21 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %20, align 8
  br label %23

22:                                               ; preds = %4
  br label %23

23:                                               ; preds = %22, %19
  %24 = phi %struct.ext4_ext_path* [ %21, %19 ], [ null, %22 ]
  store %struct.ext4_ext_path* %24, %struct.ext4_ext_path** %12, align 8
  store i16 0, i16* %15, align 2
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = call %struct.ext4_extent_header* @ext_inode_hdr(%struct.inode* %25)
  store %struct.ext4_extent_header* %26, %struct.ext4_extent_header** %10, align 8
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = call signext i16 @ext_depth(%struct.inode* %27)
  store i16 %28, i16* %13, align 2
  %29 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %30 = icmp ne %struct.ext4_ext_path* %29, null
  br i1 %30, label %31, label %47

31:                                               ; preds = %23
  %32 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %33 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %32)
  %34 = load i16, i16* %13, align 2
  %35 = sext i16 %34 to i32
  %36 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %37 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %36, i64 0
  %38 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %37, i32 0, i32 0
  %39 = load i16, i16* %38, align 8
  %40 = sext i16 %39 to i32
  %41 = icmp sgt i32 %35, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %31
  %43 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %44 = call i32 @kfree(%struct.ext4_ext_path* %43)
  store %struct.ext4_ext_path* null, %struct.ext4_ext_path** %12, align 8
  %45 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %8, align 8
  store %struct.ext4_ext_path* null, %struct.ext4_ext_path** %45, align 8
  br label %46

46:                                               ; preds = %42, %31
  br label %47

47:                                               ; preds = %46, %23
  %48 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %49 = icmp ne %struct.ext4_ext_path* %48, null
  br i1 %49, label %77, label %50

50:                                               ; preds = %47
  %51 = load i16, i16* %13, align 2
  %52 = sext i16 %51 to i32
  %53 = add nsw i32 %52, 2
  %54 = sext i32 %53 to i64
  %55 = mul i64 48, %54
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* @GFP_NOFS, align 4
  %58 = call %struct.ext4_ext_path* @kzalloc(i32 %56, i32 %57)
  store %struct.ext4_ext_path* %58, %struct.ext4_ext_path** %12, align 8
  %59 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %60 = icmp ne %struct.ext4_ext_path* %59, null
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %50
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  %68 = call %struct.ext4_ext_path* @ERR_PTR(i32 %67)
  store %struct.ext4_ext_path* %68, %struct.ext4_ext_path** %5, align 8
  br label %250

69:                                               ; preds = %50
  %70 = load i16, i16* %13, align 2
  %71 = sext i16 %70 to i32
  %72 = add nsw i32 %71, 1
  %73 = trunc i32 %72 to i16
  %74 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %75 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %74, i64 0
  %76 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %75, i32 0, i32 0
  store i16 %73, i16* %76, align 8
  br label %77

77:                                               ; preds = %69, %47
  %78 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %10, align 8
  %79 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %80 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %79, i64 0
  %81 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %80, i32 0, i32 5
  store %struct.ext4_extent_header* %78, %struct.ext4_extent_header** %81, align 8
  %82 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %83 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %82, i64 0
  %84 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %83, i32 0, i32 6
  store %struct.buffer_head* null, %struct.buffer_head** %84, align 8
  %85 = load i16, i16* %13, align 2
  store i16 %85, i16* %14, align 2
  br label %86

86:                                               ; preds = %171, %77
  %87 = load i16, i16* %14, align 2
  %88 = icmp ne i16 %87, 0
  br i1 %88, label %89, label %184

89:                                               ; preds = %86
  %90 = load i16, i16* %15, align 2
  %91 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %10, align 8
  %92 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @le16_to_cpu(i32 %93)
  %95 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %10, align 8
  %96 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @le16_to_cpu(i32 %97)
  %99 = call i32 @ext_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i16 signext %90, i32 %94, i32 %98)
  %100 = load %struct.inode*, %struct.inode** %6, align 8
  %101 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %102 = load i16, i16* %15, align 2
  %103 = sext i16 %102 to i32
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %101, i64 %104
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @ext4_ext_binsearch_idx(%struct.inode* %100, %struct.ext4_ext_path* %105, i32 %106)
  %108 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %109 = load i16, i16* %15, align 2
  %110 = sext i16 %109 to i64
  %111 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %108, i64 %110
  %112 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %111, i32 0, i32 4
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @ext4_idx_pblock(i32* %113)
  %115 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %116 = load i16, i16* %15, align 2
  %117 = sext i16 %116 to i64
  %118 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %115, i64 %117
  %119 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %118, i32 0, i32 3
  store i32 %114, i32* %119, align 8
  %120 = load i16, i16* %14, align 2
  %121 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %122 = load i16, i16* %15, align 2
  %123 = sext i16 %122 to i64
  %124 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %121, i64 %123
  %125 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %124, i32 0, i32 1
  store i16 %120, i16* %125, align 2
  %126 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %127 = load i16, i16* %15, align 2
  %128 = sext i16 %127 to i64
  %129 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %126, i64 %128
  %130 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %129, i32 0, i32 2
  store i32* null, i32** %130, align 8
  %131 = load %struct.inode*, %struct.inode** %6, align 8
  %132 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %133 = load i16, i16* %15, align 2
  %134 = sext i16 %133 to i64
  %135 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %132, i64 %134
  %136 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = load i16, i16* %14, align 2
  %139 = add i16 %138, -1
  store i16 %139, i16* %14, align 2
  %140 = load i32, i32* %9, align 4
  %141 = call %struct.buffer_head* @read_extent_tree_block(%struct.inode* %131, i32 %137, i16 signext %139, i32 %140)
  store %struct.buffer_head* %141, %struct.buffer_head** %11, align 8
  %142 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %143 = call i32 @IS_ERR(%struct.buffer_head* %142)
  %144 = call i64 @unlikely(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %89
  %147 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %148 = call i32 @PTR_ERR(%struct.buffer_head* %147)
  store i32 %148, i32* %16, align 4
  br label %234

149:                                              ; preds = %89
  %150 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %151 = call %struct.ext4_extent_header* @ext_block_hdr(%struct.buffer_head* %150)
  store %struct.ext4_extent_header* %151, %struct.ext4_extent_header** %10, align 8
  %152 = load i16, i16* %15, align 2
  %153 = add i16 %152, 1
  store i16 %153, i16* %15, align 2
  %154 = load i16, i16* %15, align 2
  %155 = sext i16 %154 to i32
  %156 = load i16, i16* %13, align 2
  %157 = sext i16 %156 to i32
  %158 = icmp sgt i32 %155, %157
  %159 = zext i1 %158 to i32
  %160 = call i64 @unlikely(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %149
  %163 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %164 = call i32 @extents_brelse(%struct.buffer_head* %163)
  %165 = load %struct.inode*, %struct.inode** %6, align 8
  %166 = load i16, i16* %15, align 2
  %167 = load i16, i16* %13, align 2
  %168 = call i32 @EXT4_ERROR_INODE(%struct.inode* %165, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i16 signext %166, i16 signext %167)
  %169 = load i32, i32* @EIO, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %16, align 4
  br label %234

171:                                              ; preds = %149
  %172 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %173 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %174 = load i16, i16* %15, align 2
  %175 = sext i16 %174 to i64
  %176 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %173, i64 %175
  %177 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %176, i32 0, i32 6
  store %struct.buffer_head* %172, %struct.buffer_head** %177, align 8
  %178 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %10, align 8
  %179 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %180 = load i16, i16* %15, align 2
  %181 = sext i16 %180 to i64
  %182 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %179, i64 %181
  %183 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %182, i32 0, i32 5
  store %struct.ext4_extent_header* %178, %struct.ext4_extent_header** %183, align 8
  br label %86

184:                                              ; preds = %86
  %185 = load i16, i16* %14, align 2
  %186 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %187 = load i16, i16* %15, align 2
  %188 = sext i16 %187 to i64
  %189 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %186, i64 %188
  %190 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %189, i32 0, i32 1
  store i16 %185, i16* %190, align 2
  %191 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %192 = load i16, i16* %15, align 2
  %193 = sext i16 %192 to i64
  %194 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %191, i64 %193
  %195 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %194, i32 0, i32 2
  store i32* null, i32** %195, align 8
  %196 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %197 = load i16, i16* %15, align 2
  %198 = sext i16 %197 to i64
  %199 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %196, i64 %198
  %200 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %199, i32 0, i32 4
  store i32* null, i32** %200, align 8
  %201 = load %struct.inode*, %struct.inode** %6, align 8
  %202 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %203 = load i16, i16* %15, align 2
  %204 = sext i16 %203 to i32
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %202, i64 %205
  %207 = load i32, i32* %7, align 4
  %208 = call i32 @ext4_ext_binsearch(%struct.inode* %201, %struct.ext4_ext_path* %206, i32 %207)
  %209 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %210 = load i16, i16* %15, align 2
  %211 = sext i16 %210 to i64
  %212 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %209, i64 %211
  %213 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %212, i32 0, i32 2
  %214 = load i32*, i32** %213, align 8
  %215 = icmp ne i32* %214, null
  br i1 %215, label %216, label %229

216:                                              ; preds = %184
  %217 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %218 = load i16, i16* %15, align 2
  %219 = sext i16 %218 to i64
  %220 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %217, i64 %219
  %221 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %220, i32 0, i32 2
  %222 = load i32*, i32** %221, align 8
  %223 = call i32 @ext4_ext_pblock(i32* %222)
  %224 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %225 = load i16, i16* %15, align 2
  %226 = sext i16 %225 to i64
  %227 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %224, i64 %226
  %228 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %227, i32 0, i32 3
  store i32 %223, i32* %228, align 8
  br label %229

229:                                              ; preds = %216, %184
  %230 = load %struct.inode*, %struct.inode** %6, align 8
  %231 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %232 = call i32 @ext4_ext_show_path(%struct.inode* %230, %struct.ext4_ext_path* %231)
  %233 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  store %struct.ext4_ext_path* %233, %struct.ext4_ext_path** %5, align 8
  br label %250

234:                                              ; preds = %162, %146
  %235 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %236 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %235)
  %237 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %238 = icmp ne %struct.ext4_ext_path* %237, null
  br i1 %238, label %239, label %247

239:                                              ; preds = %234
  %240 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %241 = call i32 @kfree(%struct.ext4_ext_path* %240)
  %242 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %8, align 8
  %243 = icmp ne %struct.ext4_ext_path** %242, null
  br i1 %243, label %244, label %246

244:                                              ; preds = %239
  %245 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %8, align 8
  store %struct.ext4_ext_path* null, %struct.ext4_ext_path** %245, align 8
  br label %246

246:                                              ; preds = %244, %239
  br label %247

247:                                              ; preds = %246, %234
  %248 = load i32, i32* %16, align 4
  %249 = call %struct.ext4_ext_path* @ERR_PTR(i32 %248)
  store %struct.ext4_ext_path* %249, %struct.ext4_ext_path** %5, align 8
  br label %250

250:                                              ; preds = %247, %229, %65
  %251 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %5, align 8
  ret %struct.ext4_ext_path* %251
}

declare dso_local %struct.ext4_extent_header* @ext_inode_hdr(%struct.inode*) #1

declare dso_local signext i16 @ext_depth(%struct.inode*) #1

declare dso_local i32 @ext4_ext_drop_refs(%struct.ext4_ext_path*) #1

declare dso_local i32 @kfree(%struct.ext4_ext_path*) #1

declare dso_local %struct.ext4_ext_path* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.ext4_ext_path* @ERR_PTR(i32) #1

declare dso_local i32 @ext_debug(i8*, i16 signext, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ext4_ext_binsearch_idx(%struct.inode*, %struct.ext4_ext_path*, i32) #1

declare dso_local i32 @ext4_idx_pblock(i32*) #1

declare dso_local %struct.buffer_head* @read_extent_tree_block(%struct.inode*, i32, i16 signext, i32) #1

declare dso_local i32 @IS_ERR(%struct.buffer_head*) #1

declare dso_local i32 @PTR_ERR(%struct.buffer_head*) #1

declare dso_local %struct.ext4_extent_header* @ext_block_hdr(%struct.buffer_head*) #1

declare dso_local i32 @extents_brelse(%struct.buffer_head*) #1

declare dso_local i32 @EXT4_ERROR_INODE(%struct.inode*, i8*, i16 signext, i16 signext) #1

declare dso_local i32 @ext4_ext_binsearch(%struct.inode*, %struct.ext4_ext_path*, i32) #1

declare dso_local i32 @ext4_ext_pblock(i32*) #1

declare dso_local i32 @ext4_ext_show_path(%struct.inode*, %struct.ext4_ext_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

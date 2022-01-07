; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_punch.c_ext2fs_punch_extent.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_punch.c_ext2fs_punch_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2_inode = type { i32 }
%struct.ext2fs_extent = type { i32, i32, i32, i32 }

@EXT2_EXTENT_CURRENT = common dso_local global i32 0, align 4
@EXT2_ET_NO_CURRENT_NODE = common dso_local global i64 0, align 8
@EXT2_EXTENT_NEXT_LEAF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"main loop\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"start %llu, end %llu, next %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Case #%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"inserting\00", align 1
@EXT2_EXTENT_INSERT_AFTER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"replacing\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"deleting current extent%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EXT2_ET_EXTENT_NO_NEXT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [34 x i8] c"Free start %llu, free count = %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"Freed %d blocks\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, %struct.ext2_inode*, i32, i32)* @ext2fs_punch_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ext2fs_punch_extent(i32 %0, i32 %1, %struct.ext2_inode* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ext2_inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ext2fs_extent, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.ext2fs_extent, align 4
  %23 = alloca %struct.ext2fs_extent, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.ext2_inode* %2, %struct.ext2_inode** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %20, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.ext2_inode*, %struct.ext2_inode** %9, align 8
  %29 = call i64 @ext2fs_extent_open2(i32 %26, i32 %27, %struct.ext2_inode* %28, i32* %12)
  store i64 %29, i64* %14, align 8
  %30 = load i64, i64* %14, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %5
  %33 = load i64, i64* %14, align 8
  store i64 %33, i64* %6, align 8
  br label %321

34:                                               ; preds = %5
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i64 @ext2fs_extent_goto(i32 %35, i32 %36)
  store i64 %37, i64* %14, align 8
  %38 = load i64, i64* %14, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %317

41:                                               ; preds = %34
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @EXT2_EXTENT_CURRENT, align 4
  %44 = call i64 @ext2fs_extent_get(i32 %42, i32 %43, %struct.ext2fs_extent* %13)
  store i64 %44, i64* %14, align 8
  %45 = load i64, i64* %14, align 8
  %46 = load i64, i64* @EXT2_ET_NO_CURRENT_NODE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i64 0, i64* %14, align 8
  br label %317

49:                                               ; preds = %41
  %50 = load i64, i64* %14, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %317

53:                                               ; preds = %49
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54, %309
  %56 = load i32, i32* @EXT2_EXTENT_NEXT_LEAF, align 4
  store i32 %56, i32* %21, align 4
  %57 = call i32 @dbg_print_extent(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.ext2fs_extent* %13)
  %58 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %13, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %13, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %59, %61
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = load i32, i32* %16, align 4
  %68 = sext i32 %67 to i64
  %69 = call i32 (i8*, ...) @dbg_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %64, i64 %66, i64 %68)
  %70 = load i32, i32* %10, align 4
  %71 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %13, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp sle i32 %70, %72
  br i1 %73, label %74, label %111

74:                                               ; preds = %55
  %75 = load i32, i32* %11, align 4
  %76 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %13, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %310

80:                                               ; preds = %74
  %81 = call i32 (i8*, ...) @dbg_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %82 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %13, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %15, align 4
  %84 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %13, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %17, align 4
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %80
  %90 = load i32, i32* %11, align 4
  %91 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %13, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %90, %92
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %18, align 4
  br label %98

95:                                               ; preds = %80
  %96 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %13, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %18, align 4
  br label %98

98:                                               ; preds = %95, %89
  %99 = load i32, i32* %18, align 4
  %100 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %13, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 %101, %99
  store i32 %102, i32* %100, align 4
  %103 = load i32, i32* %18, align 4
  %104 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %13, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, %103
  store i32 %106, i32* %104, align 4
  %107 = load i32, i32* %18, align 4
  %108 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %13, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, %107
  store i32 %110, i32* %108, align 4
  br label %205

111:                                              ; preds = %55
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %16, align 4
  %114 = sub nsw i32 %113, 1
  %115 = icmp sge i32 %112, %114
  br i1 %115, label %116, label %141

116:                                              ; preds = %111
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %16, align 4
  %119 = icmp sge i32 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  br label %293

121:                                              ; preds = %116
  %122 = call i32 (i8*, ...) @dbg_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %123 = load i32, i32* %10, align 4
  %124 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %13, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = sub nsw i32 %123, %125
  store i32 %126, i32* %19, align 4
  %127 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %13, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %19, align 4
  %130 = add nsw i32 %128, %129
  store i32 %130, i32* %15, align 4
  %131 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %13, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %19, align 4
  %134 = add nsw i32 %132, %133
  store i32 %134, i32* %17, align 4
  %135 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %13, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %19, align 4
  %138 = sub nsw i32 %136, %137
  store i32 %138, i32* %18, align 4
  %139 = load i32, i32* %19, align 4
  %140 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %13, i32 0, i32 1
  store i32 %139, i32* %140, align 4
  br label %204

141:                                              ; preds = %111
  %142 = call i32 (i8*, ...) @dbg_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %143 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %13, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %145, 1
  %147 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %13, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = sub nsw i32 %146, %148
  %150 = add nsw i32 %144, %149
  %151 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %22, i32 0, i32 2
  store i32 %150, i32* %151, align 4
  %152 = load i32, i32* %11, align 4
  %153 = add nsw i32 %152, 1
  %154 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %22, i32 0, i32 0
  store i32 %153, i32* %154, align 4
  %155 = load i32, i32* %16, align 4
  %156 = load i32, i32* %11, align 4
  %157 = sub nsw i32 %155, %156
  %158 = sub nsw i32 %157, 1
  %159 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %22, i32 0, i32 1
  store i32 %158, i32* %159, align 4
  %160 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %13, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %22, i32 0, i32 3
  store i32 %161, i32* %162, align 4
  %163 = load i32, i32* %10, align 4
  %164 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %13, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = sub nsw i32 %163, %165
  %167 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %13, i32 0, i32 1
  store i32 %166, i32* %167, align 4
  %168 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %13, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %13, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %169, %171
  store i32 %172, i32* %15, align 4
  %173 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %13, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %13, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %174, %176
  store i32 %177, i32* %17, align 4
  %178 = load i32, i32* %11, align 4
  %179 = load i32, i32* %10, align 4
  %180 = sub nsw i32 %178, %179
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %18, align 4
  %182 = call i32 @dbg_print_extent(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), %struct.ext2fs_extent* %22)
  %183 = load i32, i32* %12, align 4
  %184 = load i32, i32* @EXT2_EXTENT_INSERT_AFTER, align 4
  %185 = call i64 @ext2fs_extent_insert(i32 %183, i32 %184, %struct.ext2fs_extent* %22)
  store i64 %185, i64* %14, align 8
  %186 = load i64, i64* %14, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %141
  br label %317

189:                                              ; preds = %141
  %190 = load i32, i32* %12, align 4
  %191 = call i64 @ext2fs_extent_fix_parents(i32 %190)
  store i64 %191, i64* %14, align 8
  %192 = load i64, i64* %14, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %189
  br label %317

195:                                              ; preds = %189
  %196 = load i32, i32* %12, align 4
  %197 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %13, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i64 @ext2fs_extent_goto(i32 %196, i32 %198)
  store i64 %199, i64* %14, align 8
  %200 = load i64, i64* %14, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %195
  br label %317

203:                                              ; preds = %195
  br label %204

204:                                              ; preds = %203, %121
  br label %205

205:                                              ; preds = %204, %98
  %206 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %13, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %219

209:                                              ; preds = %205
  %210 = call i32 @dbg_print_extent(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), %struct.ext2fs_extent* %13)
  %211 = load i32, i32* %12, align 4
  %212 = call i64 @ext2fs_extent_replace(i32 %211, i32 0, %struct.ext2fs_extent* %13)
  store i64 %212, i64* %14, align 8
  %213 = load i64, i64* %14, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %209
  br label %317

216:                                              ; preds = %209
  %217 = load i32, i32* %12, align 4
  %218 = call i64 @ext2fs_extent_fix_parents(i32 %217)
  store i64 %218, i64* %14, align 8
  br label %274

219:                                              ; preds = %205
  %220 = call i32 (i8*, ...) @dbg_printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  %221 = load i32, i32* %12, align 4
  %222 = load i32, i32* @EXT2_EXTENT_CURRENT, align 4
  %223 = call i64 @ext2fs_extent_get(i32 %221, i32 %222, %struct.ext2fs_extent* %23)
  store i64 %223, i64* %14, align 8
  %224 = load i64, i64* %14, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %219
  br label %317

227:                                              ; preds = %219
  %228 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %23, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  store i32 %229, i32* %24, align 4
  %230 = load i32, i32* %12, align 4
  %231 = load i32, i32* @EXT2_EXTENT_NEXT_LEAF, align 4
  %232 = call i64 @ext2fs_extent_get(i32 %230, i32 %231, %struct.ext2fs_extent* %23)
  store i64 %232, i64* %14, align 8
  %233 = load i64, i64* %14, align 8
  %234 = load i64, i64* @EXT2_ET_EXTENT_NO_NEXT, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %238

236:                                              ; preds = %227
  %237 = load i32, i32* %24, align 4
  store i32 %237, i32* %25, align 4
  br label %246

238:                                              ; preds = %227
  %239 = load i64, i64* %14, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %238
  br label %317

242:                                              ; preds = %238
  %243 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %23, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  store i32 %244, i32* %25, align 4
  br label %245

245:                                              ; preds = %242
  br label %246

246:                                              ; preds = %245, %236
  %247 = load i32, i32* %12, align 4
  %248 = load i32, i32* %24, align 4
  %249 = call i64 @ext2fs_extent_goto(i32 %247, i32 %248)
  store i64 %249, i64* %14, align 8
  %250 = load i64, i64* %14, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %246
  br label %317

253:                                              ; preds = %246
  %254 = load i32, i32* %12, align 4
  %255 = call i64 @ext2fs_extent_delete(i32 %254, i32 0)
  store i64 %255, i64* %14, align 8
  %256 = load i64, i64* %14, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %253
  br label %317

259:                                              ; preds = %253
  %260 = load i32, i32* %12, align 4
  %261 = call i64 @ext2fs_extent_fix_parents(i32 %260)
  store i64 %261, i64* %14, align 8
  %262 = load i64, i64* %14, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %269

264:                                              ; preds = %259
  %265 = load i64, i64* %14, align 8
  %266 = load i64, i64* @EXT2_ET_NO_CURRENT_NODE, align 8
  %267 = icmp ne i64 %265, %266
  br i1 %267, label %268, label %269

268:                                              ; preds = %264
  br label %317

269:                                              ; preds = %264, %259
  store i64 0, i64* %14, align 8
  %270 = load i32, i32* %12, align 4
  %271 = load i32, i32* %25, align 4
  %272 = call i64 @ext2fs_extent_goto(i32 %270, i32 %271)
  %273 = load i32, i32* @EXT2_EXTENT_CURRENT, align 4
  store i32 %273, i32* %21, align 4
  br label %274

274:                                              ; preds = %269, %216
  %275 = load i64, i64* %14, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %274
  br label %317

278:                                              ; preds = %274
  %279 = load i32, i32* %15, align 4
  %280 = load i32, i32* %18, align 4
  %281 = call i32 (i8*, ...) @dbg_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %279, i32 %280)
  %282 = load i32, i32* %7, align 4
  %283 = load i32, i32* %8, align 4
  %284 = load %struct.ext2_inode*, %struct.ext2_inode** %9, align 8
  %285 = load i32, i32* %17, align 4
  %286 = load i32, i32* %15, align 4
  %287 = load i32, i32* %18, align 4
  %288 = call i64 @punch_extent_blocks(i32 %282, i32 %283, %struct.ext2_inode* %284, i32 %285, i32 %286, i32 %287, i32* %20)
  store i64 %288, i64* %14, align 8
  %289 = load i64, i64* %14, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %292

291:                                              ; preds = %278
  br label %317

292:                                              ; preds = %278
  br label %293

293:                                              ; preds = %292, %120
  %294 = load i32, i32* %12, align 4
  %295 = load i32, i32* %21, align 4
  %296 = call i64 @ext2fs_extent_get(i32 %294, i32 %295, %struct.ext2fs_extent* %13)
  store i64 %296, i64* %14, align 8
  %297 = load i64, i64* %14, align 8
  %298 = load i64, i64* @EXT2_ET_EXTENT_NO_NEXT, align 8
  %299 = icmp eq i64 %297, %298
  br i1 %299, label %304, label %300

300:                                              ; preds = %293
  %301 = load i64, i64* %14, align 8
  %302 = load i64, i64* @EXT2_ET_NO_CURRENT_NODE, align 8
  %303 = icmp eq i64 %301, %302
  br i1 %303, label %304, label %305

304:                                              ; preds = %300, %293
  br label %310

305:                                              ; preds = %300
  %306 = load i64, i64* %14, align 8
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %309

308:                                              ; preds = %305
  br label %317

309:                                              ; preds = %305
  br label %55

310:                                              ; preds = %304, %79
  %311 = load i32, i32* %20, align 4
  %312 = call i32 (i8*, ...) @dbg_printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %311)
  %313 = load i32, i32* %7, align 4
  %314 = load %struct.ext2_inode*, %struct.ext2_inode** %9, align 8
  %315 = load i32, i32* %20, align 4
  %316 = call i64 @ext2fs_iblk_sub_blocks(i32 %313, %struct.ext2_inode* %314, i32 %315)
  store i64 %316, i64* %14, align 8
  br label %317

317:                                              ; preds = %310, %308, %291, %277, %268, %258, %252, %241, %226, %215, %202, %194, %188, %52, %48, %40
  %318 = load i32, i32* %12, align 4
  %319 = call i32 @ext2fs_extent_free(i32 %318)
  %320 = load i64, i64* %14, align 8
  store i64 %320, i64* %6, align 8
  br label %321

321:                                              ; preds = %317, %32
  %322 = load i64, i64* %6, align 8
  ret i64 %322
}

declare dso_local i64 @ext2fs_extent_open2(i32, i32, %struct.ext2_inode*, i32*) #1

declare dso_local i64 @ext2fs_extent_goto(i32, i32) #1

declare dso_local i64 @ext2fs_extent_get(i32, i32, %struct.ext2fs_extent*) #1

declare dso_local i32 @dbg_print_extent(i8*, %struct.ext2fs_extent*) #1

declare dso_local i32 @dbg_printf(i8*, ...) #1

declare dso_local i64 @ext2fs_extent_insert(i32, i32, %struct.ext2fs_extent*) #1

declare dso_local i64 @ext2fs_extent_fix_parents(i32) #1

declare dso_local i64 @ext2fs_extent_replace(i32, i32, %struct.ext2fs_extent*) #1

declare dso_local i64 @ext2fs_extent_delete(i32, i32) #1

declare dso_local i64 @punch_extent_blocks(i32, i32, %struct.ext2_inode*, i32, i32, i32, i32*) #1

declare dso_local i64 @ext2fs_iblk_sub_blocks(i32, %struct.ext2_inode*, i32) #1

declare dso_local i32 @ext2fs_extent_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

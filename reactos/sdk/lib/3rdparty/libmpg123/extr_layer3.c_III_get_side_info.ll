; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_layer3.c_III_get_side_info.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_layer3.c_III_get_side_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i64, i32, i8*, i32, i32, i32, i64, i64, i64, i32 }
%struct.III_sideinfo = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.gr_info_s* }
%struct.gr_info_s = type { i32, i64, i32, i64, i32, i32*, i32, i32, i8*, i8*, i8*, i8*, i64, i64* }

@SINGLE_MIX = common dso_local global i32 0, align 4
@__const.III_get_side_info.tabs = private unnamed_addr constant [2 x [5 x i32]] [[5 x i32] [i32 2, i32 9, i32 5, i32 3, i32 4], [5 x i32] [i32 1, i32 8, i32 1, i32 2, i32 9]], align 16
@VERBOSE2 = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Note: missing %d bytes in bit reservoir for frame %li\0A\00", align 1
@NOQUIET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"big_values too large!\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"scalefac_compress _should_ be zero instead of %i\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"Blocktype == 0 and window-switching == 1 not allowed.\00", align 1
@bandInfo = common dso_local global %struct.TYPE_11__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.III_sideinfo*, i32, i32, i64, i32)* @III_get_side_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @III_get_side_info(%struct.TYPE_10__* %0, %struct.III_sideinfo* %1, i32 %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.III_sideinfo*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [2 x [5 x i32]], align 16
  %18 = alloca i32*, align 8
  %19 = alloca %struct.gr_info_s*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store %struct.III_sideinfo* %1, %struct.III_sideinfo** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* @SINGLE_MIX, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 4, i32 0
  store i32 %30, i32* %16, align 4
  %31 = bitcast [2 x [5 x i32]]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %31, i8* align 16 bitcast ([2 x [5 x i32]]* @__const.III_get_side_info.tabs to i8*), i64 40, i1 false)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds [2 x [5 x i32]], [2 x [5 x i32]]* %17, i64 0, i64 %34
  %36 = getelementptr inbounds [5 x i32], [5 x i32]* %35, i64 0, i64 0
  store i32* %36, i32** %18, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %38 = load i32*, i32** %18, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @getbits(%struct.TYPE_10__* %37, i32 %40)
  %42 = ptrtoint i8* %41 to i32
  %43 = load %struct.III_sideinfo*, %struct.III_sideinfo** %9, align 8
  %44 = getelementptr inbounds %struct.III_sideinfo, %struct.III_sideinfo* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.III_sideinfo*, %struct.III_sideinfo** %9, align 8
  %46 = getelementptr inbounds %struct.III_sideinfo, %struct.III_sideinfo* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp sgt i32 %47, %50
  br i1 %51, label %52, label %130

52:                                               ; preds = %6
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 9
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %73, label %57

57:                                               ; preds = %52
  %58 = load i64, i64* @VERBOSE2, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %57
  %61 = load i32, i32* @stderr, align 4
  %62 = load %struct.III_sideinfo*, %struct.III_sideinfo** %9, align 8
  %63 = getelementptr inbounds %struct.III_sideinfo, %struct.III_sideinfo* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %64, %67
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 8
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @fprintf(i32 %61, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %68, i64 %71)
  br label %73

73:                                               ; preds = %60, %57, %52
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %75 = load i32*, i32** %18, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @backbits(%struct.TYPE_10__* %74, i32 %77)
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %103

83:                                               ; preds = %73
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = ashr i32 %86, 1
  %88 = trunc i32 %87 to i8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  store i8 %88, i8* %92, align 1
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = and i32 %95, 1
  %97 = shl i32 %96, 7
  %98 = trunc i32 %97 to i8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  %101 = load i8*, i8** %100, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  store i8 %98, i8* %102, align 1
  br label %112

103:                                              ; preds = %73
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = trunc i32 %106 to i8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 0
  store i8 %107, i8* %111, align 1
  br label %112

112:                                              ; preds = %103, %83
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  %115 = load i8*, i8** %114, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 2
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = sub nsw i32 %119, 2
  %121 = call i32 @memset(i8* %116, i32 0, i32 %120)
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %123 = load i32*, i32** %18, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = call i8* @getbits(%struct.TYPE_10__* %122, i32 %125)
  %127 = ptrtoint i8* %126 to i32
  %128 = load %struct.III_sideinfo*, %struct.III_sideinfo** %9, align 8
  %129 = getelementptr inbounds %struct.III_sideinfo, %struct.III_sideinfo* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  br label %130

130:                                              ; preds = %112, %6
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %133, %136
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = sub nsw i32 %137, %140
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 7
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i32 2, i32 0
  %148 = sub nsw i32 %141, %147
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 8
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp eq i64 %156, 0
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i32 511, i32 255
  %160 = icmp ugt i32 %153, %159
  br i1 %160, label %161, label %170

161:                                              ; preds = %130
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp eq i64 %164, 0
  %166 = zext i1 %165 to i64
  %167 = select i1 %165, i32 511, i32 255
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 8
  br label %170

170:                                              ; preds = %161, %130
  %171 = load i32, i32* %10, align 4
  %172 = icmp eq i32 %171, 1
  br i1 %172, label %173, label %181

173:                                              ; preds = %170
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %175 = load i32*, i32** %18, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 2
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @getbits_fast(%struct.TYPE_10__* %174, i32 %177)
  %179 = load %struct.III_sideinfo*, %struct.III_sideinfo** %9, align 8
  %180 = getelementptr inbounds %struct.III_sideinfo, %struct.III_sideinfo* %179, i32 0, i32 1
  store i32 %178, i32* %180, align 4
  br label %189

181:                                              ; preds = %170
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %183 = load i32*, i32** %18, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 3
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @getbits_fast(%struct.TYPE_10__* %182, i32 %185)
  %187 = load %struct.III_sideinfo*, %struct.III_sideinfo** %9, align 8
  %188 = getelementptr inbounds %struct.III_sideinfo, %struct.III_sideinfo* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 4
  br label %189

189:                                              ; preds = %181, %173
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %226, label %194

194:                                              ; preds = %189
  store i32 0, i32* %14, align 4
  br label %195

195:                                              ; preds = %222, %194
  %196 = load i32, i32* %14, align 4
  %197 = load i32, i32* %10, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %225

199:                                              ; preds = %195
  %200 = load %struct.III_sideinfo*, %struct.III_sideinfo** %9, align 8
  %201 = getelementptr inbounds %struct.III_sideinfo, %struct.III_sideinfo* %200, i32 0, i32 2
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %201, align 8
  %203 = load i32, i32* %14, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 0
  %207 = load %struct.gr_info_s*, %struct.gr_info_s** %206, align 8
  %208 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %207, i64 0
  %209 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %208, i32 0, i32 0
  store i32 -1, i32* %209, align 8
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %211 = call i32 @getbits_fast(%struct.TYPE_10__* %210, i32 4)
  %212 = load %struct.III_sideinfo*, %struct.III_sideinfo** %9, align 8
  %213 = getelementptr inbounds %struct.III_sideinfo, %struct.III_sideinfo* %212, i32 0, i32 2
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %213, align 8
  %215 = load i32, i32* %14, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 0
  %219 = load %struct.gr_info_s*, %struct.gr_info_s** %218, align 8
  %220 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %219, i64 1
  %221 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %220, i32 0, i32 0
  store i32 %211, i32* %221, align 8
  br label %222

222:                                              ; preds = %199
  %223 = load i32, i32* %14, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %14, align 4
  br label %195

225:                                              ; preds = %195
  br label %226

226:                                              ; preds = %225, %189
  store i32 0, i32* %15, align 4
  br label %227

227:                                              ; preds = %543, %226
  %228 = load i32, i32* %15, align 4
  %229 = load i32*, i32** %18, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 0
  %231 = load i32, i32* %230, align 4
  %232 = icmp slt i32 %228, %231
  br i1 %232, label %233, label %546

233:                                              ; preds = %227
  store i32 0, i32* %14, align 4
  br label %234

234:                                              ; preds = %539, %233
  %235 = load i32, i32* %14, align 4
  %236 = load i32, i32* %10, align 4
  %237 = icmp slt i32 %235, %236
  br i1 %237, label %238, label %542

238:                                              ; preds = %234
  %239 = load %struct.III_sideinfo*, %struct.III_sideinfo** %9, align 8
  %240 = getelementptr inbounds %struct.III_sideinfo, %struct.III_sideinfo* %239, i32 0, i32 2
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %240, align 8
  %242 = load i32, i32* %14, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 0
  %246 = load %struct.gr_info_s*, %struct.gr_info_s** %245, align 8
  %247 = load i32, i32* %15, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %246, i64 %248
  store %struct.gr_info_s* %249, %struct.gr_info_s** %19, align 8
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %251 = call i8* @getbits(%struct.TYPE_10__* %250, i32 12)
  %252 = ptrtoint i8* %251 to i64
  %253 = load %struct.gr_info_s*, %struct.gr_info_s** %19, align 8
  %254 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %253, i32 0, i32 1
  store i64 %252, i64* %254, align 8
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %256 = call i8* @getbits(%struct.TYPE_10__* %255, i32 9)
  %257 = ptrtoint i8* %256 to i32
  %258 = load %struct.gr_info_s*, %struct.gr_info_s** %19, align 8
  %259 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %258, i32 0, i32 2
  store i32 %257, i32* %259, align 8
  %260 = load %struct.gr_info_s*, %struct.gr_info_s** %19, align 8
  %261 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = icmp sgt i32 %262, 288
  br i1 %263, label %264, label %272

264:                                              ; preds = %238
  %265 = load i64, i64* @NOQUIET, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %264
  %268 = call i32 @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %269

269:                                              ; preds = %267, %264
  %270 = load %struct.gr_info_s*, %struct.gr_info_s** %19, align 8
  %271 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %270, i32 0, i32 2
  store i32 288, i32* %271, align 8
  br label %272

272:                                              ; preds = %269, %238
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 5
  %275 = load i32, i32* %274, align 8
  %276 = add nsw i32 %275, 256
  %277 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %278 = call i32 @getbits_fast(%struct.TYPE_10__* %277, i32 8)
  %279 = sub nsw i32 %276, %278
  %280 = load i32, i32* %16, align 4
  %281 = add nsw i32 %279, %280
  %282 = sext i32 %281 to i64
  %283 = load %struct.gr_info_s*, %struct.gr_info_s** %19, align 8
  %284 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %283, i32 0, i32 12
  store i64 %282, i64* %284, align 8
  %285 = load i32, i32* %11, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %292

287:                                              ; preds = %272
  %288 = load %struct.gr_info_s*, %struct.gr_info_s** %19, align 8
  %289 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %288, i32 0, i32 12
  %290 = load i64, i64* %289, align 8
  %291 = add nsw i64 %290, 2
  store i64 %291, i64* %289, align 8
  br label %292

292:                                              ; preds = %287, %272
  %293 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %294 = load i32*, i32** %18, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 4
  %296 = load i32, i32* %295, align 4
  %297 = call i8* @getbits(%struct.TYPE_10__* %293, i32 %296)
  %298 = ptrtoint i8* %297 to i64
  %299 = load %struct.gr_info_s*, %struct.gr_info_s** %19, align 8
  %300 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %299, i32 0, i32 3
  store i64 %298, i64* %300, align 8
  %301 = load %struct.gr_info_s*, %struct.gr_info_s** %19, align 8
  %302 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %301, i32 0, i32 1
  %303 = load i64, i64* %302, align 8
  %304 = icmp eq i64 %303, 0
  br i1 %304, label %305, label %318

305:                                              ; preds = %292
  %306 = load %struct.gr_info_s*, %struct.gr_info_s** %19, align 8
  %307 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %306, i32 0, i32 3
  %308 = load i64, i64* %307, align 8
  %309 = icmp sgt i64 %308, 0
  br i1 %309, label %310, label %315

310:                                              ; preds = %305
  %311 = load %struct.gr_info_s*, %struct.gr_info_s** %19, align 8
  %312 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %311, i32 0, i32 3
  %313 = load i64, i64* %312, align 8
  %314 = call i32 @debug1(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i64 %313)
  br label %315

315:                                              ; preds = %310, %305
  %316 = load %struct.gr_info_s*, %struct.gr_info_s** %19, align 8
  %317 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %316, i32 0, i32 3
  store i64 0, i64* %317, align 8
  br label %318

318:                                              ; preds = %315, %292
  %319 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %320 = call i8* @get1bit(%struct.TYPE_10__* %319)
  %321 = icmp ne i8* %320, null
  br i1 %321, label %322, label %455

322:                                              ; preds = %318
  %323 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %324 = call i32 @getbits_fast(%struct.TYPE_10__* %323, i32 2)
  %325 = load %struct.gr_info_s*, %struct.gr_info_s** %19, align 8
  %326 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %325, i32 0, i32 4
  store i32 %324, i32* %326, align 8
  %327 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %328 = call i8* @get1bit(%struct.TYPE_10__* %327)
  %329 = load %struct.gr_info_s*, %struct.gr_info_s** %19, align 8
  %330 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %329, i32 0, i32 11
  store i8* %328, i8** %330, align 8
  %331 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %332 = call i32 @getbits_fast(%struct.TYPE_10__* %331, i32 5)
  %333 = load %struct.gr_info_s*, %struct.gr_info_s** %19, align 8
  %334 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %333, i32 0, i32 5
  %335 = load i32*, i32** %334, align 8
  %336 = getelementptr inbounds i32, i32* %335, i64 0
  store i32 %332, i32* %336, align 4
  %337 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %338 = call i32 @getbits_fast(%struct.TYPE_10__* %337, i32 5)
  %339 = load %struct.gr_info_s*, %struct.gr_info_s** %19, align 8
  %340 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %339, i32 0, i32 5
  %341 = load i32*, i32** %340, align 8
  %342 = getelementptr inbounds i32, i32* %341, i64 1
  store i32 %338, i32* %342, align 4
  %343 = load %struct.gr_info_s*, %struct.gr_info_s** %19, align 8
  %344 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %343, i32 0, i32 5
  %345 = load i32*, i32** %344, align 8
  %346 = getelementptr inbounds i32, i32* %345, i64 2
  store i32 0, i32* %346, align 4
  store i32 0, i32* %20, align 4
  br label %347

347:                                              ; preds = %365, %322
  %348 = load i32, i32* %20, align 4
  %349 = icmp slt i32 %348, 3
  br i1 %349, label %350, label %368

350:                                              ; preds = %347
  %351 = load %struct.gr_info_s*, %struct.gr_info_s** %19, align 8
  %352 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %351, i32 0, i32 12
  %353 = load i64, i64* %352, align 8
  %354 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %355 = call i32 @getbits_fast(%struct.TYPE_10__* %354, i32 3)
  %356 = shl i32 %355, 3
  %357 = sext i32 %356 to i64
  %358 = add nsw i64 %353, %357
  %359 = load %struct.gr_info_s*, %struct.gr_info_s** %19, align 8
  %360 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %359, i32 0, i32 13
  %361 = load i64*, i64** %360, align 8
  %362 = load i32, i32* %20, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i64, i64* %361, i64 %363
  store i64 %358, i64* %364, align 8
  br label %365

365:                                              ; preds = %350
  %366 = load i32, i32* %20, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %20, align 4
  br label %347

368:                                              ; preds = %347
  %369 = load %struct.gr_info_s*, %struct.gr_info_s** %19, align 8
  %370 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %369, i32 0, i32 4
  %371 = load i32, i32* %370, align 8
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %379

373:                                              ; preds = %368
  %374 = load i64, i64* @NOQUIET, align 8
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %378

376:                                              ; preds = %373
  %377 = call i32 @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  br label %378

378:                                              ; preds = %376, %373
  store i32 1, i32* %7, align 4
  br label %547

379:                                              ; preds = %368
  %380 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %381 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %380, i32 0, i32 0
  %382 = load i64, i64* %381, align 8
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %389

384:                                              ; preds = %379
  %385 = load %struct.gr_info_s*, %struct.gr_info_s** %19, align 8
  %386 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %385, i32 0, i32 4
  %387 = load i32, i32* %386, align 8
  %388 = icmp eq i32 %387, 2
  br i1 %388, label %389, label %399

389:                                              ; preds = %384, %379
  %390 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %391 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %390, i32 0, i32 6
  %392 = load i64, i64* %391, align 8
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %399, label %394

394:                                              ; preds = %389
  %395 = load %struct.gr_info_s*, %struct.gr_info_s** %19, align 8
  %396 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %395, i32 0, i32 6
  store i32 18, i32* %396, align 8
  %397 = load %struct.gr_info_s*, %struct.gr_info_s** %19, align 8
  %398 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %397, i32 0, i32 7
  store i32 288, i32* %398, align 4
  br label %454

399:                                              ; preds = %389, %384
  %400 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %401 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %400, i32 0, i32 6
  %402 = load i64, i64* %401, align 8
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %448

404:                                              ; preds = %399
  %405 = load %struct.gr_info_s*, %struct.gr_info_s** %19, align 8
  %406 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %405, i32 0, i32 4
  %407 = load i32, i32* %406, align 8
  %408 = icmp eq i32 %407, 2
  br i1 %408, label %409, label %415

409:                                              ; preds = %404
  %410 = load %struct.gr_info_s*, %struct.gr_info_s** %19, align 8
  %411 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %410, i32 0, i32 11
  %412 = load i8*, i8** %411, align 8
  %413 = icmp ne i8* %412, null
  br i1 %413, label %415, label %414

414:                                              ; preds = %409
  store i32 5, i32* %21, align 4
  br label %416

415:                                              ; preds = %409, %404
  store i32 7, i32* %21, align 4
  br label %416

416:                                              ; preds = %415, %414
  %417 = load i32, i32* %21, align 4
  %418 = sub nsw i32 20, %417
  store i32 %418, i32* %22, align 4
  %419 = load %struct.TYPE_11__*, %struct.TYPE_11__** @bandInfo, align 8
  %420 = load i64, i64* %12, align 8
  %421 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %419, i64 %420
  %422 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %421, i32 0, i32 0
  %423 = load i32*, i32** %422, align 8
  %424 = load i32, i32* %21, align 4
  %425 = add nsw i32 %424, 1
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i32, i32* %423, i64 %426
  %428 = load i32, i32* %427, align 4
  %429 = ashr i32 %428, 1
  %430 = load %struct.gr_info_s*, %struct.gr_info_s** %19, align 8
  %431 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %430, i32 0, i32 6
  store i32 %429, i32* %431, align 8
  %432 = load %struct.TYPE_11__*, %struct.TYPE_11__** @bandInfo, align 8
  %433 = load i64, i64* %12, align 8
  %434 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %432, i64 %433
  %435 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %434, i32 0, i32 0
  %436 = load i32*, i32** %435, align 8
  %437 = load i32, i32* %21, align 4
  %438 = add nsw i32 %437, 1
  %439 = load i32, i32* %22, align 4
  %440 = add nsw i32 %438, %439
  %441 = add nsw i32 %440, 1
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i32, i32* %436, i64 %442
  %444 = load i32, i32* %443, align 4
  %445 = ashr i32 %444, 1
  %446 = load %struct.gr_info_s*, %struct.gr_info_s** %19, align 8
  %447 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %446, i32 0, i32 7
  store i32 %445, i32* %447, align 4
  br label %453

448:                                              ; preds = %399
  %449 = load %struct.gr_info_s*, %struct.gr_info_s** %19, align 8
  %450 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %449, i32 0, i32 6
  store i32 27, i32* %450, align 8
  %451 = load %struct.gr_info_s*, %struct.gr_info_s** %19, align 8
  %452 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %451, i32 0, i32 7
  store i32 288, i32* %452, align 4
  br label %453

453:                                              ; preds = %448, %416
  br label %454

454:                                              ; preds = %453, %394
  br label %520

455:                                              ; preds = %318
  store i32 0, i32* %23, align 4
  br label %456

456:                                              ; preds = %468, %455
  %457 = load i32, i32* %23, align 4
  %458 = icmp slt i32 %457, 3
  br i1 %458, label %459, label %471

459:                                              ; preds = %456
  %460 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %461 = call i32 @getbits_fast(%struct.TYPE_10__* %460, i32 5)
  %462 = load %struct.gr_info_s*, %struct.gr_info_s** %19, align 8
  %463 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %462, i32 0, i32 5
  %464 = load i32*, i32** %463, align 8
  %465 = load i32, i32* %23, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds i32, i32* %464, i64 %466
  store i32 %461, i32* %467, align 4
  br label %468

468:                                              ; preds = %459
  %469 = load i32, i32* %23, align 4
  %470 = add nsw i32 %469, 1
  store i32 %470, i32* %23, align 4
  br label %456

471:                                              ; preds = %456
  %472 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %473 = call i32 @getbits_fast(%struct.TYPE_10__* %472, i32 4)
  store i32 %473, i32* %24, align 4
  %474 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %475 = call i32 @getbits_fast(%struct.TYPE_10__* %474, i32 3)
  store i32 %475, i32* %25, align 4
  %476 = load %struct.TYPE_11__*, %struct.TYPE_11__** @bandInfo, align 8
  %477 = load i64, i64* %12, align 8
  %478 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %476, i64 %477
  %479 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %478, i32 0, i32 0
  %480 = load i32*, i32** %479, align 8
  %481 = load i32, i32* %24, align 4
  %482 = add nsw i32 %481, 1
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds i32, i32* %480, i64 %483
  %485 = load i32, i32* %484, align 4
  %486 = ashr i32 %485, 1
  %487 = load %struct.gr_info_s*, %struct.gr_info_s** %19, align 8
  %488 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %487, i32 0, i32 6
  store i32 %486, i32* %488, align 8
  %489 = load i32, i32* %24, align 4
  %490 = add nsw i32 %489, 1
  %491 = load i32, i32* %25, align 4
  %492 = add nsw i32 %490, %491
  %493 = add nsw i32 %492, 1
  %494 = icmp sgt i32 %493, 22
  br i1 %494, label %495, label %498

495:                                              ; preds = %471
  %496 = load %struct.gr_info_s*, %struct.gr_info_s** %19, align 8
  %497 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %496, i32 0, i32 7
  store i32 288, i32* %497, align 4
  br label %515

498:                                              ; preds = %471
  %499 = load %struct.TYPE_11__*, %struct.TYPE_11__** @bandInfo, align 8
  %500 = load i64, i64* %12, align 8
  %501 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %499, i64 %500
  %502 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %501, i32 0, i32 0
  %503 = load i32*, i32** %502, align 8
  %504 = load i32, i32* %24, align 4
  %505 = add nsw i32 %504, 1
  %506 = load i32, i32* %25, align 4
  %507 = add nsw i32 %505, %506
  %508 = add nsw i32 %507, 1
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds i32, i32* %503, i64 %509
  %511 = load i32, i32* %510, align 4
  %512 = ashr i32 %511, 1
  %513 = load %struct.gr_info_s*, %struct.gr_info_s** %19, align 8
  %514 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %513, i32 0, i32 7
  store i32 %512, i32* %514, align 4
  br label %515

515:                                              ; preds = %498, %495
  %516 = load %struct.gr_info_s*, %struct.gr_info_s** %19, align 8
  %517 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %516, i32 0, i32 4
  store i32 0, i32* %517, align 8
  %518 = load %struct.gr_info_s*, %struct.gr_info_s** %19, align 8
  %519 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %518, i32 0, i32 11
  store i8* null, i8** %519, align 8
  br label %520

520:                                              ; preds = %515, %454
  %521 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %522 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %521, i32 0, i32 0
  %523 = load i64, i64* %522, align 8
  %524 = icmp ne i64 %523, 0
  br i1 %524, label %530, label %525

525:                                              ; preds = %520
  %526 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %527 = call i8* @get1bit(%struct.TYPE_10__* %526)
  %528 = load %struct.gr_info_s*, %struct.gr_info_s** %19, align 8
  %529 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %528, i32 0, i32 10
  store i8* %527, i8** %529, align 8
  br label %530

530:                                              ; preds = %525, %520
  %531 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %532 = call i8* @get1bit(%struct.TYPE_10__* %531)
  %533 = load %struct.gr_info_s*, %struct.gr_info_s** %19, align 8
  %534 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %533, i32 0, i32 9
  store i8* %532, i8** %534, align 8
  %535 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %536 = call i8* @get1bit(%struct.TYPE_10__* %535)
  %537 = load %struct.gr_info_s*, %struct.gr_info_s** %19, align 8
  %538 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %537, i32 0, i32 8
  store i8* %536, i8** %538, align 8
  br label %539

539:                                              ; preds = %530
  %540 = load i32, i32* %14, align 4
  %541 = add nsw i32 %540, 1
  store i32 %541, i32* %14, align 4
  br label %234

542:                                              ; preds = %234
  br label %543

543:                                              ; preds = %542
  %544 = load i32, i32* %15, align 4
  %545 = add nsw i32 %544, 1
  store i32 %545, i32* %15, align 4
  br label %227

546:                                              ; preds = %227
  store i32 0, i32* %7, align 4
  br label %547

547:                                              ; preds = %546, %378
  %548 = load i32, i32* %7, align 4
  ret i32 %548
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @getbits(%struct.TYPE_10__*, i32) #2

declare dso_local i32 @fprintf(i32, i8*, i32, i64) #2

declare dso_local i32 @backbits(%struct.TYPE_10__*, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @getbits_fast(%struct.TYPE_10__*, i32) #2

declare dso_local i32 @error(i8*) #2

declare dso_local i32 @debug1(i8*, i64) #2

declare dso_local i8* @get1bit(%struct.TYPE_10__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

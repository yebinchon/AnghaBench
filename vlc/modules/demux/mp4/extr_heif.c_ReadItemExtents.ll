; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_heif.c_ReadItemExtents.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_heif.c_ReadItemExtents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_27__*, i32 }
%struct.TYPE_26__ = type { i32, i64 }
%struct.TYPE_28__ = type { i64, %struct.TYPE_28__*, %struct.TYPE_28__*, i64, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.heif_private_t = type { i32 }
%struct.TYPE_20__ = type { i64, i64, i64, %struct.TYPE_25__*, %struct.TYPE_24__* }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_24__ = type { i64, i64, i32, %struct.TYPE_23__*, i64 }
%struct.TYPE_23__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"meta/iloc\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"meta/idat\00", align 1
@VLC_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"meta/iref\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_27__* (%struct.TYPE_26__*, i64, %struct.TYPE_28__*)* @ReadItemExtents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_27__* @ReadItemExtents(%struct.TYPE_26__* %0, i64 %1, %struct.TYPE_28__* %2) #0 {
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.heif_private_t*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_27__**, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_28__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_28__*, align 8
  %19 = alloca %struct.TYPE_28__*, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_28__* %2, %struct.TYPE_28__** %7, align 8
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = bitcast i8* %24 to %struct.heif_private_t*
  store %struct.heif_private_t* %25, %struct.heif_private_t** %8, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %9, align 8
  %26 = load %struct.heif_private_t*, %struct.heif_private_t** %8, align 8
  %27 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.TYPE_28__* @MP4_BoxGet(i32 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_28__* %29, %struct.TYPE_28__** %10, align 8
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %31 = icmp ne %struct.TYPE_28__* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %3
  %33 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  store %struct.TYPE_27__* %33, %struct.TYPE_27__** %4, align 8
  br label %316

34:                                               ; preds = %3
  store i64 0, i64* %11, align 8
  br label %35

35:                                               ; preds = %305, %34
  %36 = load i64, i64* %11, align 8
  %37 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %38 = call %struct.TYPE_20__* @BOXDATA(%struct.TYPE_28__* %37)
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %36, %40
  br i1 %41, label %42, label %308

42:                                               ; preds = %35
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %44 = call %struct.TYPE_20__* @BOXDATA(%struct.TYPE_28__* %43)
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %45, align 8
  %47 = load i64, i64* %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %305

54:                                               ; preds = %42
  store %struct.TYPE_27__** %9, %struct.TYPE_27__*** %12, align 8
  %55 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %56 = icmp ne %struct.TYPE_28__* %55, null
  br i1 %56, label %57, label %91

57:                                               ; preds = %54
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call %struct.TYPE_27__* @block_Alloc(i32 %63)
  %65 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %12, align 8
  store %struct.TYPE_27__* %64, %struct.TYPE_27__** %65, align 8
  %66 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %12, align 8
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %66, align 8
  %68 = icmp ne %struct.TYPE_27__* %67, null
  br i1 %68, label %69, label %90

69:                                               ; preds = %57
  %70 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %12, align 8
  %71 = load %struct.TYPE_27__*, %struct.TYPE_27__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @memcpy(i32 %73, i32 %79, i32 %85)
  %87 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %12, align 8
  %88 = load %struct.TYPE_27__*, %struct.TYPE_27__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %88, i32 0, i32 0
  store %struct.TYPE_27__** %89, %struct.TYPE_27__*** %12, align 8
  br label %90

90:                                               ; preds = %69, %57
  br label %91

91:                                               ; preds = %90, %54
  store i64 0, i64* %13, align 8
  br label %92

92:                                               ; preds = %301, %91
  %93 = load i64, i64* %13, align 8
  %94 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %95 = call %struct.TYPE_20__* @BOXDATA(%struct.TYPE_28__* %94)
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 4
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %96, align 8
  %98 = load i64, i64* %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ult i64 %93, %101
  br i1 %102, label %103, label %304

103:                                              ; preds = %92
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %105 = call %struct.TYPE_20__* @BOXDATA(%struct.TYPE_28__* %104)
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 4
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %106, align 8
  %108 = load i64, i64* %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %113 = call %struct.TYPE_20__* @BOXDATA(%struct.TYPE_28__* %112)
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 4
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %114, align 8
  %116 = load i64, i64* %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %117, i32 0, i32 3
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %118, align 8
  %120 = load i64, i64* %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %111, %123
  store i64 %124, i64* %14, align 8
  %125 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %126 = call %struct.TYPE_20__* @BOXDATA(%struct.TYPE_28__* %125)
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 4
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %127, align 8
  %129 = load i64, i64* %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 3
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %131, align 8
  %133 = load i64, i64* %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  store i64 %136, i64* %15, align 8
  %137 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %138 = call %struct.TYPE_20__* @BOXDATA(%struct.TYPE_28__* %137)
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 4
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %139, align 8
  %141 = load i64, i64* %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = icmp slt i32 %144, 2
  br i1 %145, label %146, label %189

146:                                              ; preds = %103
  %147 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %148 = call %struct.TYPE_20__* @BOXDATA(%struct.TYPE_28__* %147)
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 4
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %149, align 8
  %151 = load i64, i64* %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = icmp eq i32 %154, 1
  br i1 %155, label %156, label %173

156:                                              ; preds = %146
  %157 = load %struct.heif_private_t*, %struct.heif_private_t** %8, align 8
  %158 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call %struct.TYPE_28__* @MP4_BoxGet(i32 %159, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_28__* %160, %struct.TYPE_28__** %16, align 8
  %161 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %162 = icmp ne %struct.TYPE_28__* %161, null
  br i1 %162, label %164, label %163

163:                                              ; preds = %156
  br label %304

164:                                              ; preds = %156
  %165 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %166 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %169 = call i64 @mp4_box_headersize(%struct.TYPE_28__* %168)
  %170 = add nsw i64 %167, %169
  %171 = load i64, i64* %14, align 8
  %172 = add nsw i64 %171, %170
  store i64 %172, i64* %14, align 8
  br label %173

173:                                              ; preds = %164, %146
  %174 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i64, i64* %14, align 8
  %178 = call i64 @vlc_stream_Seek(i32 %176, i64 %177)
  %179 = load i64, i64* @VLC_SUCCESS, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %173
  br label %304

182:                                              ; preds = %173
  %183 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i64, i64* %15, align 8
  %187 = call %struct.TYPE_27__* @vlc_stream_Block(i32 %185, i64 %186)
  %188 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %12, align 8
  store %struct.TYPE_27__* %187, %struct.TYPE_27__** %188, align 8
  br label %291

189:                                              ; preds = %103
  %190 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %191 = call %struct.TYPE_20__* @BOXDATA(%struct.TYPE_28__* %190)
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 4
  %193 = load %struct.TYPE_24__*, %struct.TYPE_24__** %192, align 8
  %194 = load i64, i64* %11, align 8
  %195 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %193, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = icmp eq i32 %197, 2
  br i1 %198, label %199, label %290

199:                                              ; preds = %189
  %200 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %201 = call %struct.TYPE_20__* @BOXDATA(%struct.TYPE_28__* %200)
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 4
  %203 = load %struct.TYPE_24__*, %struct.TYPE_24__** %202, align 8
  %204 = load i64, i64* %11, align 8
  %205 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %203, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %205, i32 0, i32 3
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %206, align 8
  %208 = load i64, i64* %13, align 8
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  store i64 %211, i64* %17, align 8
  %212 = load i64, i64* %17, align 8
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %199
  store i64 1, i64* %17, align 8
  br label %215

215:                                              ; preds = %214, %199
  %216 = load %struct.heif_private_t*, %struct.heif_private_t** %8, align 8
  %217 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = call %struct.TYPE_28__* @MP4_BoxGet(i32 %218, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_28__* %219, %struct.TYPE_28__** %18, align 8
  %220 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %221 = icmp ne %struct.TYPE_28__* %220, null
  br i1 %221, label %223, label %222

222:                                              ; preds = %215
  br label %304

223:                                              ; preds = %215
  %224 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %225 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %224, i32 0, i32 2
  %226 = load %struct.TYPE_28__*, %struct.TYPE_28__** %225, align 8
  store %struct.TYPE_28__* %226, %struct.TYPE_28__** %19, align 8
  br label %227

227:                                              ; preds = %285, %223
  %228 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %229 = icmp ne %struct.TYPE_28__* %228, null
  br i1 %229, label %230, label %289

230:                                              ; preds = %227
  %231 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %232 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = call i64 @VLC_FOURCC(i8 signext 105, i8 signext 108, i8 signext 111, i8 signext 99)
  %235 = icmp ne i64 %233, %234
  br i1 %235, label %243, label %236

236:                                              ; preds = %230
  %237 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %238 = call %struct.TYPE_20__* @BOXDATA(%struct.TYPE_28__* %237)
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* %6, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %244

243:                                              ; preds = %236, %230
  br label %285

244:                                              ; preds = %236
  store i64 0, i64* %20, align 8
  br label %245

245:                                              ; preds = %281, %244
  %246 = load i64, i64* %20, align 8
  %247 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %248 = call %struct.TYPE_20__* @BOXDATA(%struct.TYPE_28__* %247)
  %249 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %248, i32 0, i32 2
  %250 = load i64, i64* %249, align 8
  %251 = icmp ult i64 %246, %250
  br i1 %251, label %252, label %284

252:                                              ; preds = %245
  %253 = load i64, i64* %17, align 8
  %254 = add i64 %253, -1
  store i64 %254, i64* %17, align 8
  %255 = icmp ugt i64 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %252
  br label %281

257:                                              ; preds = %252
  %258 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %259 = call %struct.TYPE_20__* @BOXDATA(%struct.TYPE_28__* %258)
  %260 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %259, i32 0, i32 3
  %261 = load %struct.TYPE_25__*, %struct.TYPE_25__** %260, align 8
  %262 = load i64, i64* %20, align 8
  %263 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %261, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* %6, align 8
  %267 = icmp ne i64 %265, %266
  br i1 %267, label %268, label %280

268:                                              ; preds = %257
  %269 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %270 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %271 = call %struct.TYPE_20__* @BOXDATA(%struct.TYPE_28__* %270)
  %272 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %271, i32 0, i32 3
  %273 = load %struct.TYPE_25__*, %struct.TYPE_25__** %272, align 8
  %274 = load i64, i64* %20, align 8
  %275 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %273, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = call %struct.TYPE_27__* @ReadItemExtents(%struct.TYPE_26__* %269, i64 %277, %struct.TYPE_28__* null)
  %279 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %12, align 8
  store %struct.TYPE_27__* %278, %struct.TYPE_27__** %279, align 8
  br label %280

280:                                              ; preds = %268, %257
  br label %281

281:                                              ; preds = %280, %256
  %282 = load i64, i64* %20, align 8
  %283 = add i64 %282, 1
  store i64 %283, i64* %20, align 8
  br label %245

284:                                              ; preds = %245
  br label %289

285:                                              ; preds = %243
  %286 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %287 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %286, i32 0, i32 1
  %288 = load %struct.TYPE_28__*, %struct.TYPE_28__** %287, align 8
  store %struct.TYPE_28__* %288, %struct.TYPE_28__** %19, align 8
  br label %227

289:                                              ; preds = %284, %227
  br label %290

290:                                              ; preds = %289, %189
  br label %291

291:                                              ; preds = %290, %182
  br label %292

292:                                              ; preds = %296, %291
  %293 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %12, align 8
  %294 = load %struct.TYPE_27__*, %struct.TYPE_27__** %293, align 8
  %295 = icmp ne %struct.TYPE_27__* %294, null
  br i1 %295, label %296, label %300

296:                                              ; preds = %292
  %297 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %12, align 8
  %298 = load %struct.TYPE_27__*, %struct.TYPE_27__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %298, i32 0, i32 0
  store %struct.TYPE_27__** %299, %struct.TYPE_27__*** %12, align 8
  br label %292

300:                                              ; preds = %292
  br label %301

301:                                              ; preds = %300
  %302 = load i64, i64* %13, align 8
  %303 = add i64 %302, 1
  store i64 %303, i64* %13, align 8
  br label %92

304:                                              ; preds = %222, %181, %163, %92
  br label %308

305:                                              ; preds = %53
  %306 = load i64, i64* %11, align 8
  %307 = add i64 %306, 1
  store i64 %307, i64* %11, align 8
  br label %35

308:                                              ; preds = %304, %35
  %309 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %310 = icmp ne %struct.TYPE_27__* %309, null
  br i1 %310, label %311, label %314

311:                                              ; preds = %308
  %312 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %313 = call %struct.TYPE_27__* @block_ChainGather(%struct.TYPE_27__* %312)
  store %struct.TYPE_27__* %313, %struct.TYPE_27__** %9, align 8
  br label %314

314:                                              ; preds = %311, %308
  %315 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  store %struct.TYPE_27__* %315, %struct.TYPE_27__** %4, align 8
  br label %316

316:                                              ; preds = %314, %32
  %317 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  ret %struct.TYPE_27__* %317
}

declare dso_local %struct.TYPE_28__* @MP4_BoxGet(i32, i8*) #1

declare dso_local %struct.TYPE_20__* @BOXDATA(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_27__* @block_Alloc(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @mp4_box_headersize(%struct.TYPE_28__*) #1

declare dso_local i64 @vlc_stream_Seek(i32, i64) #1

declare dso_local %struct.TYPE_27__* @vlc_stream_Block(i32, i64) #1

declare dso_local i64 @VLC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local %struct.TYPE_27__* @block_ChainGather(%struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

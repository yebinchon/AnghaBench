; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_dvdread.c_DvdReadSeek.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_dvdread.c_DvdReadSeek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_19__*, i32, %struct.TYPE_20__* }
%struct.TYPE_19__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i64, i64 }
%struct.TYPE_20__ = type { %struct.TYPE_32__*, %struct.TYPE_31__*, %struct.TYPE_29__*, %struct.TYPE_26__* }
%struct.TYPE_32__ = type { i32, i64* }
%struct.TYPE_31__ = type { i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_29__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32* }
%struct.TYPE_26__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"couldn't find cell for block %i\00", align 1
@INPUT_UPDATE_SEEKPOINT = common dso_local global i32 0, align 4
@VOBU_ADMAP_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [90 x i8] c"cell %d i_sub_cell %d chapter %d vobu %d cell_sector %d vobu_sector %d sub_cell_sector %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, i32)* @DvdReadSeek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DvdReadSeek(%struct.TYPE_21__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store i32 %1, i32* %4, align 4
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  store %struct.TYPE_22__* %23, %struct.TYPE_22__** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 11
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %25, align 8
  store %struct.TYPE_19__* %26, %struct.TYPE_19__** %9, align 8
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 13
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %28, align 8
  store %struct.TYPE_20__* %29, %struct.TYPE_20__** %10, align 8
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %8, align 4
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %87, %2
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp sle i32 %35, %38
  br i1 %39, label %40, label %90

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_30__*, %struct.TYPE_30__** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_30__*, %struct.TYPE_30__** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = sub nsw i32 %50, %59
  %61 = add nsw i32 %60, 1
  %62 = icmp slt i32 %41, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %40
  br label %90

64:                                               ; preds = %40
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_30__*, %struct.TYPE_30__** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_30__*, %struct.TYPE_30__** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %72, %80
  %82 = add nsw i64 %81, 1
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = sub nsw i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %64
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %34

90:                                               ; preds = %63, %34
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp sgt i32 %91, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @msg_Err(%struct.TYPE_21__* %97, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %98)
  br label %362

100:                                              ; preds = %90
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_30__*, %struct.TYPE_30__** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %110, %108
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %4, align 4
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  store i32 0, i32* %6, align 4
  br label %116

116:                                              ; preds = %182, %100
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %185

122:                                              ; preds = %116
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 3
  %125 = load %struct.TYPE_26__*, %struct.TYPE_26__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %126, align 8
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = sub nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %127, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %134, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %11, align 4
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 3
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %144, align 8
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = sub nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %145, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_24__*, %struct.TYPE_24__** %152, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %12, align 4
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_29__*, %struct.TYPE_29__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_28__*, %struct.TYPE_28__** %162, align 8
  %164 = load i32, i32* %11, align 4
  %165 = sub nsw i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %163, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_27__*, %struct.TYPE_27__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %12, align 4
  %173 = sub nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %171, i64 %174
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %13, align 4
  %177 = load i32, i32* %13, align 4
  %178 = load i32, i32* %7, align 4
  %179 = icmp sgt i32 %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %122
  br label %185

181:                                              ; preds = %122
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %6, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %6, align 4
  br label %116

185:                                              ; preds = %180, %116
  %186 = load i32, i32* %6, align 4
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = icmp slt i32 %186, %189
  br i1 %190, label %191, label %206

191:                                              ; preds = %185
  %192 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %6, align 4
  %196 = icmp ne i32 %194, %195
  br i1 %196, label %197, label %206

197:                                              ; preds = %191
  %198 = load i32, i32* @INPUT_UPDATE_SEEKPOINT, align 4
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 12
  %201 = load i32, i32* %200, align 8
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 8
  %203 = load i32, i32* %6, align 4
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %204, i32 0, i32 5
  store i32 %203, i32* %205, align 4
  br label %206

206:                                              ; preds = %197, %191, %185
  store i32 1, i32* %14, align 4
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_32__*, %struct.TYPE_32__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = add nsw i32 %211, 1
  %213 = load i32, i32* @VOBU_ADMAP_SIZE, align 4
  %214 = sub nsw i32 %212, %213
  %215 = sext i32 %214 to i64
  %216 = udiv i64 %215, 8
  store i64 %216, i64* %15, align 8
  store i64 0, i64* %16, align 8
  br label %217

217:                                              ; preds = %238, %206
  %218 = load i64, i64* %16, align 8
  %219 = load i64, i64* %15, align 8
  %220 = icmp ult i64 %218, %219
  br i1 %220, label %221, label %241

221:                                              ; preds = %217
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %223 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_32__*, %struct.TYPE_32__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %224, i32 0, i32 1
  %226 = load i64*, i64** %225, align 8
  %227 = load i64, i64* %16, align 8
  %228 = getelementptr inbounds i64, i64* %226, i64 %227
  %229 = load i64, i64* %228, align 8
  %230 = load i32, i32* %8, align 4
  %231 = sext i32 %230 to i64
  %232 = icmp sgt i64 %229, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %221
  br label %241

234:                                              ; preds = %221
  %235 = load i64, i64* %16, align 8
  %236 = add i64 %235, 1
  %237 = trunc i64 %236 to i32
  store i32 %237, i32* %14, align 4
  br label %238

238:                                              ; preds = %234
  %239 = load i64, i64* %16, align 8
  %240 = add i64 %239, 1
  store i64 %240, i64* %16, align 8
  br label %217

241:                                              ; preds = %233, %217
  store i32 1, i32* %17, align 4
  %242 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_32__*, %struct.TYPE_32__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %244, i32 0, i32 1
  %246 = load i64*, i64** %245, align 8
  %247 = load i32, i32* %14, align 4
  %248 = sub nsw i32 %247, 1
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i64, i64* %246, i64 %249
  %251 = load i64, i64* %250, align 8
  store i64 %251, i64* %18, align 8
  store i32 0, i32* %19, align 4
  br label %252

252:                                              ; preds = %279, %241
  %253 = load i32, i32* %19, align 4
  %254 = add nsw i32 %253, 1
  %255 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %256 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %255, i32 0, i32 1
  %257 = load %struct.TYPE_31__*, %struct.TYPE_31__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = icmp slt i32 %254, %259
  br i1 %260, label %261, label %282

261:                                              ; preds = %252
  %262 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %263 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %262, i32 0, i32 1
  %264 = load %struct.TYPE_31__*, %struct.TYPE_31__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %264, i32 0, i32 1
  %266 = load %struct.TYPE_23__*, %struct.TYPE_23__** %265, align 8
  %267 = load i32, i32* %19, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %266, i64 %268
  store %struct.TYPE_23__* %269, %struct.TYPE_23__** %20, align 8
  %270 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %271 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* %18, align 8
  %274 = icmp sle i64 %272, %273
  br i1 %274, label %275, label %278

275:                                              ; preds = %261
  %276 = load i32, i32* %19, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %17, align 4
  br label %278

278:                                              ; preds = %275, %261
  br label %279

279:                                              ; preds = %278
  %280 = load i32, i32* %19, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %19, align 4
  br label %252

282:                                              ; preds = %252
  %283 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %284 = load i32, i32* %7, align 4
  %285 = load i32, i32* %17, align 4
  %286 = load i32, i32* %6, align 4
  %287 = load i32, i32* %14, align 4
  %288 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %288, i32 0, i32 11
  %290 = load %struct.TYPE_19__*, %struct.TYPE_19__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %290, i32 0, i32 0
  %292 = load %struct.TYPE_30__*, %struct.TYPE_30__** %291, align 8
  %293 = load i32, i32* %7, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %292, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %299 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %298, i32 0, i32 0
  %300 = load %struct.TYPE_32__*, %struct.TYPE_32__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %300, i32 0, i32 1
  %302 = load i64*, i64** %301, align 8
  %303 = load i32, i32* %14, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i64, i64* %302, i64 %304
  %306 = load i64, i64* %305, align 8
  %307 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %308 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %307, i32 0, i32 1
  %309 = load %struct.TYPE_31__*, %struct.TYPE_31__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %309, i32 0, i32 1
  %311 = load %struct.TYPE_23__*, %struct.TYPE_23__** %310, align 8
  %312 = load i32, i32* %17, align 4
  %313 = sub nsw i32 %312, 1
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %311, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = call i32 @msg_Dbg(%struct.TYPE_21__* %283, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32 %284, i32 %285, i32 %286, i32 %287, i64 %297, i64 %306, i64 %317)
  %319 = load i32, i32* %8, align 4
  %320 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %320, i32 0, i32 6
  store i32 %319, i32* %321, align 8
  %322 = load i32, i32* %14, align 4
  %323 = sext i32 %322 to i64
  %324 = load i64, i64* %15, align 8
  %325 = icmp ult i64 %323, %324
  %326 = zext i1 %325 to i32
  %327 = call i64 @likely(i32 %326)
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %342

329:                                              ; preds = %282
  %330 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %331 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %330, i32 0, i32 0
  %332 = load %struct.TYPE_32__*, %struct.TYPE_32__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %332, i32 0, i32 1
  %334 = load i64*, i64** %333, align 8
  %335 = load i32, i32* %14, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i64, i64* %334, i64 %336
  %338 = load i64, i64* %337, align 8
  %339 = trunc i64 %338 to i32
  %340 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %340, i32 0, i32 7
  store i32 %339, i32* %341, align 4
  br label %346

342:                                              ; preds = %282
  %343 = load i32, i32* %8, align 4
  %344 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %345 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %344, i32 0, i32 7
  store i32 %343, i32* %345, align 4
  br label %346

346:                                              ; preds = %342, %329
  %347 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %347, i32 0, i32 7
  %349 = load i32, i32* %348, align 4
  %350 = load i32, i32* %8, align 4
  %351 = sub nsw i32 %349, %350
  %352 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %353 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %352, i32 0, i32 8
  store i32 %351, i32* %353, align 8
  %354 = load i32, i32* %7, align 4
  %355 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %356 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %355, i32 0, i32 9
  store i32 %354, i32* %356, align 4
  %357 = load i32, i32* %6, align 4
  %358 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %359 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %358, i32 0, i32 10
  store i32 %357, i32* %359, align 8
  %360 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %361 = call i32 @DvdReadFindCell(%struct.TYPE_21__* %360)
  br label %362

362:                                              ; preds = %346, %96
  ret void
}

declare dso_local i32 @msg_Err(%struct.TYPE_21__*, i8*, i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_21__*, i8*, i32, i32, i32, i32, i64, i64, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @DvdReadFindCell(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

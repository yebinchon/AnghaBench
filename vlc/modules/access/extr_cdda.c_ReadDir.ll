; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_cdda.c_ReadDir.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_cdda.c_ReadDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i64, i32, %struct.TYPE_12__*, i32**, i32*, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { %struct.TYPE_15__*, i64 }
%struct.TYPE_15__ = type { i64, i8*, i8*, i64, i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i64, i64 }
%struct.TYPE_13__ = type { i32, i64, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"track[%d] start=%d\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Audio CD - Track %02i\00", align 1
@CD_ROM_XA_INTERVAL = common dso_local global i64 0, align 8
@CDDA_DATA_SIZE = common dso_local global i32 0, align 4
@CLOCK_FREQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"cdda-track=%i\00", align 1
@VLC_INPUT_OPTION_TRUSTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"cdda-first-sector=%i\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"cdda-last-sector=%i\00", align 1
@vlc_meta_Title = common dso_local global i32 0, align 4
@vlc_meta_Artist = common dso_local global i32 0, align 4
@vlc_meta_Genre = common dso_local global i32 0, align 4
@vlc_meta_Description = common dso_local global i32 0, align 4
@vlc_meta_Album = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"%4d\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32*)* @ReadDir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadDir(%struct.TYPE_14__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_15__*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca [5 x i8], align 1
  %26 = alloca [4 x i8], align 1
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32* %1, i32** %4, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  store %struct.TYPE_16__* %29, %struct.TYPE_16__** %5, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 7
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  store %struct.TYPE_13__* %32, %struct.TYPE_13__** %6, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 7
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %35, %40
  store i32 %41, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %469, %2
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %472

48:                                               ; preds = %42
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %469

53:                                               ; preds = %48
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @msg_Dbg(%struct.TYPE_14__* %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %63)
  %65 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %7, align 4
  %68 = sub nsw i32 %66, %67
  %69 = add nsw i32 %68, 1
  %70 = call i32 @asprintf(i8** %9, i8* %65, i32 %69)
  %71 = icmp eq i32 %70, -1
  %72 = zext i1 %71 to i32
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %53
  store i8* null, i8** %9, align 8
  br label %76

76:                                               ; preds = %75, %53
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %10, align 4
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %11, align 4
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %99, %102
  br i1 %103, label %104, label %118

104:                                              ; preds = %76
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp sgt i64 %107, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %104
  %113 = load i64, i64* @CD_ROM_XA_INTERVAL, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = sub nsw i64 %115, %113
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %11, align 4
  br label %118

118:                                              ; preds = %112, %104, %76
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %10, align 4
  %121 = sub nsw i32 %119, %120
  %122 = load i32, i32* @CDDA_DATA_SIZE, align 4
  %123 = mul nsw i32 %121, %122
  %124 = load i32, i32* @CLOCK_FREQ, align 4
  %125 = mul nsw i32 %123, %124
  %126 = sdiv i32 %125, 44100
  %127 = sdiv i32 %126, 2
  %128 = sdiv i32 %127, 2
  store i32 %128, i32* %12, align 4
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = load i8*, i8** %9, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %136

134:                                              ; preds = %118
  %135 = load i8*, i8** %9, align 8
  br label %140

136:                                              ; preds = %118
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  br label %140

140:                                              ; preds = %136, %134
  %141 = phi i8* [ %135, %134 ], [ %139, %136 ]
  %142 = load i32, i32* %12, align 4
  %143 = call i32* @input_item_NewDisc(i8* %131, i8* %141, i32 %142)
  store i32* %143, i32** %13, align 8
  %144 = load i8*, i8** %9, align 8
  %145 = call i32 @free(i8* %144)
  %146 = load i32*, i32** %13, align 8
  %147 = icmp eq i32* %146, null
  %148 = zext i1 %147 to i32
  %149 = call i64 @unlikely(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %140
  br label %469

152:                                              ; preds = %140
  %153 = load i32, i32* %8, align 4
  %154 = add nsw i32 %153, 1
  %155 = call i32 @asprintf(i8** %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %154)
  %156 = icmp ne i32 %155, -1
  %157 = zext i1 %156 to i32
  %158 = call i64 @likely(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %152
  %161 = load i32*, i32** %13, align 8
  %162 = load i8*, i8** %14, align 8
  %163 = load i32, i32* @VLC_INPUT_OPTION_TRUSTED, align 4
  %164 = call i32 @input_item_AddOption(i32* %161, i8* %162, i32 %163)
  %165 = load i8*, i8** %14, align 8
  %166 = call i32 @free(i8* %165)
  br label %167

167:                                              ; preds = %160, %152
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 3
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %169, align 8
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @asprintf(i8** %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %175)
  %177 = icmp ne i32 %176, -1
  %178 = zext i1 %177 to i32
  %179 = call i64 @likely(i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %167
  %182 = load i32*, i32** %13, align 8
  %183 = load i8*, i8** %14, align 8
  %184 = load i32, i32* @VLC_INPUT_OPTION_TRUSTED, align 4
  %185 = call i32 @input_item_AddOption(i32* %182, i8* %183, i32 %184)
  %186 = load i8*, i8** %14, align 8
  %187 = call i32 @free(i8* %186)
  br label %188

188:                                              ; preds = %181, %167
  %189 = load i32, i32* %11, align 4
  %190 = call i32 @asprintf(i8** %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %189)
  %191 = icmp ne i32 %190, -1
  %192 = zext i1 %191 to i32
  %193 = call i64 @likely(i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %202

195:                                              ; preds = %188
  %196 = load i32*, i32** %13, align 8
  %197 = load i8*, i8** %14, align 8
  %198 = load i32, i32* @VLC_INPUT_OPTION_TRUSTED, align 4
  %199 = call i32 @input_item_AddOption(i32* %196, i8* %197, i32 %198)
  %200 = load i8*, i8** %14, align 8
  %201 = call i32 @free(i8* %200)
  br label %202

202:                                              ; preds = %195, %188
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  store i32 0, i32* %20, align 4
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 8
  %206 = icmp sgt i32 %205, 0
  br i1 %206, label %207, label %274

207:                                              ; preds = %202
  %208 = load i32, i32* %8, align 4
  %209 = add nsw i32 %208, 1
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = icmp slt i32 %209, %212
  br i1 %213, label %214, label %245

214:                                              ; preds = %207
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 5
  %217 = load i32**, i32*** %216, align 8
  %218 = load i32, i32* %8, align 4
  %219 = add nsw i32 %218, 1
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32*, i32** %217, i64 %220
  %222 = load i32*, i32** %221, align 8
  store i32* %222, i32** %21, align 8
  %223 = icmp ne i32* %222, null
  br i1 %223, label %224, label %245

224:                                              ; preds = %214
  %225 = load i8*, i8** %15, align 8
  %226 = load i32*, i32** %21, align 8
  %227 = load i32, i32* @vlc_meta_Title, align 4
  %228 = call i64 @vlc_meta_Get(i32* %226, i32 %227)
  %229 = call i32 @ON_EMPTY(i8* %225, i64 %228)
  %230 = load i8*, i8** %16, align 8
  %231 = load i32*, i32** %21, align 8
  %232 = load i32, i32* @vlc_meta_Artist, align 4
  %233 = call i64 @vlc_meta_Get(i32* %231, i32 %232)
  %234 = call i32 @ON_EMPTY(i8* %230, i64 %233)
  %235 = load i8*, i8** %18, align 8
  %236 = load i32*, i32** %21, align 8
  %237 = load i32, i32* @vlc_meta_Genre, align 4
  %238 = call i64 @vlc_meta_Get(i32* %236, i32 %237)
  %239 = call i32 @ON_EMPTY(i8* %235, i64 %238)
  %240 = load i8*, i8** %19, align 8
  %241 = load i32*, i32** %21, align 8
  %242 = load i32, i32* @vlc_meta_Description, align 4
  %243 = call i64 @vlc_meta_Get(i32* %241, i32 %242)
  %244 = call i32 @ON_EMPTY(i8* %240, i64 %243)
  br label %245

245:                                              ; preds = %224, %214, %207
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i32 0, i32 5
  %248 = load i32**, i32*** %247, align 8
  %249 = getelementptr inbounds i32*, i32** %248, i64 0
  %250 = load i32*, i32** %249, align 8
  store i32* %250, i32** %21, align 8
  %251 = icmp ne i32* %250, null
  br i1 %251, label %252, label %273

252:                                              ; preds = %245
  %253 = load i8*, i8** %16, align 8
  %254 = load i32*, i32** %21, align 8
  %255 = load i32, i32* @vlc_meta_Artist, align 4
  %256 = call i64 @vlc_meta_Get(i32* %254, i32 %255)
  %257 = call i32 @ON_EMPTY(i8* %253, i64 %256)
  %258 = load i8*, i8** %17, align 8
  %259 = load i32*, i32** %21, align 8
  %260 = load i32, i32* @vlc_meta_Album, align 4
  %261 = call i64 @vlc_meta_Get(i32* %259, i32 %260)
  %262 = call i32 @ON_EMPTY(i8* %258, i64 %261)
  %263 = load i8*, i8** %18, align 8
  %264 = load i32*, i32** %21, align 8
  %265 = load i32, i32* @vlc_meta_Genre, align 4
  %266 = call i64 @vlc_meta_Get(i32* %264, i32 %265)
  %267 = call i32 @ON_EMPTY(i8* %263, i64 %266)
  %268 = load i8*, i8** %19, align 8
  %269 = load i32*, i32** %21, align 8
  %270 = load i32, i32* @vlc_meta_Description, align 4
  %271 = call i64 @vlc_meta_Get(i32* %269, i32 %270)
  %272 = call i32 @ON_EMPTY(i8* %268, i64 %271)
  br label %273

273:                                              ; preds = %252, %245
  br label %274

274:                                              ; preds = %273, %202
  %275 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %275, i32 0, i32 4
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %276, align 8
  %278 = icmp ne %struct.TYPE_12__* %277, null
  br i1 %278, label %279, label %392

279:                                              ; preds = %274
  %280 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i32 0, i32 4
  %282 = load %struct.TYPE_12__*, %struct.TYPE_12__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %392

286:                                              ; preds = %279
  %287 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %287, i32 0, i32 4
  %289 = load %struct.TYPE_12__*, %struct.TYPE_12__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 0
  %291 = load %struct.TYPE_15__*, %struct.TYPE_15__** %290, align 8
  store %struct.TYPE_15__* %291, %struct.TYPE_15__** %22, align 8
  store i64 0, i64* %23, align 8
  br label %292

292:                                              ; preds = %339, %286
  %293 = load i64, i64* %23, align 8
  %294 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %295 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = icmp ult i64 %293, %296
  br i1 %297, label %298, label %342

298:                                              ; preds = %292
  %299 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %300 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %299, i32 0, i32 5
  %301 = load %struct.TYPE_10__*, %struct.TYPE_10__** %300, align 8
  %302 = load i64, i64* %23, align 8
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* %8, align 4
  %307 = add i32 %306, 1
  %308 = icmp eq i32 %305, %307
  br i1 %308, label %309, label %338

309:                                              ; preds = %298
  %310 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %311 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %310, i32 0, i32 5
  %312 = load %struct.TYPE_10__*, %struct.TYPE_10__** %311, align 8
  %313 = load i64, i64* %23, align 8
  %314 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %312, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %314, i32 0, i32 2
  %316 = load i64, i64* %315, align 8
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %337

318:                                              ; preds = %309
  %319 = load i8*, i8** %15, align 8
  %320 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %321 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %320, i32 0, i32 5
  %322 = load %struct.TYPE_10__*, %struct.TYPE_10__** %321, align 8
  %323 = load i64, i64* %23, align 8
  %324 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i64 %323
  %325 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %324, i32 0, i32 2
  %326 = load i64, i64* %325, align 8
  %327 = call i32 @ON_EMPTY(i8* %319, i64 %326)
  %328 = load i8*, i8** %16, align 8
  %329 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %330 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %329, i32 0, i32 5
  %331 = load %struct.TYPE_10__*, %struct.TYPE_10__** %330, align 8
  %332 = load i64, i64* %23, align 8
  %333 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %331, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %333, i32 0, i32 1
  %335 = load i64, i64* %334, align 8
  %336 = call i32 @ON_EMPTY(i8* %328, i64 %335)
  br label %337

337:                                              ; preds = %318, %309
  br label %342

338:                                              ; preds = %298
  br label %339

339:                                              ; preds = %338
  %340 = load i64, i64* %23, align 8
  %341 = add i64 %340, 1
  store i64 %341, i64* %23, align 8
  br label %292

342:                                              ; preds = %337, %292
  %343 = load i8*, i8** %17, align 8
  %344 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %345 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %344, i32 0, i32 4
  %346 = load i64, i64* %345, align 8
  %347 = call i32 @ON_EMPTY(i8* %343, i64 %346)
  %348 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %349 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %348, i32 0, i32 1
  %350 = load i8*, i8** %349, align 8
  %351 = call i64 @NONEMPTY(i8* %350)
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %362

353:                                              ; preds = %342
  %354 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %355 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %354, i32 0, i32 1
  %356 = load i8*, i8** %355, align 8
  store i8* %356, i8** %16, align 8
  %357 = load i32*, i32** %13, align 8
  %358 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %359 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %358, i32 0, i32 1
  %360 = load i8*, i8** %359, align 8
  %361 = call i32 @input_item_SetAlbumArtist(i32* %357, i8* %360)
  br label %362

362:                                              ; preds = %353, %342
  %363 = load i32, i32* %20, align 4
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %365, label %379

365:                                              ; preds = %362
  %366 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %367 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %366, i32 0, i32 3
  %368 = load i64, i64* %367, align 8
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %379

370:                                              ; preds = %365
  %371 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %372 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %371, i32 0, i32 3
  %373 = load i64, i64* %372, align 8
  %374 = call i32 @sscanf(i64 %373, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* %24)
  %375 = icmp eq i32 %374, 1
  br i1 %375, label %376, label %378

376:                                              ; preds = %370
  %377 = load i32, i32* %24, align 4
  store i32 %377, i32* %20, align 4
  br label %378

378:                                              ; preds = %376, %370
  br label %379

379:                                              ; preds = %378, %365, %362
  %380 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %381 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %380, i32 0, i32 2
  %382 = load i8*, i8** %381, align 8
  %383 = call i64 @NONEMPTY(i8* %382)
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %391

385:                                              ; preds = %379
  %386 = load i32*, i32** %13, align 8
  %387 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %388 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %387, i32 0, i32 2
  %389 = load i8*, i8** %388, align 8
  %390 = call i32 @input_item_SetArtworkURL(i32* %386, i8* %389)
  br label %391

391:                                              ; preds = %385, %379
  br label %392

392:                                              ; preds = %391, %279, %274
  %393 = load i8*, i8** %15, align 8
  %394 = call i64 @NONEMPTY(i8* %393)
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %403

396:                                              ; preds = %392
  %397 = load i32*, i32** %13, align 8
  %398 = load i8*, i8** %15, align 8
  %399 = call i32 @input_item_SetName(i32* %397, i8* %398)
  %400 = load i32*, i32** %13, align 8
  %401 = load i8*, i8** %15, align 8
  %402 = call i32 @input_item_SetTitle(i32* %400, i8* %401)
  br label %403

403:                                              ; preds = %396, %392
  %404 = load i8*, i8** %16, align 8
  %405 = call i64 @NONEMPTY(i8* %404)
  %406 = icmp ne i64 %405, 0
  br i1 %406, label %407, label %411

407:                                              ; preds = %403
  %408 = load i32*, i32** %13, align 8
  %409 = load i8*, i8** %16, align 8
  %410 = call i32 @input_item_SetArtist(i32* %408, i8* %409)
  br label %411

411:                                              ; preds = %407, %403
  %412 = load i8*, i8** %18, align 8
  %413 = call i64 @NONEMPTY(i8* %412)
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %415, label %419

415:                                              ; preds = %411
  %416 = load i32*, i32** %13, align 8
  %417 = load i8*, i8** %18, align 8
  %418 = call i32 @input_item_SetGenre(i32* %416, i8* %417)
  br label %419

419:                                              ; preds = %415, %411
  %420 = load i8*, i8** %19, align 8
  %421 = call i64 @NONEMPTY(i8* %420)
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %423, label %427

423:                                              ; preds = %419
  %424 = load i32*, i32** %13, align 8
  %425 = load i8*, i8** %19, align 8
  %426 = call i32 @input_item_SetDescription(i32* %424, i8* %425)
  br label %427

427:                                              ; preds = %423, %419
  %428 = load i8*, i8** %17, align 8
  %429 = call i64 @NONEMPTY(i8* %428)
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %431, label %435

431:                                              ; preds = %427
  %432 = load i32*, i32** %13, align 8
  %433 = load i8*, i8** %17, align 8
  %434 = call i32 @input_item_SetAlbum(i32* %432, i8* %433)
  br label %435

435:                                              ; preds = %431, %427
  %436 = load i32, i32* %20, align 4
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %445

438:                                              ; preds = %435
  %439 = getelementptr inbounds [5 x i8], [5 x i8]* %25, i64 0, i64 0
  %440 = load i32, i32* %20, align 4
  %441 = call i32 @snprintf(i8* %439, i32 5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %440)
  %442 = load i32*, i32** %13, align 8
  %443 = getelementptr inbounds [5 x i8], [5 x i8]* %25, i64 0, i64 0
  %444 = call i32 @input_item_SetDate(i32* %442, i8* %443)
  br label %445

445:                                              ; preds = %438, %435
  %446 = getelementptr inbounds [4 x i8], [4 x i8]* %26, i64 0, i64 0
  %447 = load i32, i32* %8, align 4
  %448 = add nsw i32 %447, 1
  %449 = call i32 @snprintf(i8* %446, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %448)
  %450 = icmp slt i32 %449, 4
  br i1 %450, label %451, label %455

451:                                              ; preds = %445
  %452 = load i32*, i32** %13, align 8
  %453 = getelementptr inbounds [4 x i8], [4 x i8]* %26, i64 0, i64 0
  %454 = call i32 @input_item_SetTrackNum(i32* %452, i8* %453)
  br label %455

455:                                              ; preds = %451, %445
  %456 = getelementptr inbounds [4 x i8], [4 x i8]* %26, i64 0, i64 0
  %457 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %458 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %457, i32 0, i32 2
  %459 = load i32, i32* %458, align 8
  %460 = call i32 @snprintf(i8* %456, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %459)
  %461 = load i32*, i32** %13, align 8
  %462 = getelementptr inbounds [4 x i8], [4 x i8]* %26, i64 0, i64 0
  %463 = call i32 @input_item_SetTrackTotal(i32* %461, i8* %462)
  %464 = load i32*, i32** %4, align 8
  %465 = load i32*, i32** %13, align 8
  %466 = call i32 @input_item_node_AppendItem(i32* %464, i32* %465)
  %467 = load i32*, i32** %13, align 8
  %468 = call i32 @input_item_Release(i32* %467)
  br label %469

469:                                              ; preds = %455, %151, %52
  %470 = load i32, i32* %8, align 4
  %471 = add nsw i32 %470, 1
  store i32 %471, i32* %8, align 4
  br label %42

472:                                              ; preds = %42
  %473 = load i32, i32* @VLC_SUCCESS, align 4
  ret i32 %473
}

declare dso_local i32 @msg_Dbg(%struct.TYPE_14__*, i8*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @asprintf(i8**, i8*, i32) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32* @input_item_NewDisc(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @input_item_AddOption(i32*, i8*, i32) #1

declare dso_local i32 @ON_EMPTY(i8*, i64) #1

declare dso_local i64 @vlc_meta_Get(i32*, i32) #1

declare dso_local i64 @NONEMPTY(i8*) #1

declare dso_local i32 @input_item_SetAlbumArtist(i32*, i8*) #1

declare dso_local i32 @sscanf(i64, i8*, i32*) #1

declare dso_local i32 @input_item_SetArtworkURL(i32*, i8*) #1

declare dso_local i32 @input_item_SetName(i32*, i8*) #1

declare dso_local i32 @input_item_SetTitle(i32*, i8*) #1

declare dso_local i32 @input_item_SetArtist(i32*, i8*) #1

declare dso_local i32 @input_item_SetGenre(i32*, i8*) #1

declare dso_local i32 @input_item_SetDescription(i32*, i8*) #1

declare dso_local i32 @input_item_SetAlbum(i32*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @input_item_SetDate(i32*, i8*) #1

declare dso_local i32 @input_item_SetTrackNum(i32*, i8*) #1

declare dso_local i32 @input_item_SetTrackTotal(i32*, i8*) #1

declare dso_local i32 @input_item_node_AppendItem(i32*, i32*) #1

declare dso_local i32 @input_item_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

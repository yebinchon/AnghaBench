; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_jp2.c_opj_jp2_check_color.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_jp2.c_opj_jp2_check_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }

@EVT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Invalid component index %d (>= %d).\0A\00", align 1
@OPJ_FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Incomplete channel definitions.\0A\00", align 1
@OPJ_TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Unexpected OOM.\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Invalid value for cmap[%d].mtyp = %d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"Invalid component/palette index for direct mapping %d.\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Component %d is mapped twice.\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Direct use at #%d however pcol=%d.\0A\00", align 1
@.str.7 = private unnamed_addr constant [101 x i8] c"Implementation limitation: for palette mapping, pcol[%d] should be equal to %d, but is equal to %d.\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Component %d doesn't have a mapping.\0A\00", align 1
@EVT_WARNING = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [51 x i8] c"Component mapping seems wrong. Trying to correct.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_11__*, i32*)* @opj_jp2_check_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opj_jp2_check_color(%struct.TYPE_14__* %0, %struct.TYPE_11__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32* %2, i32** %7, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = icmp ne %struct.TYPE_9__* %20, null
  br i1 %21, label %22, label %154

22:                                               ; preds = %3
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %9, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %10, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %11, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = icmp ne %struct.TYPE_10__* %38, null
  br i1 %39, label %40, label %54

40:                                               ; preds = %22
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = icmp ne %struct.TYPE_12__* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %40
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %47, %40, %22
  store i64 0, i64* %8, align 8
  br label %55

55:                                               ; preds = %115, %54
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* %10, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %118

59:                                               ; preds = %55
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %61 = load i64, i64* %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp uge i32 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %59
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* @EVT_ERROR, align 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %71 = load i64, i64* %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %68, i32 %69, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %75)
  %77 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %77, i32* %4, align 4
  br label %409

78:                                               ; preds = %59
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %80 = load i64, i64* %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 65535
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %115

86:                                               ; preds = %78
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %88 = load i64, i64* %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp ugt i32 %91, 0
  br i1 %92, label %93, label %114

93:                                               ; preds = %86
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %95 = load i64, i64* %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sub i32 %98, 1
  %100 = load i32, i32* %11, align 4
  %101 = icmp uge i32 %99, %100
  br i1 %101, label %102, label %114

102:                                              ; preds = %93
  %103 = load i32*, i32** %7, align 8
  %104 = load i32, i32* @EVT_ERROR, align 4
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %106 = load i64, i64* %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = sub i32 %109, 1
  %111 = load i32, i32* %11, align 4
  %112 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %103, i32 %104, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %110, i32 %111)
  %113 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %113, i32* %4, align 4
  br label %409

114:                                              ; preds = %93, %86
  br label %115

115:                                              ; preds = %114, %85
  %116 = load i64, i64* %8, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %8, align 8
  br label %55

118:                                              ; preds = %55
  br label %119

119:                                              ; preds = %150, %118
  %120 = load i32, i32* %11, align 4
  %121 = icmp ugt i32 %120, 0
  br i1 %121, label %122, label %153

122:                                              ; preds = %119
  store i64 0, i64* %8, align 8
  br label %123

123:                                              ; preds = %138, %122
  %124 = load i64, i64* %8, align 8
  %125 = load i64, i64* %10, align 8
  %126 = icmp ult i64 %124, %125
  br i1 %126, label %127, label %141

127:                                              ; preds = %123
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %129 = load i64, i64* %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %11, align 4
  %134 = sub i32 %133, 1
  %135 = icmp eq i32 %132, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %127
  br label %141

137:                                              ; preds = %127
  br label %138

138:                                              ; preds = %137
  %139 = load i64, i64* %8, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %8, align 8
  br label %123

141:                                              ; preds = %136, %123
  %142 = load i64, i64* %8, align 8
  %143 = load i64, i64* %10, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %141
  %146 = load i32*, i32** %7, align 8
  %147 = load i32, i32* @EVT_ERROR, align 4
  %148 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %146, i32 %147, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %149 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %149, i32* %4, align 4
  br label %409

150:                                              ; preds = %141
  %151 = load i32, i32* %11, align 4
  %152 = add i32 %151, -1
  store i32 %152, i32* %11, align 4
  br label %119

153:                                              ; preds = %119
  br label %154

154:                                              ; preds = %153, %3
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %156, align 8
  %158 = icmp ne %struct.TYPE_10__* %157, null
  br i1 %158, label %159, label %407

159:                                              ; preds = %154
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %163, align 8
  %165 = icmp ne %struct.TYPE_12__* %164, null
  br i1 %165, label %166, label %407

166:                                              ; preds = %159
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  store i64 %171, i64* %12, align 8
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %175, align 8
  store %struct.TYPE_12__* %176, %struct.TYPE_12__** %13, align 8
  %177 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %177, i32* %15, align 4
  store i64 0, i64* %8, align 8
  br label %178

178:                                              ; preds = %206, %166
  %179 = load i64, i64* %8, align 8
  %180 = load i64, i64* %12, align 8
  %181 = icmp ult i64 %179, %180
  br i1 %181, label %182, label %209

182:                                              ; preds = %178
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %184 = load i64, i64* %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = icmp uge i32 %187, %190
  br i1 %191, label %192, label %205

192:                                              ; preds = %182
  %193 = load i32*, i32** %7, align 8
  %194 = load i32, i32* @EVT_ERROR, align 4
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %196 = load i64, i64* %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %193, i32 %194, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %199, i32 %202)
  %204 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %204, i32* %15, align 4
  br label %205

205:                                              ; preds = %192, %182
  br label %206

206:                                              ; preds = %205
  %207 = load i64, i64* %8, align 8
  %208 = add i64 %207, 1
  store i64 %208, i64* %8, align 8
  br label %178

209:                                              ; preds = %178
  %210 = load i64, i64* %12, align 8
  %211 = call i64 @opj_calloc(i64 %210, i32 4)
  %212 = inttoptr i64 %211 to i32*
  store i32* %212, i32** %14, align 8
  %213 = load i32*, i32** %14, align 8
  %214 = icmp ne i32* %213, null
  br i1 %214, label %220, label %215

215:                                              ; preds = %209
  %216 = load i32*, i32** %7, align 8
  %217 = load i32, i32* @EVT_ERROR, align 4
  %218 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %216, i32 %217, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %219 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %219, i32* %4, align 4
  br label %409

220:                                              ; preds = %209
  store i64 0, i64* %8, align 8
  br label %221

221:                                              ; preds = %315, %220
  %222 = load i64, i64* %8, align 8
  %223 = load i64, i64* %12, align 8
  %224 = icmp ult i64 %222, %223
  br i1 %224, label %225, label %318

225:                                              ; preds = %221
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %227 = load i64, i64* %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  store i32 %230, i32* %16, align 4
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %232 = load i64, i64* %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  store i32 %235, i32* %17, align 4
  %236 = load i32, i32* %16, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %248

238:                                              ; preds = %225
  %239 = load i32, i32* %16, align 4
  %240 = icmp ne i32 %239, 1
  br i1 %240, label %241, label %248

241:                                              ; preds = %238
  %242 = load i32*, i32** %7, align 8
  %243 = load i32, i32* @EVT_ERROR, align 4
  %244 = load i64, i64* %8, align 8
  %245 = load i32, i32* %16, align 4
  %246 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %242, i32 %243, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %244, i32 %245)
  %247 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %247, i32* %15, align 4
  br label %314

248:                                              ; preds = %238, %225
  %249 = load i32, i32* %17, align 4
  %250 = sext i32 %249 to i64
  %251 = load i64, i64* %12, align 8
  %252 = icmp uge i64 %250, %251
  br i1 %252, label %253, label %259

253:                                              ; preds = %248
  %254 = load i32*, i32** %7, align 8
  %255 = load i32, i32* @EVT_ERROR, align 4
  %256 = load i32, i32* %17, align 4
  %257 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %254, i32 %255, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 %256)
  %258 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %258, i32* %15, align 4
  br label %313

259:                                              ; preds = %248
  %260 = load i32*, i32** %14, align 8
  %261 = load i32, i32* %17, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %275

266:                                              ; preds = %259
  %267 = load i32, i32* %16, align 4
  %268 = icmp eq i32 %267, 1
  br i1 %268, label %269, label %275

269:                                              ; preds = %266
  %270 = load i32*, i32** %7, align 8
  %271 = load i32, i32* @EVT_ERROR, align 4
  %272 = load i32, i32* %17, align 4
  %273 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %270, i32 %271, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %272)
  %274 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %274, i32* %15, align 4
  br label %312

275:                                              ; preds = %266, %259
  %276 = load i32, i32* %16, align 4
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %288

278:                                              ; preds = %275
  %279 = load i32, i32* %17, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %288

281:                                              ; preds = %278
  %282 = load i32*, i32** %7, align 8
  %283 = load i32, i32* @EVT_ERROR, align 4
  %284 = load i64, i64* %8, align 8
  %285 = load i32, i32* %17, align 4
  %286 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %282, i32 %283, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i64 %284, i32 %285)
  %287 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %287, i32* %15, align 4
  br label %311

288:                                              ; preds = %278, %275
  %289 = load i32, i32* %16, align 4
  %290 = icmp eq i32 %289, 1
  br i1 %290, label %291, label %304

291:                                              ; preds = %288
  %292 = load i32, i32* %17, align 4
  %293 = sext i32 %292 to i64
  %294 = load i64, i64* %8, align 8
  %295 = icmp ne i64 %293, %294
  br i1 %295, label %296, label %304

296:                                              ; preds = %291
  %297 = load i32*, i32** %7, align 8
  %298 = load i32, i32* @EVT_ERROR, align 4
  %299 = load i64, i64* %8, align 8
  %300 = load i64, i64* %8, align 8
  %301 = load i32, i32* %17, align 4
  %302 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %297, i32 %298, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.7, i64 0, i64 0), i64 %299, i64 %300, i32 %301)
  %303 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %303, i32* %15, align 4
  br label %310

304:                                              ; preds = %291, %288
  %305 = load i32, i32* @OPJ_TRUE, align 4
  %306 = load i32*, i32** %14, align 8
  %307 = load i32, i32* %17, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, i32* %306, i64 %308
  store i32 %305, i32* %309, align 4
  br label %310

310:                                              ; preds = %304, %296
  br label %311

311:                                              ; preds = %310, %281
  br label %312

312:                                              ; preds = %311, %269
  br label %313

313:                                              ; preds = %312, %253
  br label %314

314:                                              ; preds = %313, %241
  br label %315

315:                                              ; preds = %314
  %316 = load i64, i64* %8, align 8
  %317 = add i64 %316, 1
  store i64 %317, i64* %8, align 8
  br label %221

318:                                              ; preds = %221
  store i64 0, i64* %8, align 8
  br label %319

319:                                              ; preds = %343, %318
  %320 = load i64, i64* %8, align 8
  %321 = load i64, i64* %12, align 8
  %322 = icmp ult i64 %320, %321
  br i1 %322, label %323, label %346

323:                                              ; preds = %319
  %324 = load i32*, i32** %14, align 8
  %325 = load i64, i64* %8, align 8
  %326 = getelementptr inbounds i32, i32* %324, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %342, label %329

329:                                              ; preds = %323
  %330 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %331 = load i64, i64* %8, align 8
  %332 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %330, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %342

336:                                              ; preds = %329
  %337 = load i32*, i32** %7, align 8
  %338 = load i32, i32* @EVT_ERROR, align 4
  %339 = load i64, i64* %8, align 8
  %340 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %337, i32 %338, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i64 %339)
  %341 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %341, i32* %15, align 4
  br label %342

342:                                              ; preds = %336, %329, %323
  br label %343

343:                                              ; preds = %342
  %344 = load i64, i64* %8, align 8
  %345 = add i64 %344, 1
  store i64 %345, i64* %8, align 8
  br label %319

346:                                              ; preds = %319
  %347 = load i32, i32* %15, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %399

349:                                              ; preds = %346
  %350 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = icmp eq i32 %352, 1
  br i1 %353, label %354, label %399

354:                                              ; preds = %349
  store i64 0, i64* %8, align 8
  br label %355

355:                                              ; preds = %371, %354
  %356 = load i64, i64* %8, align 8
  %357 = load i64, i64* %12, align 8
  %358 = icmp ult i64 %356, %357
  br i1 %358, label %359, label %374

359:                                              ; preds = %355
  %360 = load i32*, i32** %14, align 8
  %361 = load i64, i64* %8, align 8
  %362 = getelementptr inbounds i32, i32* %360, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %370, label %365

365:                                              ; preds = %359
  store i32 0, i32* %15, align 4
  %366 = load i32*, i32** %7, align 8
  %367 = load i32, i32* @EVT_WARNING, align 4
  %368 = load i64, i64* %8, align 8
  %369 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %366, i32 %367, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0), i64 %368)
  br label %374

370:                                              ; preds = %359
  br label %371

371:                                              ; preds = %370
  %372 = load i64, i64* %8, align 8
  %373 = add i64 %372, 1
  store i64 %373, i64* %8, align 8
  br label %355

374:                                              ; preds = %365, %355
  %375 = load i32, i32* %15, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %398, label %377

377:                                              ; preds = %374
  %378 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %378, i32* %15, align 4
  store i64 0, i64* %8, align 8
  br label %379

379:                                              ; preds = %394, %377
  %380 = load i64, i64* %8, align 8
  %381 = load i64, i64* %12, align 8
  %382 = icmp ult i64 %380, %381
  br i1 %382, label %383, label %397

383:                                              ; preds = %379
  %384 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %385 = load i64, i64* %8, align 8
  %386 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %384, i64 %385
  %387 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %386, i32 0, i32 1
  store i32 1, i32* %387, align 4
  %388 = load i64, i64* %8, align 8
  %389 = trunc i64 %388 to i32
  %390 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %391 = load i64, i64* %8, align 8
  %392 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %390, i64 %391
  %393 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %392, i32 0, i32 2
  store i32 %389, i32* %393, align 4
  br label %394

394:                                              ; preds = %383
  %395 = load i64, i64* %8, align 8
  %396 = add i64 %395, 1
  store i64 %396, i64* %8, align 8
  br label %379

397:                                              ; preds = %379
  br label %398

398:                                              ; preds = %397, %374
  br label %399

399:                                              ; preds = %398, %349, %346
  %400 = load i32*, i32** %14, align 8
  %401 = call i32 @opj_free(i32* %400)
  %402 = load i32, i32* %15, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %406, label %404

404:                                              ; preds = %399
  %405 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %405, i32* %4, align 4
  br label %409

406:                                              ; preds = %399
  br label %407

407:                                              ; preds = %406, %159, %154
  %408 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %408, i32* %4, align 4
  br label %409

409:                                              ; preds = %407, %404, %215, %145, %102, %67
  %410 = load i32, i32* %4, align 4
  ret i32 %410
}

declare dso_local i32 @opj_event_msg(i32*, i32, i8*, ...) #1

declare dso_local i64 @opj_calloc(i64, i32) #1

declare dso_local i32 @opj_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

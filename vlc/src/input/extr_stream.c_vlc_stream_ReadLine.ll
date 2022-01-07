; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_stream.c_vlc_stream_ReadLine.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_stream.c_vlc_stream_ReadLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32, i32 }

@STREAM_PROBE_LINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\FF\FE\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"UTF-16LE\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\FE\FF\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"UTF-16BE\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"UTF-16 BOM detected\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"iconv_open failed\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"the read is not i_char_width compatible\00", align 1
@STREAM_LINE_MAX = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"conversion error: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"original: %d, in %zu, out %zu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vlc_stream_ReadLine(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = bitcast %struct.TYPE_12__* %23 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %4, align 8
  store i8* null, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i8* null, i8** %2, align 8
  br label %415

35:                                               ; preds = %29, %1
  br label %36

36:                                               ; preds = %309, %35
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %38 = load i32, i32* @STREAM_PROBE_LINE, align 4
  %39 = call i32 @vlc_stream_Peek(%struct.TYPE_12__* %37, i32** %9, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %310

43:                                               ; preds = %36
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %45 = call i64 @vlc_stream_Tell(%struct.TYPE_12__* %44)
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* %11, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %110

48:                                               ; preds = %43
  %49 = load i32, i32* %10, align 4
  %50 = icmp sge i32 %49, 2
  br i1 %50, label %51, label %110

51:                                               ; preds = %48
  store i8* null, i8** %12, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, -1
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %51
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @vlc_iconv_close(i64 %64)
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  store i64 -1, i64* %68, align 8
  br label %69

69:                                               ; preds = %60, %51
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @memcmp(i32* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  store i32 1, i32* %76, align 8
  br label %83

77:                                               ; preds = %69
  %78 = load i32*, i32** %9, align 8
  %79 = call i32 @memcmp(i32* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  br label %82

82:                                               ; preds = %81, %77
  br label %83

83:                                               ; preds = %82, %73
  %84 = load i8*, i8** %12, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %109

86:                                               ; preds = %83
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %88 = call i32 (%struct.TYPE_12__*, i8*, ...) @msg_Dbg(%struct.TYPE_12__* %87, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %89 = load i8*, i8** %12, align 8
  %90 = call i64 @vlc_iconv_open(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %89)
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  store i64 %90, i64* %93, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, -1
  %99 = zext i1 %98 to i32
  %100 = call i64 @unlikely(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %86
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %104 = call i32 (%struct.TYPE_12__*, i8*, ...) @msg_Err(%struct.TYPE_12__* %103, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %397

105:                                              ; preds = %86
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 2
  store i32 2, i32* %108, align 4
  br label %109

109:                                              ; preds = %105, %83
  br label %110

110:                                              ; preds = %109, %48, %43
  %111 = load i32, i32* %10, align 4
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = srem i32 %111, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %110
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = srem i32 %120, %124
  %126 = sub nsw i32 %119, %125
  store i32 %126, i32* %10, align 4
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %128 = call i32 @msg_Warn(%struct.TYPE_12__* %127, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  br label %129

129:                                              ; preds = %118, %110
  %130 = load i32, i32* %10, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  br label %310

133:                                              ; preds = %129
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, 1
  br i1 %138, label %139, label %150

139:                                              ; preds = %133
  %140 = load i32*, i32** %9, align 8
  %141 = load i32, i32* %10, align 4
  %142 = call i8* @memchr(i32* %140, i8 signext 10, i32 %141)
  store i8* %142, i8** %8, align 8
  %143 = load i8*, i8** %8, align 8
  %144 = icmp eq i8* %143, null
  br i1 %144, label %145, label %149

145:                                              ; preds = %139
  %146 = load i32*, i32** %9, align 8
  %147 = load i32, i32* %10, align 4
  %148 = call i8* @memchr(i32* %146, i8 signext 13, i32 %147)
  store i8* %148, i8** %8, align 8
  br label %149

149:                                              ; preds = %145, %139
  br label %225

150:                                              ; preds = %133
  %151 = load i32*, i32** %9, align 8
  %152 = load i32, i32* %10, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = sub i64 0, %159
  %161 = getelementptr inbounds i32, i32* %154, i64 %160
  store i32* %161, i32** %13, align 8
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i32 2560, i32 160
  store i32 %168, i32* %14, align 4
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = icmp eq i32 %172, 2
  %174 = zext i1 %173 to i32
  %175 = call i32 @assert(i32 %174)
  store i8* null, i8** %8, align 8
  %176 = load i32*, i32** %9, align 8
  store i32* %176, i32** %15, align 8
  br label %177

177:                                              ; preds = %191, %150
  %178 = load i32*, i32** %15, align 8
  %179 = load i32*, i32** %13, align 8
  %180 = icmp ule i32* %178, %179
  br i1 %180, label %181, label %194

181:                                              ; preds = %177
  %182 = load i32*, i32** %15, align 8
  %183 = call i32 @U16_AT(i32* %182)
  %184 = load i32, i32* %14, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %181
  %187 = load i32*, i32** %15, align 8
  %188 = bitcast i32* %187 to i8*
  %189 = getelementptr inbounds i8, i8* %188, i64 1
  store i8* %189, i8** %8, align 8
  br label %194

190:                                              ; preds = %181
  br label %191

191:                                              ; preds = %190
  %192 = load i32*, i32** %15, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 2
  store i32* %193, i32** %15, align 8
  br label %177

194:                                              ; preds = %186, %177
  %195 = load i8*, i8** %8, align 8
  %196 = icmp eq i8* %195, null
  br i1 %196, label %197, label %224

197:                                              ; preds = %194
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = icmp ne i32 %201, 0
  %203 = zext i1 %202 to i64
  %204 = select i1 %202, i32 3328, i32 208
  store i32 %204, i32* %14, align 4
  %205 = load i32*, i32** %9, align 8
  store i32* %205, i32** %16, align 8
  br label %206

206:                                              ; preds = %220, %197
  %207 = load i32*, i32** %16, align 8
  %208 = load i32*, i32** %13, align 8
  %209 = icmp ule i32* %207, %208
  br i1 %209, label %210, label %223

210:                                              ; preds = %206
  %211 = load i32*, i32** %16, align 8
  %212 = call i32 @U16_AT(i32* %211)
  %213 = load i32, i32* %14, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %219

215:                                              ; preds = %210
  %216 = load i32*, i32** %16, align 8
  %217 = bitcast i32* %216 to i8*
  %218 = getelementptr inbounds i8, i8* %217, i64 1
  store i8* %218, i8** %8, align 8
  br label %223

219:                                              ; preds = %210
  br label %220

220:                                              ; preds = %219
  %221 = load i32*, i32** %16, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 2
  store i32* %222, i32** %16, align 8
  br label %206

223:                                              ; preds = %215, %206
  br label %224

224:                                              ; preds = %223, %194
  br label %225

225:                                              ; preds = %224, %149
  %226 = load i8*, i8** %8, align 8
  %227 = icmp ne i8* %226, null
  br i1 %227, label %228, label %273

228:                                              ; preds = %225
  %229 = load i8*, i8** %8, align 8
  %230 = load i32*, i32** %9, align 8
  %231 = bitcast i32* %230 to i8*
  %232 = ptrtoint i8* %229 to i64
  %233 = ptrtoint i8* %231 to i64
  %234 = sub i64 %232, %233
  %235 = add nsw i64 %234, 1
  %236 = trunc i64 %235 to i32
  store i32 %236, i32* %10, align 4
  %237 = load i8*, i8** %5, align 8
  %238 = load i32, i32* %6, align 4
  %239 = load i32, i32* %10, align 4
  %240 = add nsw i32 %238, %239
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  %245 = add nsw i32 %240, %244
  %246 = call i8* @realloc_or_free(i8* %237, i32 %245)
  store i8* %246, i8** %5, align 8
  %247 = load i8*, i8** %5, align 8
  %248 = icmp ne i8* %247, null
  br i1 %248, label %250, label %249

249:                                              ; preds = %228
  br label %397

250:                                              ; preds = %228
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %252 = load i8*, i8** %5, align 8
  %253 = load i32, i32* %6, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i8, i8* %252, i64 %254
  %256 = load i32, i32* %10, align 4
  %257 = call i32 @vlc_stream_Read(%struct.TYPE_12__* %251, i8* %255, i32 %256)
  store i32 %257, i32* %10, align 4
  %258 = load i32, i32* %10, align 4
  %259 = icmp sle i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %250
  br label %310

261:                                              ; preds = %250
  %262 = load i32, i32* %10, align 4
  %263 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 4
  %267 = sub nsw i32 %262, %266
  %268 = load i32, i32* %6, align 4
  %269 = add nsw i32 %268, %267
  store i32 %269, i32* %6, align 4
  %270 = load i32, i32* %10, align 4
  %271 = load i32, i32* %7, align 4
  %272 = add nsw i32 %271, %270
  store i32 %272, i32* %7, align 4
  br label %310

273:                                              ; preds = %225
  %274 = load i8*, i8** %5, align 8
  %275 = load i32, i32* %6, align 4
  %276 = load i32, i32* @STREAM_PROBE_LINE, align 4
  %277 = add nsw i32 %275, %276
  %278 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 4
  %282 = add nsw i32 %277, %281
  %283 = call i8* @realloc_or_free(i8* %274, i32 %282)
  store i8* %283, i8** %5, align 8
  %284 = load i8*, i8** %5, align 8
  %285 = icmp ne i8* %284, null
  br i1 %285, label %287, label %286

286:                                              ; preds = %273
  br label %397

287:                                              ; preds = %273
  %288 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %289 = load i8*, i8** %5, align 8
  %290 = load i32, i32* %6, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i8, i8* %289, i64 %291
  %293 = load i32, i32* @STREAM_PROBE_LINE, align 4
  %294 = call i32 @vlc_stream_Read(%struct.TYPE_12__* %288, i8* %292, i32 %293)
  store i32 %294, i32* %10, align 4
  %295 = load i32, i32* %10, align 4
  %296 = icmp sle i32 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %287
  br label %310

298:                                              ; preds = %287
  %299 = load i32, i32* %10, align 4
  %300 = load i32, i32* %6, align 4
  %301 = add nsw i32 %300, %299
  store i32 %301, i32* %6, align 4
  %302 = load i32, i32* %10, align 4
  %303 = load i32, i32* %7, align 4
  %304 = add nsw i32 %303, %302
  store i32 %304, i32* %7, align 4
  %305 = load i32, i32* %7, align 4
  %306 = load i32, i32* @STREAM_LINE_MAX, align 4
  %307 = icmp sge i32 %305, %306
  br i1 %307, label %308, label %309

308:                                              ; preds = %298
  br label %397

309:                                              ; preds = %298
  br label %36

310:                                              ; preds = %297, %261, %260, %132, %42
  %311 = load i32, i32* %7, align 4
  %312 = icmp sgt i32 %311, 0
  br i1 %312, label %313, label %396

313:                                              ; preds = %310
  %314 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 4
  %318 = icmp sgt i32 %317, 1
  br i1 %318, label %319, label %361

319:                                              ; preds = %313
  store i32 0, i32* %17, align 4
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  store i8* null, i8** %20, align 8
  store i8* null, i8** %21, align 8
  store i8* null, i8** %22, align 8
  %320 = load i32, i32* %6, align 4
  %321 = mul nsw i32 %320, 3
  %322 = sdiv i32 %321, 2
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %17, align 4
  %324 = load i32, i32* %17, align 4
  %325 = call i8* @malloc(i32 %324)
  store i8* %325, i8** %22, align 8
  %326 = load i8*, i8** %22, align 8
  %327 = icmp eq i8* %326, null
  br i1 %327, label %328, label %329

328:                                              ; preds = %319
  br label %397

329:                                              ; preds = %319
  %330 = load i32, i32* %6, align 4
  %331 = sext i32 %330 to i64
  store i64 %331, i64* %18, align 8
  %332 = load i32, i32* %17, align 4
  %333 = sext i32 %332 to i64
  store i64 %333, i64* %19, align 8
  %334 = load i8*, i8** %5, align 8
  store i8* %334, i8** %20, align 8
  %335 = load i8*, i8** %22, align 8
  store i8* %335, i8** %21, align 8
  %336 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %337, i32 0, i32 0
  %339 = load i64, i64* %338, align 8
  %340 = call i64 @vlc_iconv(i64 %339, i8** %20, i64* %18, i8** %21, i64* %19)
  %341 = icmp eq i64 %340, -1
  br i1 %341, label %342, label %352

342:                                              ; preds = %329
  %343 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %344 = load i32, i32* @errno, align 4
  %345 = call i32 @vlc_strerror_c(i32 %344)
  %346 = call i32 (%struct.TYPE_12__*, i8*, ...) @msg_Err(%struct.TYPE_12__* %343, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %345)
  %347 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %348 = load i32, i32* %6, align 4
  %349 = load i64, i64* %18, align 8
  %350 = load i64, i64* %19, align 8
  %351 = call i32 (%struct.TYPE_12__*, i8*, ...) @msg_Dbg(%struct.TYPE_12__* %347, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %348, i64 %349, i64 %350)
  br label %352

352:                                              ; preds = %342, %329
  %353 = load i8*, i8** %5, align 8
  %354 = call i32 @free(i8* %353)
  %355 = load i8*, i8** %22, align 8
  store i8* %355, i8** %5, align 8
  %356 = load i32, i32* %17, align 4
  %357 = sext i32 %356 to i64
  %358 = load i64, i64* %19, align 8
  %359 = sub i64 %357, %358
  %360 = trunc i64 %359 to i32
  store i32 %360, i32* %6, align 4
  br label %361

361:                                              ; preds = %352, %313
  br label %362

362:                                              ; preds = %387, %361
  %363 = load i32, i32* %6, align 4
  %364 = icmp sge i32 %363, 1
  br i1 %364, label %365, label %385

365:                                              ; preds = %362
  %366 = load i8*, i8** %5, align 8
  %367 = load i32, i32* %6, align 4
  %368 = sub nsw i32 %367, 1
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i8, i8* %366, i64 %369
  %371 = load i8, i8* %370, align 1
  %372 = sext i8 %371 to i32
  %373 = icmp eq i32 %372, 13
  br i1 %373, label %383, label %374

374:                                              ; preds = %365
  %375 = load i8*, i8** %5, align 8
  %376 = load i32, i32* %6, align 4
  %377 = sub nsw i32 %376, 1
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i8, i8* %375, i64 %378
  %380 = load i8, i8* %379, align 1
  %381 = sext i8 %380 to i32
  %382 = icmp eq i32 %381, 10
  br label %383

383:                                              ; preds = %374, %365
  %384 = phi i1 [ true, %365 ], [ %382, %374 ]
  br label %385

385:                                              ; preds = %383, %362
  %386 = phi i1 [ false, %362 ], [ %384, %383 ]
  br i1 %386, label %387, label %390

387:                                              ; preds = %385
  %388 = load i32, i32* %6, align 4
  %389 = add nsw i32 %388, -1
  store i32 %389, i32* %6, align 4
  br label %362

390:                                              ; preds = %385
  %391 = load i8*, i8** %5, align 8
  %392 = load i32, i32* %6, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i8, i8* %391, i64 %393
  store i8 0, i8* %394, align 1
  %395 = load i8*, i8** %5, align 8
  store i8* %395, i8** %2, align 8
  br label %415

396:                                              ; preds = %310
  br label %397

397:                                              ; preds = %396, %328, %308, %286, %249, %102
  %398 = load i8*, i8** %5, align 8
  %399 = call i32 @free(i8* %398)
  %400 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %401 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %401, i32 0, i32 0
  %403 = load i64, i64* %402, align 8
  %404 = icmp ne i64 %403, -1
  br i1 %404, label %405, label %414

405:                                              ; preds = %397
  %406 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %407 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %406, i32 0, i32 0
  %408 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %407, i32 0, i32 0
  %409 = load i64, i64* %408, align 8
  %410 = call i32 @vlc_iconv_close(i64 %409)
  %411 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %412 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %411, i32 0, i32 0
  %413 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %412, i32 0, i32 0
  store i64 -1, i64* %413, align 8
  br label %414

414:                                              ; preds = %405, %397
  store i8* null, i8** %2, align 8
  br label %415

415:                                              ; preds = %414, %390, %34
  %416 = load i8*, i8** %2, align 8
  ret i8* %416
}

declare dso_local i32 @vlc_stream_Peek(%struct.TYPE_12__*, i32**, i32) #1

declare dso_local i64 @vlc_stream_Tell(%struct.TYPE_12__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_iconv_close(i64) #1

declare dso_local i32 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local i64 @vlc_iconv_open(i8*, i8*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_12__*, i8*) #1

declare dso_local i8* @memchr(i32*, i8 signext, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @U16_AT(i32*) #1

declare dso_local i8* @realloc_or_free(i8*, i32) #1

declare dso_local i32 @vlc_stream_Read(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @vlc_iconv(i64, i8**, i64*, i8**, i64*) #1

declare dso_local i32 @vlc_strerror_c(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

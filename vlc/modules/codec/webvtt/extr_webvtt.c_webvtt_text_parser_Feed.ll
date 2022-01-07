; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/webvtt/extr_webvtt.c_webvtt_text_parser_Feed.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/webvtt/extr_webvtt.c_webvtt_text_parser_Feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8**, i64, %struct.TYPE_9__*, i32, %struct.TYPE_9__* (i32)*, i32 (i32, %struct.TYPE_9__*)* }
%struct.TYPE_9__ = type { i8*, i8*, i64, i64, i32* }

@WEBVTT_SECTION_UNDEFINED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"\EF\BB\BFWEBVTT\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"WEBVTT\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"STYLE\00", align 1
@WEBVTT_SECTION_STYLE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"REGION\00", align 1
@WEBVTT_SECTION_REGION = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"NOTE\00", align 1
@WEBVTT_SECTION_NOTE = common dso_local global i64 0, align 8
@WEBVTT_SECTION_CUES = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"%s\0A%s\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" --> \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @webvtt_text_parser_Feed(%struct.TYPE_8__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %37

12:                                               ; preds = %2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = icmp ne %struct.TYPE_9__* %15, null
  br i1 %16, label %17, label %36

17:                                               ; preds = %12
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 5
  %20 = load i32 (i32, %struct.TYPE_9__*)*, i32 (i32, %struct.TYPE_9__*)** %19, align 8
  %21 = icmp ne i32 (i32, %struct.TYPE_9__*)* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 5
  %25 = load i32 (i32, %struct.TYPE_9__*)*, i32 (i32, %struct.TYPE_9__*)** %24, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = call i32 %25(i32 %28, %struct.TYPE_9__* %31)
  br label %33

33:                                               ; preds = %22, %17
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %35, align 8
  br label %36

36:                                               ; preds = %33, %12
  br label %396

37:                                               ; preds = %2
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i8**, i8*** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @free(i8* %42)
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i8**, i8*** %45, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i8**, i8*** %50, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  store i8* %48, i8** %52, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i8**, i8*** %54, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 2
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i8**, i8*** %59, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 1
  store i8* %57, i8** %61, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i8**, i8*** %64, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 2
  store i8* %62, i8** %66, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @WEBVTT_SECTION_UNDEFINED, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %156

75:                                               ; preds = %37
  %76 = load i8*, i8** %4, align 8
  %77 = call i64 @KeywordMatch(i8* %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load i8*, i8** %4, align 8
  %81 = call i64 @KeywordMatch(i8* %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %111

83:                                               ; preds = %79, %75
  %84 = load i64, i64* @WEBVTT_SECTION_UNDEFINED, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = icmp ne %struct.TYPE_9__* %89, null
  br i1 %90, label %91, label %110

91:                                               ; preds = %83
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 5
  %94 = load i32 (i32, %struct.TYPE_9__*)*, i32 (i32, %struct.TYPE_9__*)** %93, align 8
  %95 = icmp ne i32 (i32, %struct.TYPE_9__*)* %94, null
  br i1 %95, label %96, label %107

96:                                               ; preds = %91
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 5
  %99 = load i32 (i32, %struct.TYPE_9__*)*, i32 (i32, %struct.TYPE_9__*)** %98, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = call i32 %99(i32 %102, %struct.TYPE_9__* %105)
  br label %107

107:                                              ; preds = %96, %91
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 2
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %109, align 8
  br label %110

110:                                              ; preds = %107, %83
  br label %396

111:                                              ; preds = %79
  %112 = load i8*, i8** %4, align 8
  %113 = call i64 @KeywordMatch(i8* %112, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %111
  %116 = load i64, i64* @WEBVTT_SECTION_STYLE, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  store i64 %116, i64* %118, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %120 = load i8*, i8** %4, align 8
  %121 = call i32 @forward_line(%struct.TYPE_8__* %119, i8* %120, i32 1)
  br label %396

122:                                              ; preds = %111
  %123 = load i8*, i8** %4, align 8
  %124 = call i64 @KeywordMatch(i8* %123, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %122
  %127 = load i64, i64* @WEBVTT_SECTION_REGION, align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  store i64 %127, i64* %129, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %131 = load i8*, i8** %4, align 8
  %132 = call i32 @forward_line(%struct.TYPE_8__* %130, i8* %131, i32 1)
  br label %396

133:                                              ; preds = %122
  %134 = load i8*, i8** %4, align 8
  %135 = call i64 @KeywordMatch(i8* %134, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %133
  %138 = load i64, i64* @WEBVTT_SECTION_NOTE, align 8
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  store i64 %138, i64* %140, align 8
  br label %396

141:                                              ; preds = %133
  %142 = load i8*, i8** %4, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 0
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %141
  %148 = load i64, i64* @WEBVTT_SECTION_CUES, align 8
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  store i64 %148, i64* %150, align 8
  br label %151

151:                                              ; preds = %147, %141
  br label %152

152:                                              ; preds = %151
  br label %153

153:                                              ; preds = %152
  br label %154

154:                                              ; preds = %153
  br label %155

155:                                              ; preds = %154
  br label %156

156:                                              ; preds = %155, %37
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @WEBVTT_SECTION_CUES, align 8
  %161 = icmp eq i64 %159, %160
  %162 = zext i1 %161 to i32
  %163 = call i64 @likely(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %336

165:                                              ; preds = %156
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %167, align 8
  %169 = icmp ne %struct.TYPE_9__* %168, null
  br i1 %169, label %170, label %224

170:                                              ; preds = %165
  %171 = load i8*, i8** %4, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 0
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %201

176:                                              ; preds = %170
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 2
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %178, align 8
  %180 = icmp ne %struct.TYPE_9__* %179, null
  br i1 %180, label %181, label %200

181:                                              ; preds = %176
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 5
  %184 = load i32 (i32, %struct.TYPE_9__*)*, i32 (i32, %struct.TYPE_9__*)** %183, align 8
  %185 = icmp ne i32 (i32, %struct.TYPE_9__*)* %184, null
  br i1 %185, label %186, label %197

186:                                              ; preds = %181
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 5
  %189 = load i32 (i32, %struct.TYPE_9__*)*, i32 (i32, %struct.TYPE_9__*)** %188, align 8
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 2
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %194, align 8
  %196 = call i32 %189(i32 %192, %struct.TYPE_9__* %195)
  br label %197

197:                                              ; preds = %186, %181
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 2
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %199, align 8
  br label %200

200:                                              ; preds = %197, %176
  br label %223

201:                                              ; preds = %170
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 2
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 0
  %206 = load i8*, i8** %205, align 8
  %207 = load i8*, i8** %4, align 8
  %208 = call i32 @asprintf(i8** %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %206, i8* %207)
  %209 = icmp slt i32 -1, %208
  br i1 %209, label %210, label %222

210:                                              ; preds = %201
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 2
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 0
  %215 = load i8*, i8** %214, align 8
  %216 = call i32 @free(i8* %215)
  %217 = load i8*, i8** %5, align 8
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 2
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 0
  store i8* %217, i8** %221, align 8
  br label %222

222:                                              ; preds = %210, %201
  br label %396

223:                                              ; preds = %200
  br label %224

224:                                              ; preds = %223, %165
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 0
  %227 = load i8**, i8*** %226, align 8
  %228 = getelementptr inbounds i8*, i8** %227, i64 1
  %229 = load i8*, i8** %228, align 8
  %230 = icmp eq i8* %229, null
  br i1 %230, label %231, label %232

231:                                              ; preds = %224
  br label %396

232:                                              ; preds = %224
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 0
  %235 = load i8**, i8*** %234, align 8
  %236 = getelementptr inbounds i8*, i8** %235, i64 1
  %237 = load i8*, i8** %236, align 8
  %238 = call i8* @strstr(i8* %237, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  store i8* %238, i8** %6, align 8
  %239 = load i8*, i8** %6, align 8
  %240 = icmp ne i8* %239, null
  br i1 %240, label %241, label %335

241:                                              ; preds = %232
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 0
  %244 = load i8**, i8*** %243, align 8
  %245 = getelementptr inbounds i8*, i8** %244, i64 1
  %246 = load i8*, i8** %245, align 8
  %247 = call i64 @webvtt_scan_time(i8* %246, i64* %7)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %334

249:                                              ; preds = %241
  %250 = load i8*, i8** %6, align 8
  %251 = getelementptr inbounds i8, i8* %250, i64 5
  %252 = call i64 @webvtt_scan_time(i8* %251, i64* %8)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %334

254:                                              ; preds = %249
  %255 = load i64, i64* %7, align 8
  %256 = load i64, i64* %8, align 8
  %257 = icmp sle i64 %255, %256
  br i1 %257, label %258, label %334

258:                                              ; preds = %254
  %259 = load i8*, i8** %6, align 8
  %260 = getelementptr inbounds i8, i8* %259, i64 5
  %261 = getelementptr inbounds i8, i8* %260, i64 5
  %262 = call i8* @strchr(i8* %261, i8 signext 32)
  store i8* %262, i8** %9, align 8
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 4
  %265 = load %struct.TYPE_9__* (i32)*, %struct.TYPE_9__* (i32)** %264, align 8
  %266 = icmp ne %struct.TYPE_9__* (i32)* %265, null
  br i1 %266, label %267, label %275

267:                                              ; preds = %258
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 4
  %270 = load %struct.TYPE_9__* (i32)*, %struct.TYPE_9__* (i32)** %269, align 8
  %271 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 8
  %274 = call %struct.TYPE_9__* %270(i32 %273)
  br label %276

275:                                              ; preds = %258
  br label %276

276:                                              ; preds = %275, %267
  %277 = phi %struct.TYPE_9__* [ %274, %267 ], [ null, %275 ]
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 2
  store %struct.TYPE_9__* %277, %struct.TYPE_9__** %279, align 8
  %280 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 2
  %282 = load %struct.TYPE_9__*, %struct.TYPE_9__** %281, align 8
  %283 = icmp ne %struct.TYPE_9__* %282, null
  br i1 %283, label %284, label %333

284:                                              ; preds = %276
  %285 = load i8*, i8** %9, align 8
  %286 = icmp ne i8* %285, null
  br i1 %286, label %287, label %290

287:                                              ; preds = %284
  %288 = load i8*, i8** %9, align 8
  %289 = call i32* @strdup(i8* %288)
  br label %291

290:                                              ; preds = %284
  br label %291

291:                                              ; preds = %290, %287
  %292 = phi i32* [ %289, %287 ], [ null, %290 ]
  %293 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i32 0, i32 2
  %295 = load %struct.TYPE_9__*, %struct.TYPE_9__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 4
  store i32* %292, i32** %296, align 8
  %297 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 0
  %299 = load i8**, i8*** %298, align 8
  %300 = getelementptr inbounds i8*, i8** %299, i64 0
  %301 = load i8*, i8** %300, align 8
  %302 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %302, i32 0, i32 2
  %304 = load %struct.TYPE_9__*, %struct.TYPE_9__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %304, i32 0, i32 1
  store i8* %301, i8** %305, align 8
  %306 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i32 0, i32 0
  %308 = load i8**, i8*** %307, align 8
  %309 = getelementptr inbounds i8*, i8** %308, i64 0
  store i8* null, i8** %309, align 8
  %310 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 0
  %312 = load i8**, i8*** %311, align 8
  %313 = getelementptr inbounds i8*, i8** %312, i64 2
  %314 = load i8*, i8** %313, align 8
  %315 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %315, i32 0, i32 2
  %317 = load %struct.TYPE_9__*, %struct.TYPE_9__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i32 0, i32 0
  store i8* %314, i8** %318, align 8
  %319 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %320 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %319, i32 0, i32 0
  %321 = load i8**, i8*** %320, align 8
  %322 = getelementptr inbounds i8*, i8** %321, i64 2
  store i8* null, i8** %322, align 8
  %323 = load i64, i64* %7, align 8
  %324 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %325 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %324, i32 0, i32 2
  %326 = load %struct.TYPE_9__*, %struct.TYPE_9__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %326, i32 0, i32 3
  store i64 %323, i64* %327, align 8
  %328 = load i64, i64* %8, align 8
  %329 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %329, i32 0, i32 2
  %331 = load %struct.TYPE_9__*, %struct.TYPE_9__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %331, i32 0, i32 2
  store i64 %328, i64* %332, align 8
  br label %333

333:                                              ; preds = %291, %276
  br label %334

334:                                              ; preds = %333, %254, %249, %241
  br label %335

335:                                              ; preds = %334, %232
  br label %396

336:                                              ; preds = %156
  %337 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %338 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %337, i32 0, i32 1
  %339 = load i64, i64* %338, align 8
  %340 = load i64, i64* @WEBVTT_SECTION_STYLE, align 8
  %341 = icmp eq i64 %339, %340
  br i1 %341, label %342, label %356

342:                                              ; preds = %336
  %343 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %344 = load i8*, i8** %4, align 8
  %345 = call i32 @forward_line(%struct.TYPE_8__* %343, i8* %344, i32 0)
  %346 = load i8*, i8** %4, align 8
  %347 = getelementptr inbounds i8, i8* %346, i64 0
  %348 = load i8, i8* %347, align 1
  %349 = sext i8 %348 to i32
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %355

351:                                              ; preds = %342
  %352 = load i64, i64* @WEBVTT_SECTION_UNDEFINED, align 8
  %353 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %354 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %353, i32 0, i32 1
  store i64 %352, i64* %354, align 8
  br label %355

355:                                              ; preds = %351, %342
  br label %395

356:                                              ; preds = %336
  %357 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %358 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %357, i32 0, i32 1
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* @WEBVTT_SECTION_REGION, align 8
  %361 = icmp eq i64 %359, %360
  br i1 %361, label %362, label %376

362:                                              ; preds = %356
  %363 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %364 = load i8*, i8** %4, align 8
  %365 = call i32 @forward_line(%struct.TYPE_8__* %363, i8* %364, i32 0)
  %366 = load i8*, i8** %4, align 8
  %367 = getelementptr inbounds i8, i8* %366, i64 0
  %368 = load i8, i8* %367, align 1
  %369 = sext i8 %368 to i32
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %375

371:                                              ; preds = %362
  %372 = load i64, i64* @WEBVTT_SECTION_UNDEFINED, align 8
  %373 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %374 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %373, i32 0, i32 1
  store i64 %372, i64* %374, align 8
  br label %375

375:                                              ; preds = %371, %362
  br label %394

376:                                              ; preds = %356
  %377 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %378 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %377, i32 0, i32 1
  %379 = load i64, i64* %378, align 8
  %380 = load i64, i64* @WEBVTT_SECTION_NOTE, align 8
  %381 = icmp eq i64 %379, %380
  br i1 %381, label %382, label %393

382:                                              ; preds = %376
  %383 = load i8*, i8** %4, align 8
  %384 = getelementptr inbounds i8, i8* %383, i64 0
  %385 = load i8, i8* %384, align 1
  %386 = sext i8 %385 to i32
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %388, label %392

388:                                              ; preds = %382
  %389 = load i64, i64* @WEBVTT_SECTION_UNDEFINED, align 8
  %390 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %391 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %390, i32 0, i32 1
  store i64 %389, i64* %391, align 8
  br label %392

392:                                              ; preds = %388, %382
  br label %393

393:                                              ; preds = %392, %376
  br label %394

394:                                              ; preds = %393, %375
  br label %395

395:                                              ; preds = %394, %355
  br label %396

396:                                              ; preds = %36, %110, %115, %126, %137, %222, %231, %395, %335
  ret void
}

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @KeywordMatch(i8*, i8*) #1

declare dso_local i32 @forward_line(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i64 @webvtt_scan_time(i8*, i64*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

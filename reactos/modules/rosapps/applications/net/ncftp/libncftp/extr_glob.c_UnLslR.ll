; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_glob.c_UnLslR.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_glob.c_UnLslR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_10__* }
%struct.tm = type { i32 }
%struct.TYPE_13__ = type { i64, i32, i8*, i64, i32, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [6 x i8] c"total\00", align 1
@kServerTypeMicrosoftFTP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"----------   1 ftpuser  ftpusers\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UnLslR(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [256 x i8], align 16
  %9 = alloca [256 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca [256 x i8], align 16
  %14 = alloca [256 x i8], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.tm*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_10__*, align 8
  %24 = alloca %struct.TYPE_13__, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i64 0, i64* %12, align 8
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i64 0, i64* %27, align 8
  store i64 0, i64* %28, align 8
  %31 = call i32 @time(i32* %19)
  %32 = call %struct.tm* @localtime(i32* %19)
  store %struct.tm* %32, %struct.tm** %21, align 8
  %33 = load %struct.tm*, %struct.tm** %21, align 8
  %34 = icmp eq %struct.tm* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %3
  store i32 1970, i32* %20, align 4
  br label %41

36:                                               ; preds = %3
  %37 = load %struct.tm*, %struct.tm** %21, align 8
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1900
  store i32 %40, i32* %20, align 4
  br label %41

41:                                               ; preds = %36, %35
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  store i8 0, i8* %42, align 16
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %44 = call i32 @InitFileInfoList(%struct.TYPE_12__* %43)
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  store %struct.TYPE_10__* %47, %struct.TYPE_10__** %23, align 8
  br label %48

48:                                               ; preds = %305, %41
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %50 = icmp ne %struct.TYPE_10__* %49, null
  br i1 %50, label %51, label %309

51:                                               ; preds = %48
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i8* @STRNCPY(i8* %52, i32 %55)
  %57 = call i64 @strlen(i8* %56)
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %11, align 4
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %60 = load i8, i8* %59, align 16
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 116
  br i1 %62, label %63, label %77

63:                                               ; preds = %51
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %65 = call i64 @strncmp(i8* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %63
  %68 = load i32, i32* %11, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 58
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  store i32 0, i32* %10, align 4
  br label %305

76:                                               ; preds = %67
  br label %102

77:                                               ; preds = %63, %51
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  store i8* %78, i8** %15, align 8
  br label %79

79:                                               ; preds = %92, %77
  %80 = load i8*, i8** %15, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %79
  %85 = load i8*, i8** %15, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = call i32 @isspace(i32 %87) #3
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %84, %79
  br label %95

91:                                               ; preds = %84
  br label %92

92:                                               ; preds = %91
  %93 = load i8*, i8** %15, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %15, align 8
  br label %79

95:                                               ; preds = %90
  %96 = load i8*, i8** %15, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  store i32 1, i32* %10, align 4
  br label %305

101:                                              ; preds = %95
  br label %102

102:                                              ; preds = %101, %76
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %180

105:                                              ; preds = %102
  %106 = load i32, i32* %11, align 4
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 58
  br i1 %112, label %113, label %180

113:                                              ; preds = %105
  store i32 0, i32* %10, align 4
  %114 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %115 = load i8, i8* %114, align 16
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 46
  br i1 %117, label %118, label %139

118:                                              ; preds = %113
  %119 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 1
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 47
  br i1 %122, label %123, label %139

123:                                              ; preds = %118
  %124 = load i32, i32* %11, align 4
  %125 = sub nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 %126
  store i8 47, i8* %127, align 1
  %128 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %129 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %130 = getelementptr inbounds i8, i8* %129, i64 2
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = add i64 %132, 1
  %134 = sub i64 %133, 2
  %135 = call i32 @memcpy(i8* %128, i8* %130, i64 %134)
  %136 = load i32, i32* %11, align 4
  %137 = sub nsw i32 %136, 2
  %138 = sext i32 %137 to i64
  store i64 %138, i64* %12, align 8
  br label %179

139:                                              ; preds = %118, %113
  %140 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %141 = load i8, i8* %140, align 16
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 46
  br i1 %143, label %144, label %165

144:                                              ; preds = %139
  %145 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 1
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 92
  br i1 %148, label %149, label %165

149:                                              ; preds = %144
  %150 = load i32, i32* %11, align 4
  %151 = sub nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 %152
  store i8 92, i8* %153, align 1
  %154 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %155 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %156 = getelementptr inbounds i8, i8* %155, i64 2
  %157 = load i32, i32* %11, align 4
  %158 = sext i32 %157 to i64
  %159 = add i64 %158, 1
  %160 = sub i64 %159, 2
  %161 = call i32 @memcpy(i8* %154, i8* %156, i64 %160)
  %162 = load i32, i32* %11, align 4
  %163 = sub nsw i32 %162, 2
  %164 = sext i32 %163 to i64
  store i64 %164, i64* %12, align 8
  br label %178

165:                                              ; preds = %144, %139
  %166 = load i32, i32* %11, align 4
  %167 = sub nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 %168
  store i8 47, i8* %169, align 1
  %170 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %171 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = add i64 %173, 1
  %175 = call i32 @memcpy(i8* %170, i8* %171, i64 %174)
  %176 = load i32, i32* %11, align 4
  %177 = sext i32 %176 to i64
  store i64 %177, i64* %12, align 8
  br label %178

178:                                              ; preds = %165, %149
  br label %179

179:                                              ; preds = %178, %123
  br label %305

180:                                              ; preds = %105, %102
  %181 = load i32, i32* %25, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %25, align 4
  %183 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %184 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %185 = load i64, i64* %12, align 8
  %186 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %187 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %188 = load i32, i32* %19, align 4
  %189 = load i32, i32* %20, align 4
  %190 = call i32 @UnLslRLine(i8* %183, i8* %184, i64 %185, i8* %186, i32 256, i8* %187, i32 256, i32* %17, i64* %16, i32* %18, i32 %188, i32 %189, i32* %30)
  store i32 %190, i32* %22, align 4
  %191 = load i32, i32* %22, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %208

193:                                              ; preds = %180
  %194 = load i32, i32* %7, align 4
  %195 = load i32, i32* @kServerTypeMicrosoftFTP, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %208

197:                                              ; preds = %193
  %198 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %199 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %200 = load i64, i64* %12, align 8
  %201 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %202 = call i32 @UnDosLine(i8* %198, i8* %199, i64 %200, i8* %201, i32 256, i32* %17, i64* %16, i32* %18)
  store i32 %202, i32* %22, align 4
  %203 = load i32, i32* %22, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %197
  %206 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  store i8 0, i8* %206, align 16
  store i32 0, i32* %30, align 4
  br label %207

207:                                              ; preds = %205, %197
  br label %208

208:                                              ; preds = %207, %193, %180
  %209 = load i32, i32* %22, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %304

211:                                              ; preds = %208
  %212 = load i32, i32* %26, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %26, align 4
  %214 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %215 = call i64 @strlen(i8* %214)
  store i64 %215, i64* %29, align 8
  %216 = load i64, i64* %29, align 8
  %217 = load i64, i64* %27, align 8
  %218 = icmp ugt i64 %216, %217
  br i1 %218, label %219, label %221

219:                                              ; preds = %211
  %220 = load i64, i64* %29, align 8
  store i64 %220, i64* %27, align 8
  br label %221

221:                                              ; preds = %219, %211
  %222 = load i64, i64* %29, align 8
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  store i64 %222, i64* %223, align 8
  %224 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %225 = call i32* @StrDup(i8* %224)
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 8
  store i32* %225, i32** %226, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 7
  store i32* null, i32** %227, align 8
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 6
  store i32* null, i32** %228, align 8
  %229 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %230 = load i8, i8* %229, align 16
  %231 = sext i8 %230 to i32
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %221
  br label %237

234:                                              ; preds = %221
  %235 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %236 = call i32* @StrDup(i8* %235)
  br label %237

237:                                              ; preds = %234, %233
  %238 = phi i32* [ null, %233 ], [ %236, %234 ]
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 5
  store i32* %238, i32** %239, align 8
  %240 = load i32, i32* %18, align 4
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 4
  store i32 %240, i32* %241, align 8
  %242 = load i64, i64* %16, align 8
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 3
  store i64 %242, i64* %243, align 8
  %244 = load i32, i32* %17, align 4
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  store i32 %244, i32* %245, align 8
  %246 = load i32, i32* %30, align 4
  %247 = icmp sgt i32 %246, 0
  br i1 %247, label %248, label %280

248:                                              ; preds = %237
  %249 = load i32, i32* %30, align 4
  %250 = sext i32 %249 to i64
  %251 = add i64 %250, 1
  %252 = trunc i64 %251 to i32
  %253 = call i64 @malloc(i32 %252)
  %254 = inttoptr i64 %253 to i8*
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 2
  store i8* %254, i8** %255, align 8
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 2
  %257 = load i8*, i8** %256, align 8
  %258 = icmp ne i8* %257, null
  br i1 %258, label %259, label %279

259:                                              ; preds = %248
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 2
  %261 = load i8*, i8** %260, align 8
  %262 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %263 = load i32, i32* %30, align 4
  %264 = sext i32 %263 to i64
  %265 = call i32 @memcpy(i8* %261, i8* %262, i64 %264)
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 2
  %267 = load i8*, i8** %266, align 8
  %268 = load i32, i32* %30, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i8, i8* %267, i64 %269
  store i8 0, i8* %270, align 1
  %271 = load i32, i32* %30, align 4
  %272 = sext i32 %271 to i64
  %273 = load i64, i64* %28, align 8
  %274 = icmp ugt i64 %272, %273
  br i1 %274, label %275, label %278

275:                                              ; preds = %259
  %276 = load i32, i32* %30, align 4
  %277 = sext i32 %276 to i64
  store i64 %277, i64* %28, align 8
  br label %278

278:                                              ; preds = %275, %259
  br label %279

279:                                              ; preds = %278, %248
  br label %301

280:                                              ; preds = %237
  %281 = call i64 @malloc(i32 32)
  %282 = inttoptr i64 %281 to i8*
  %283 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 2
  store i8* %282, i8** %283, align 8
  %284 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 2
  %285 = load i8*, i8** %284, align 8
  %286 = icmp ne i8* %285, null
  br i1 %286, label %287, label %300

287:                                              ; preds = %280
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 2
  %289 = load i8*, i8** %288, align 8
  %290 = call i32 @strcpy(i8* %289, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %291 = load i32, i32* %17, align 4
  %292 = trunc i32 %291 to i8
  %293 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 2
  %294 = load i8*, i8** %293, align 8
  %295 = getelementptr inbounds i8, i8* %294, i64 0
  store i8 %292, i8* %295, align 1
  %296 = load i64, i64* %28, align 8
  %297 = icmp ugt i64 30, %296
  br i1 %297, label %298, label %299

298:                                              ; preds = %287
  store i64 30, i64* %28, align 8
  br label %299

299:                                              ; preds = %298, %287
  br label %300

300:                                              ; preds = %299, %280
  br label %301

301:                                              ; preds = %300, %279
  %302 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %303 = call i32 @AddFileInfo(%struct.TYPE_12__* %302, %struct.TYPE_13__* %24)
  br label %304

304:                                              ; preds = %301, %208
  store i32 0, i32* %10, align 4
  br label %305

305:                                              ; preds = %304, %179, %100, %75
  %306 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %306, i32 0, i32 1
  %308 = load %struct.TYPE_10__*, %struct.TYPE_10__** %307, align 8
  store %struct.TYPE_10__* %308, %struct.TYPE_10__** %23, align 8
  br label %48

309:                                              ; preds = %48
  %310 = load i64, i64* %27, align 8
  %311 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %311, i32 0, i32 0
  store i64 %310, i64* %312, align 8
  %313 = load i64, i64* %28, align 8
  %314 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %314, i32 0, i32 1
  store i64 %313, i64* %315, align 8
  %316 = load i32, i32* %25, align 4
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %309
  store i32 0, i32* %4, align 4
  br label %327

319:                                              ; preds = %309
  %320 = load i32, i32* %26, align 4
  %321 = icmp sgt i32 %320, 0
  br i1 %321, label %322, label %324

322:                                              ; preds = %319
  %323 = load i32, i32* %26, align 4
  br label %325

324:                                              ; preds = %319
  br label %325

325:                                              ; preds = %324, %322
  %326 = phi i32 [ %323, %322 ], [ -1, %324 ]
  store i32 %326, i32* %4, align 4
  br label %327

327:                                              ; preds = %325, %318
  %328 = load i32, i32* %4, align 4
  ret i32 %328
}

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i32 @InitFileInfoList(%struct.TYPE_12__*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @STRNCPY(i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isspace(i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @UnLslRLine(i8*, i8*, i64, i8*, i32, i8*, i32, i32*, i64*, i32*, i32, i32, i32*) #1

declare dso_local i32 @UnDosLine(i8*, i8*, i64, i8*, i32, i32*, i64*, i32*) #1

declare dso_local i32* @StrDup(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @AddFileInfo(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

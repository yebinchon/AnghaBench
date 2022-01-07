; ModuleID = '/home/carl/AnghaBench/vlc/modules/spu/extr_rss.c_ParseFeed.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/spu/extr_rss.c_ParseFeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8*, i8*, i8*, i8*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32*, i32*, i32* }
%struct.TYPE_6__ = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"item\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"rel\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"href\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"alternate\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"logo\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"icon\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"summary\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"url\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"subtitle\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_7__*)* @ParseFeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseFeed(i32* %0, i32* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @VLC_UNUSED(i32* %20)
  store i8* null, i8** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %365, %3
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @xml_ReaderNextNode(i32* %23, i8** %8)
  store i32 %24, i32* %13, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %366

26:                                               ; preds = %22
  %27 = load i32, i32* %13, align 4
  switch i32 %27, label %365 [
    i32 129, label %28
    i32 130, label %191
    i32 128, label %211
  ]

28:                                               ; preds = %26
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @free(i8* %29)
  %31 = load i8*, i8** %8, align 8
  %32 = call i8* @strdup(i8* %31)
  store i8* %32, i8** %9, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = icmp ne i8* %33, null
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @unlikely(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %369

40:                                               ; preds = %28
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %95, label %48

48:                                               ; preds = %44, %40
  store i32 1, i32* %10, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 5
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 24
  %61 = trunc i64 %60 to i32
  %62 = call %struct.TYPE_8__* @xrealloc(%struct.TYPE_8__* %55, i32 %61)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 5
  store %struct.TYPE_8__* %62, %struct.TYPE_8__** %64, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 5
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  store i32* null, i32** %74, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 5
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  store i32* null, i32** %84, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 5
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  store i32* null, i32** %94, align 8
  br label %190

95:                                               ; preds = %44
  %96 = load i8*, i8** %8, align 8
  %97 = call i32 @strcmp(i8* %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  store i32 1, i32* %11, align 4
  br label %189

100:                                              ; preds = %95
  %101 = load i8*, i8** %8, align 8
  %102 = call i32 @strcmp(i8* %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %188, label %104

104:                                              ; preds = %100
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  br label %105

105:                                              ; preds = %128, %104
  %106 = load i32*, i32** %6, align 8
  %107 = call i8* @xml_ReaderNextAttr(i32* %106, i8** %15)
  store i8* %107, i8** %14, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %129

109:                                              ; preds = %105
  %110 = load i8*, i8** %14, align 8
  %111 = call i32 @strcmp(i8* %110, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %109
  %114 = load i8*, i8** %17, align 8
  %115 = call i32 @free(i8* %114)
  %116 = load i8*, i8** %15, align 8
  %117 = call i8* @strdup(i8* %116)
  store i8* %117, i8** %17, align 8
  br label %128

118:                                              ; preds = %109
  %119 = load i8*, i8** %14, align 8
  %120 = call i32 @strcmp(i8* %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %118
  %123 = load i8*, i8** %16, align 8
  %124 = call i32 @free(i8* %123)
  %125 = load i8*, i8** %15, align 8
  %126 = call i8* @strdup(i8* %125)
  store i8* %126, i8** %16, align 8
  br label %127

127:                                              ; preds = %122, %118
  br label %128

128:                                              ; preds = %127, %113
  br label %105

129:                                              ; preds = %105
  %130 = load i8*, i8** %17, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %182

132:                                              ; preds = %129
  %133 = load i8*, i8** %16, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %182

135:                                              ; preds = %132
  %136 = load i8*, i8** %17, align 8
  %137 = call i32 @strcmp(i8* %136, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %154, label %139

139:                                              ; preds = %135
  %140 = load i32, i32* %10, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %154, label %142

142:                                              ; preds = %139
  %143 = load i32, i32* %11, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %154, label %145

145:                                              ; preds = %142
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %154, label %150

150:                                              ; preds = %145
  %151 = load i8*, i8** %16, align 8
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  store i8* %151, i8** %153, align 8
  br label %181

154:                                              ; preds = %145, %142, %139, %135
  %155 = load i8*, i8** %17, align 8
  %156 = call i32 @strcmp(i8* %155, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %154
  %159 = load i8*, i8** %17, align 8
  %160 = call i32 @strcmp(i8* %159, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %177, label %162

162:                                              ; preds = %158, %154
  %163 = load i32, i32* %10, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %177, label %165

165:                                              ; preds = %162
  %166 = load i32, i32* %11, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %177, label %168

168:                                              ; preds = %165
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 2
  %171 = load i8*, i8** %170, align 8
  %172 = icmp ne i8* %171, null
  br i1 %172, label %177, label %173

173:                                              ; preds = %168
  %174 = load i8*, i8** %16, align 8
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 2
  store i8* %174, i8** %176, align 8
  br label %180

177:                                              ; preds = %168, %165, %162, %158
  %178 = load i8*, i8** %16, align 8
  %179 = call i32 @free(i8* %178)
  br label %180

180:                                              ; preds = %177, %173
  br label %181

181:                                              ; preds = %180, %150
  br label %185

182:                                              ; preds = %132, %129
  %183 = load i8*, i8** %16, align 8
  %184 = call i32 @free(i8* %183)
  br label %185

185:                                              ; preds = %182, %181
  %186 = load i8*, i8** %17, align 8
  %187 = call i32 @free(i8* %186)
  br label %188

188:                                              ; preds = %185, %100
  br label %189

189:                                              ; preds = %188, %99
  br label %190

190:                                              ; preds = %189, %48
  br label %365

191:                                              ; preds = %26
  %192 = load i8*, i8** %9, align 8
  %193 = call i32 @FREENULL(i8* %192)
  %194 = load i8*, i8** %8, align 8
  %195 = call i32 @strcmp(i8* %194, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %191
  %198 = load i8*, i8** %8, align 8
  %199 = call i32 @strcmp(i8* %198, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %204, label %201

201:                                              ; preds = %197, %191
  store i32 0, i32* %10, align 4
  %202 = load i32, i32* %12, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %12, align 4
  br label %210

204:                                              ; preds = %197
  %205 = load i8*, i8** %8, align 8
  %206 = call i32 @strcmp(i8* %205, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %209, label %208

208:                                              ; preds = %204
  store i32 0, i32* %11, align 4
  br label %209

209:                                              ; preds = %208, %204
  br label %210

210:                                              ; preds = %209, %201
  br label %365

211:                                              ; preds = %26
  %212 = load i8*, i8** %9, align 8
  %213 = icmp ne i8* %212, null
  br i1 %213, label %215, label %214

214:                                              ; preds = %211
  br label %365

215:                                              ; preds = %211
  %216 = load i8*, i8** %8, align 8
  %217 = call i8* @removeWhiteChars(i8* %216)
  store i8* %217, i8** %18, align 8
  %218 = load i32, i32* %10, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %276

220:                                              ; preds = %215
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 5
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %222, align 8
  %224 = load i32, i32* %12, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i64 %225
  %227 = bitcast %struct.TYPE_8__* %226 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %227, %struct.TYPE_6__** %19, align 8
  %228 = load i8*, i8** %9, align 8
  %229 = call i32 @strcmp(i8* %228, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %240, label %231

231:                                              ; preds = %220
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 0
  %234 = load i8*, i8** %233, align 8
  %235 = icmp ne i8* %234, null
  br i1 %235, label %240, label %236

236:                                              ; preds = %231
  %237 = load i8*, i8** %18, align 8
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 0
  store i8* %237, i8** %239, align 8
  br label %275

240:                                              ; preds = %231, %220
  %241 = load i8*, i8** %9, align 8
  %242 = call i32 @strcmp(i8* %241, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %253, label %244

244:                                              ; preds = %240
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 1
  %247 = load i8*, i8** %246, align 8
  %248 = icmp ne i8* %247, null
  br i1 %248, label %253, label %249

249:                                              ; preds = %244
  %250 = load i8*, i8** %18, align 8
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 1
  store i8* %250, i8** %252, align 8
  br label %274

253:                                              ; preds = %244, %240
  %254 = load i8*, i8** %9, align 8
  %255 = call i32 @strcmp(i8* %254, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %253
  %258 = load i8*, i8** %9, align 8
  %259 = call i32 @strcmp(i8* %258, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %270, label %261

261:                                              ; preds = %257, %253
  %262 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 2
  %264 = load i8*, i8** %263, align 8
  %265 = icmp ne i8* %264, null
  br i1 %265, label %270, label %266

266:                                              ; preds = %261
  %267 = load i8*, i8** %18, align 8
  %268 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 2
  store i8* %267, i8** %269, align 8
  br label %273

270:                                              ; preds = %261, %257
  %271 = load i8*, i8** %18, align 8
  %272 = call i32 @free(i8* %271)
  br label %273

273:                                              ; preds = %270, %266
  br label %274

274:                                              ; preds = %273, %249
  br label %275

275:                                              ; preds = %274, %236
  br label %364

276:                                              ; preds = %215
  %277 = load i32, i32* %11, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %296

279:                                              ; preds = %276
  %280 = load i8*, i8** %9, align 8
  %281 = call i32 @strcmp(i8* %280, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %292, label %283

283:                                              ; preds = %279
  %284 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 2
  %286 = load i8*, i8** %285, align 8
  %287 = icmp ne i8* %286, null
  br i1 %287, label %292, label %288

288:                                              ; preds = %283
  %289 = load i8*, i8** %18, align 8
  %290 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 2
  store i8* %289, i8** %291, align 8
  br label %295

292:                                              ; preds = %283, %279
  %293 = load i8*, i8** %18, align 8
  %294 = call i32 @free(i8* %293)
  br label %295

295:                                              ; preds = %292, %288
  br label %363

296:                                              ; preds = %276
  %297 = load i8*, i8** %9, align 8
  %298 = call i32 @strcmp(i8* %297, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %309, label %300

300:                                              ; preds = %296
  %301 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i32 0, i32 3
  %303 = load i8*, i8** %302, align 8
  %304 = icmp ne i8* %303, null
  br i1 %304, label %309, label %305

305:                                              ; preds = %300
  %306 = load i8*, i8** %18, align 8
  %307 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %308 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %307, i32 0, i32 3
  store i8* %306, i8** %308, align 8
  br label %362

309:                                              ; preds = %300, %296
  %310 = load i8*, i8** %9, align 8
  %311 = call i32 @strcmp(i8* %310, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %322, label %313

313:                                              ; preds = %309
  %314 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %315 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %314, i32 0, i32 1
  %316 = load i8*, i8** %315, align 8
  %317 = icmp ne i8* %316, null
  br i1 %317, label %322, label %318

318:                                              ; preds = %313
  %319 = load i8*, i8** %18, align 8
  %320 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 1
  store i8* %319, i8** %321, align 8
  br label %361

322:                                              ; preds = %313, %309
  %323 = load i8*, i8** %9, align 8
  %324 = call i32 @strcmp(i8* %323, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %330

326:                                              ; preds = %322
  %327 = load i8*, i8** %9, align 8
  %328 = call i32 @strcmp(i8* %327, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %339, label %330

330:                                              ; preds = %326, %322
  %331 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %332 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %331, i32 0, i32 4
  %333 = load i8*, i8** %332, align 8
  %334 = icmp ne i8* %333, null
  br i1 %334, label %339, label %335

335:                                              ; preds = %330
  %336 = load i8*, i8** %18, align 8
  %337 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %338 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %337, i32 0, i32 4
  store i8* %336, i8** %338, align 8
  br label %360

339:                                              ; preds = %330, %326
  %340 = load i8*, i8** %9, align 8
  %341 = call i32 @strcmp(i8* %340, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %347

343:                                              ; preds = %339
  %344 = load i8*, i8** %9, align 8
  %345 = call i32 @strcmp(i8* %344, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %356, label %347

347:                                              ; preds = %343, %339
  %348 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %349 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %348, i32 0, i32 2
  %350 = load i8*, i8** %349, align 8
  %351 = icmp ne i8* %350, null
  br i1 %351, label %356, label %352

352:                                              ; preds = %347
  %353 = load i8*, i8** %18, align 8
  %354 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %355 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %354, i32 0, i32 2
  store i8* %353, i8** %355, align 8
  br label %359

356:                                              ; preds = %347, %343
  %357 = load i8*, i8** %18, align 8
  %358 = call i32 @free(i8* %357)
  br label %359

359:                                              ; preds = %356, %352
  br label %360

360:                                              ; preds = %359, %335
  br label %361

361:                                              ; preds = %360, %318
  br label %362

362:                                              ; preds = %361, %305
  br label %363

363:                                              ; preds = %362, %295
  br label %364

364:                                              ; preds = %363, %275
  br label %365

365:                                              ; preds = %26, %364, %214, %210, %190
  br label %22

366:                                              ; preds = %22
  %367 = load i8*, i8** %9, align 8
  %368 = call i32 @free(i8* %367)
  store i32 1, i32* %4, align 4
  br label %370

369:                                              ; preds = %39
  store i32 0, i32* %4, align 4
  br label %370

370:                                              ; preds = %369, %366
  %371 = load i32, i32* %4, align 4
  ret i32 %371
}

declare dso_local i32 @VLC_UNUSED(i32*) #1

declare dso_local i32 @xml_ReaderNextNode(i32*, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_8__* @xrealloc(%struct.TYPE_8__*, i32) #1

declare dso_local i8* @xml_ReaderNextAttr(i32*, i8**) #1

declare dso_local i32 @FREENULL(i8*) #1

declare dso_local i8* @removeWhiteChars(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

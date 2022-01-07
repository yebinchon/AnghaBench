; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_dir.c_test_makepath.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_dir.c_test_makepath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i8*, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@makepath_cases = common dso_local global %struct.TYPE_4__* null, align 8
@USE_BUFF = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"got '%s' for case %d\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"got '%s' for unicode case %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_makepath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_makepath() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %1, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %2, align 8
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %3, align 8
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %4, align 8
  %21 = load i32, i32* @MAX_PATH, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %5, align 8
  %24 = load i32, i32* @MAX_PATH, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %6, align 8
  %27 = load i32, i32* @MAX_PATH, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %277, %0
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @makepath_cases, align 8
  %33 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %32)
  %34 = icmp ult i32 %31, %33
  br i1 %34, label %35, label %280

35:                                               ; preds = %30
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @makepath_cases, align 8
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  store %struct.TYPE_4__* %39, %struct.TYPE_4__** %10, align 8
  %40 = load i32, i32* @MAX_PATH, align 4
  %41 = call i32 @memset(i8* %29, i8 signext 88, i32 %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %35
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @strcpy(i8* %29, i8* %49)
  br label %51

51:                                               ; preds = %46, %35
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = load i8*, i8** @USE_BUFF, align 8
  %56 = icmp eq i8* %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %62

58:                                               ; preds = %51
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  br label %62

62:                                               ; preds = %58, %57
  %63 = phi i8* [ %29, %57 ], [ %61, %58 ]
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = load i8*, i8** @USE_BUFF, align 8
  %68 = icmp eq i8* %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %74

70:                                               ; preds = %62
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  br label %74

74:                                               ; preds = %70, %69
  %75 = phi i8* [ %29, %69 ], [ %73, %70 ]
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 3
  %78 = load i8*, i8** %77, align 8
  %79 = load i8*, i8** @USE_BUFF, align 8
  %80 = icmp eq i8* %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %86

82:                                               ; preds = %74
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 3
  %85 = load i8*, i8** %84, align 8
  br label %86

86:                                               ; preds = %82, %81
  %87 = phi i8* [ %29, %81 ], [ %85, %82 ]
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 4
  %90 = load i8*, i8** %89, align 8
  %91 = load i8*, i8** @USE_BUFF, align 8
  %92 = icmp eq i8* %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  br label %98

94:                                               ; preds = %86
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 4
  %97 = load i8*, i8** %96, align 8
  br label %98

98:                                               ; preds = %94, %93
  %99 = phi i8* [ %29, %93 ], [ %97, %94 ]
  %100 = call i32 @_makepath(i8* %29, i8* %63, i8* %75, i8* %87, i8* %99)
  %101 = load i32, i32* @MAX_PATH, align 4
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %29, i64 %103
  store i8 0, i8* %104, align 1
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @strcmp(i32 %107, i8* %29)
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @ok(i32 %111, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %29, i32 %112)
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = load i8*, i8** @USE_BUFF, align 8
  %118 = icmp ne i8* %116, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %98
  %120 = load i32, i32* @CP_ACP, align 4
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = load i32, i32* @MAX_PATH, align 4
  %125 = call i32 @MultiByteToWideChar(i32 %120, i32 0, i8* %123, i32 -1, i8* %14, i32 %124)
  br label %126

126:                                              ; preds = %119, %98
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 2
  %129 = load i8*, i8** %128, align 8
  %130 = load i8*, i8** @USE_BUFF, align 8
  %131 = icmp ne i8* %129, %130
  br i1 %131, label %132, label %139

132:                                              ; preds = %126
  %133 = load i32, i32* @CP_ACP, align 4
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 2
  %136 = load i8*, i8** %135, align 8
  %137 = load i32, i32* @MAX_PATH, align 4
  %138 = call i32 @MultiByteToWideChar(i32 %133, i32 0, i8* %136, i32 -1, i8* %17, i32 %137)
  br label %139

139:                                              ; preds = %132, %126
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 3
  %142 = load i8*, i8** %141, align 8
  %143 = load i8*, i8** @USE_BUFF, align 8
  %144 = icmp ne i8* %142, %143
  br i1 %144, label %145, label %152

145:                                              ; preds = %139
  %146 = load i32, i32* @CP_ACP, align 4
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 3
  %149 = load i8*, i8** %148, align 8
  %150 = load i32, i32* @MAX_PATH, align 4
  %151 = call i32 @MultiByteToWideChar(i32 %146, i32 0, i8* %149, i32 -1, i8* %20, i32 %150)
  br label %152

152:                                              ; preds = %145, %139
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 4
  %155 = load i8*, i8** %154, align 8
  %156 = load i8*, i8** @USE_BUFF, align 8
  %157 = icmp ne i8* %155, %156
  br i1 %157, label %158, label %165

158:                                              ; preds = %152
  %159 = load i32, i32* @CP_ACP, align 4
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 4
  %162 = load i8*, i8** %161, align 8
  %163 = load i32, i32* @MAX_PATH, align 4
  %164 = call i32 @MultiByteToWideChar(i32 %159, i32 0, i8* %162, i32 -1, i8* %23, i32 %163)
  br label %165

165:                                              ; preds = %158, %152
  %166 = load i32, i32* @MAX_PATH, align 4
  %167 = call i32 @memset(i8* %29, i8 signext 0, i32 %166)
  store i32 0, i32* %9, align 4
  br label %168

168:                                              ; preds = %176, %165
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* @MAX_PATH, align 4
  %171 = icmp ult i32 %169, %170
  br i1 %171, label %172, label %179

172:                                              ; preds = %168
  %173 = load i32, i32* %9, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %26, i64 %174
  store i8 88, i8* %175, align 1
  br label %176

176:                                              ; preds = %172
  %177 = load i32, i32* %9, align 4
  %178 = add i32 %177, 1
  store i32 %178, i32* %9, align 4
  br label %168

179:                                              ; preds = %168
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %184, label %191

184:                                              ; preds = %179
  %185 = load i32, i32* @CP_ACP, align 4
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = load i32, i32* @MAX_PATH, align 4
  %190 = call i32 @MultiByteToWideChar(i32 %185, i32 0, i8* %188, i32 -1, i8* %26, i32 %189)
  br label %191

191:                                              ; preds = %184, %179
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 1
  %194 = load i8*, i8** %193, align 8
  %195 = load i8*, i8** @USE_BUFF, align 8
  %196 = icmp eq i8* %194, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %191
  br label %207

198:                                              ; preds = %191
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 1
  %201 = load i8*, i8** %200, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %203, label %204

203:                                              ; preds = %198
  br label %205

204:                                              ; preds = %198
  br label %205

205:                                              ; preds = %204, %203
  %206 = phi i8* [ %14, %203 ], [ null, %204 ]
  br label %207

207:                                              ; preds = %205, %197
  %208 = phi i8* [ %26, %197 ], [ %206, %205 ]
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 2
  %211 = load i8*, i8** %210, align 8
  %212 = load i8*, i8** @USE_BUFF, align 8
  %213 = icmp eq i8* %211, %212
  br i1 %213, label %214, label %215

214:                                              ; preds = %207
  br label %224

215:                                              ; preds = %207
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 2
  %218 = load i8*, i8** %217, align 8
  %219 = icmp ne i8* %218, null
  br i1 %219, label %220, label %221

220:                                              ; preds = %215
  br label %222

221:                                              ; preds = %215
  br label %222

222:                                              ; preds = %221, %220
  %223 = phi i8* [ %17, %220 ], [ null, %221 ]
  br label %224

224:                                              ; preds = %222, %214
  %225 = phi i8* [ %26, %214 ], [ %223, %222 ]
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 3
  %228 = load i8*, i8** %227, align 8
  %229 = load i8*, i8** @USE_BUFF, align 8
  %230 = icmp eq i8* %228, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %224
  br label %241

232:                                              ; preds = %224
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 3
  %235 = load i8*, i8** %234, align 8
  %236 = icmp ne i8* %235, null
  br i1 %236, label %237, label %238

237:                                              ; preds = %232
  br label %239

238:                                              ; preds = %232
  br label %239

239:                                              ; preds = %238, %237
  %240 = phi i8* [ %20, %237 ], [ null, %238 ]
  br label %241

241:                                              ; preds = %239, %231
  %242 = phi i8* [ %26, %231 ], [ %240, %239 ]
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 4
  %245 = load i8*, i8** %244, align 8
  %246 = load i8*, i8** @USE_BUFF, align 8
  %247 = icmp eq i8* %245, %246
  br i1 %247, label %248, label %249

248:                                              ; preds = %241
  br label %258

249:                                              ; preds = %241
  %250 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 4
  %252 = load i8*, i8** %251, align 8
  %253 = icmp ne i8* %252, null
  br i1 %253, label %254, label %255

254:                                              ; preds = %249
  br label %256

255:                                              ; preds = %249
  br label %256

256:                                              ; preds = %255, %254
  %257 = phi i8* [ %23, %254 ], [ null, %255 ]
  br label %258

258:                                              ; preds = %256, %248
  %259 = phi i8* [ %26, %248 ], [ %257, %256 ]
  %260 = call i32 @_wmakepath(i8* %26, i8* %208, i8* %225, i8* %242, i8* %259)
  %261 = load i32, i32* @MAX_PATH, align 4
  %262 = sub nsw i32 %261, 1
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8, i8* %26, i64 %263
  store i8 0, i8* %264, align 1
  %265 = load i32, i32* @CP_ACP, align 4
  %266 = load i32, i32* @MAX_PATH, align 4
  %267 = call i32 @WideCharToMultiByte(i32 %265, i32 0, i8* %26, i32 -1, i8* %29, i32 %266, i32* null, i32* null)
  %268 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 5
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @strcmp(i32 %270, i8* %29)
  %272 = icmp ne i32 %271, 0
  %273 = xor i1 %272, true
  %274 = zext i1 %273 to i32
  %275 = load i32, i32* %8, align 4
  %276 = call i32 @ok(i32 %274, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %29, i32 %275)
  br label %277

277:                                              ; preds = %258
  %278 = load i32, i32* %8, align 4
  %279 = add i32 %278, 1
  store i32 %279, i32* %8, align 4
  br label %30

280:                                              ; preds = %30
  %281 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %281)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #2

declare dso_local i32 @memset(i8*, i8 signext, i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @_makepath(i8*, i8*, i8*, i8*, i8*) #2

declare dso_local i32 @ok(i32, i8*, i8*, i32) #2

declare dso_local i32 @strcmp(i32, i8*) #2

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i8*, i32) #2

declare dso_local i32 @_wmakepath(i8*, i8*, i8*, i8*, i8*) #2

declare dso_local i32 @WideCharToMultiByte(i32, i32, i8*, i32, i8*, i32, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_internet.c_APPINFO_QueryOption.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_internet.c_APPINFO_QueryOption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32*, i32*, i32 }
%struct.TYPE_6__ = type { i32*, i32*, i32 }

@.str = private unnamed_addr constant [29 x i8] c"INTERNET_OPTION_HANDLE_TYPE\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@INTERNET_HANDLE_TYPE_INTERNET = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"INTERNET_OPTION_USER_AGENT\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"INTERNET_OPTION_CONNECT_TIMEOUT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32*, i32)* @APPINFO_QueryOption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @APPINFO_QueryOption(i32* %0, i32 %1, i8* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_6__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = bitcast i32* %25 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %12, align 8
  %27 = load i32, i32* %8, align 4
  switch i32 %27, label %393 [
    i32 130, label %28
    i32 128, label %42
    i32 129, label %139
    i32 131, label %377
  ]

28:                                               ; preds = %5
  %29 = call i32 @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %30 = load i32*, i32** %10, align 8
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ult i64 %32, 4
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  store i32 %35, i32* %6, align 4
  br label %400

36:                                               ; preds = %28
  %37 = load i32*, i32** %10, align 8
  store i32 4, i32* %37, align 4
  %38 = load i32, i32* @INTERNET_HANDLE_TYPE_INTERNET, align 4
  %39 = load i8*, i8** %9, align 8
  %40 = bitcast i8* %39 to i32*
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %41, i32* %6, align 4
  br label %400

42:                                               ; preds = %5
  %43 = call i32 @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %93

48:                                               ; preds = %42
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @strlenW(i32 %56)
  br label %59

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58, %53
  %60 = phi i32 [ %57, %53 ], [ 0, %58 ]
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 4
  %65 = trunc i64 %64 to i32
  %66 = load i32*, i32** %10, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i8*, i8** %9, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %59
  %70 = load i32, i32* %13, align 4
  %71 = load i32*, i32** %10, align 8
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %70, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %69, %59
  %75 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  store i32 %75, i32* %6, align 4
  br label %400

76:                                               ; preds = %69
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load i8*, i8** %9, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @strcpyW(i8* %82, i32 %85)
  br label %90

87:                                               ; preds = %76
  %88 = load i8*, i8** %9, align 8
  %89 = bitcast i8* %88 to i32*
  store i32 0, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %81
  %91 = load i32, i32* %14, align 4
  %92 = load i32*, i32** %10, align 8
  store i32 %91, i32* %92, align 4
  br label %137

93:                                               ; preds = %42
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load i32, i32* @CP_ACP, align 4
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @WideCharToMultiByte(i32 %99, i32 0, i32 %102, i32 -1, i8* null, i32 0, i32* null, i32* null)
  %104 = load i32*, i32** %10, align 8
  store i32 %103, i32* %104, align 4
  br label %107

105:                                              ; preds = %93
  %106 = load i32*, i32** %10, align 8
  store i32 1, i32* %106, align 4
  br label %107

107:                                              ; preds = %105, %98
  %108 = load i8*, i8** %9, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load i32, i32* %13, align 4
  %112 = load i32*, i32** %10, align 8
  %113 = load i32, i32* %112, align 4
  %114 = icmp slt i32 %111, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %110, %107
  %116 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  store i32 %116, i32* %6, align 4
  br label %400

117:                                              ; preds = %110
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %117
  %123 = load i32, i32* @CP_ACP, align 4
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = load i8*, i8** %9, align 8
  %128 = load i32*, i32** %10, align 8
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @WideCharToMultiByte(i32 %123, i32 0, i32 %126, i32 -1, i8* %127, i32 %129, i32* null, i32* null)
  br label %133

131:                                              ; preds = %117
  %132 = load i8*, i8** %9, align 8
  store i8 0, i8* %132, align 1
  br label %133

133:                                              ; preds = %131, %122
  %134 = load i32*, i32** %10, align 8
  %135 = load i32, i32* %134, align 4
  %136 = sub nsw i32 %135, 1
  store i32 %136, i32* %134, align 4
  br label %137

137:                                              ; preds = %133, %90
  %138 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %138, i32* %6, align 4
  br label %400

139:                                              ; preds = %5
  %140 = load i32*, i32** %10, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %144, label %142

142:                                              ; preds = %139
  %143 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %143, i32* %6, align 4
  br label %400

144:                                              ; preds = %139
  %145 = load i32, i32* %11, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %263

147:                                              ; preds = %144
  %148 = load i8*, i8** %9, align 8
  %149 = bitcast i8* %148 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %149, %struct.TYPE_5__** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %147
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @lstrlenW(i32 %157)
  %159 = add nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = mul i64 %160, 4
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %16, align 4
  br label %163

163:                                              ; preds = %154, %147
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %163
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @lstrlenW(i32 %171)
  %173 = add nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = mul i64 %174, 4
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %17, align 4
  br label %177

177:                                              ; preds = %168, %163
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %179 = icmp ne %struct.TYPE_5__* %178, null
  br i1 %179, label %180, label %191

180:                                              ; preds = %177
  %181 = load i32*, i32** %10, align 8
  %182 = load i32, i32* %181, align 4
  %183 = sext i32 %182 to i64
  %184 = load i32, i32* %16, align 4
  %185 = sext i32 %184 to i64
  %186 = add i64 24, %185
  %187 = load i32, i32* %17, align 4
  %188 = sext i32 %187 to i64
  %189 = add i64 %186, %188
  %190 = icmp ult i64 %183, %189
  br i1 %190, label %191, label %201

191:                                              ; preds = %180, %177
  %192 = load i32, i32* %16, align 4
  %193 = sext i32 %192 to i64
  %194 = add i64 24, %193
  %195 = load i32, i32* %17, align 4
  %196 = sext i32 %195 to i64
  %197 = add i64 %194, %196
  %198 = trunc i64 %197 to i32
  %199 = load i32*, i32** %10, align 8
  store i32 %198, i32* %199, align 4
  %200 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  store i32 %200, i32* %6, align 4
  br label %400

201:                                              ; preds = %180
  %202 = load i8*, i8** %9, align 8
  %203 = ptrtoint i8* %202 to i32
  %204 = sext i32 %203 to i64
  %205 = add i64 %204, 24
  %206 = inttoptr i64 %205 to i8*
  store i8* %206, i8** %18, align 8
  %207 = load i8*, i8** %9, align 8
  %208 = ptrtoint i8* %207 to i32
  %209 = sext i32 %208 to i64
  %210 = add i64 %209, 24
  %211 = load i32, i32* %16, align 4
  %212 = sext i32 %211 to i64
  %213 = add i64 %210, %212
  %214 = inttoptr i64 %213 to i8*
  store i8* %214, i8** %19, align 8
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 2
  store i32 %217, i32* %219, align 8
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 1
  store i32* null, i32** %221, align 8
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 0
  store i32* null, i32** %223, align 8
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %238

228:                                              ; preds = %201
  %229 = load i8*, i8** %18, align 8
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @lstrcpyW(i8* %229, i32 %232)
  %234 = load i8*, i8** %18, align 8
  %235 = bitcast i8* %234 to i32*
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 1
  store i32* %235, i32** %237, align 8
  br label %238

238:                                              ; preds = %228, %201
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %253

243:                                              ; preds = %238
  %244 = load i8*, i8** %19, align 8
  %245 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @lstrcpyW(i8* %244, i32 %247)
  %249 = load i8*, i8** %19, align 8
  %250 = bitcast i8* %249 to i32*
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 0
  store i32* %250, i32** %252, align 8
  br label %253

253:                                              ; preds = %243, %238
  %254 = load i32, i32* %16, align 4
  %255 = sext i32 %254 to i64
  %256 = add i64 24, %255
  %257 = load i32, i32* %17, align 4
  %258 = sext i32 %257 to i64
  %259 = add i64 %256, %258
  %260 = trunc i64 %259 to i32
  %261 = load i32*, i32** %10, align 8
  store i32 %260, i32* %261, align 4
  %262 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %262, i32* %6, align 4
  br label %400

263:                                              ; preds = %144
  %264 = load i8*, i8** %9, align 8
  %265 = bitcast i8* %264 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %265, %struct.TYPE_6__** %20, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %266 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %276

270:                                              ; preds = %263
  %271 = load i32, i32* @CP_ACP, align 4
  %272 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @WideCharToMultiByte(i32 %271, i32 0, i32 %274, i32 -1, i8* null, i32 0, i32* null, i32* null)
  store i32 %275, i32* %21, align 4
  br label %276

276:                                              ; preds = %270, %263
  %277 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %287

281:                                              ; preds = %276
  %282 = load i32, i32* @CP_ACP, align 4
  %283 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @WideCharToMultiByte(i32 %282, i32 0, i32 %285, i32 -1, i8* null, i32 0, i32* null, i32* null)
  store i32 %286, i32* %22, align 4
  br label %287

287:                                              ; preds = %281, %276
  %288 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %289 = icmp ne %struct.TYPE_6__* %288, null
  br i1 %289, label %290, label %301

290:                                              ; preds = %287
  %291 = load i32*, i32** %10, align 8
  %292 = load i32, i32* %291, align 4
  %293 = sext i32 %292 to i64
  %294 = load i32, i32* %21, align 4
  %295 = sext i32 %294 to i64
  %296 = add i64 24, %295
  %297 = load i32, i32* %22, align 4
  %298 = sext i32 %297 to i64
  %299 = add i64 %296, %298
  %300 = icmp ult i64 %293, %299
  br i1 %300, label %301, label %311

301:                                              ; preds = %290, %287
  %302 = load i32, i32* %21, align 4
  %303 = sext i32 %302 to i64
  %304 = add i64 24, %303
  %305 = load i32, i32* %22, align 4
  %306 = sext i32 %305 to i64
  %307 = add i64 %304, %306
  %308 = trunc i64 %307 to i32
  %309 = load i32*, i32** %10, align 8
  store i32 %308, i32* %309, align 4
  %310 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  store i32 %310, i32* %6, align 4
  br label %400

311:                                              ; preds = %290
  %312 = load i8*, i8** %9, align 8
  %313 = ptrtoint i8* %312 to i32
  %314 = sext i32 %313 to i64
  %315 = add i64 %314, 24
  %316 = inttoptr i64 %315 to i8*
  store i8* %316, i8** %23, align 8
  %317 = load i8*, i8** %9, align 8
  %318 = ptrtoint i8* %317 to i32
  %319 = sext i32 %318 to i64
  %320 = add i64 %319, 24
  %321 = load i32, i32* %21, align 4
  %322 = sext i32 %321 to i64
  %323 = add i64 %320, %322
  %324 = inttoptr i64 %323 to i8*
  store i8* %324, i8** %24, align 8
  %325 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %326 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %325, i32 0, i32 3
  %327 = load i32, i32* %326, align 4
  %328 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %329 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %328, i32 0, i32 2
  store i32 %327, i32* %329, align 8
  %330 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %331 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %330, i32 0, i32 1
  store i32* null, i32** %331, align 8
  %332 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %333 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %332, i32 0, i32 0
  store i32* null, i32** %333, align 8
  %334 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %335 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %334, i32 0, i32 2
  %336 = load i32, i32* %335, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %350

338:                                              ; preds = %311
  %339 = load i32, i32* @CP_ACP, align 4
  %340 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %341 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 4
  %343 = load i8*, i8** %23, align 8
  %344 = load i32, i32* %21, align 4
  %345 = call i32 @WideCharToMultiByte(i32 %339, i32 0, i32 %342, i32 -1, i8* %343, i32 %344, i32* null, i32* null)
  %346 = load i8*, i8** %23, align 8
  %347 = bitcast i8* %346 to i32*
  %348 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %349 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %348, i32 0, i32 1
  store i32* %347, i32** %349, align 8
  br label %350

350:                                              ; preds = %338, %311
  %351 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %352 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %367

355:                                              ; preds = %350
  %356 = load i32, i32* @CP_ACP, align 4
  %357 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %358 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 4
  %360 = load i8*, i8** %24, align 8
  %361 = load i32, i32* %22, align 4
  %362 = call i32 @WideCharToMultiByte(i32 %356, i32 0, i32 %359, i32 -1, i8* %360, i32 %361, i32* null, i32* null)
  %363 = load i8*, i8** %24, align 8
  %364 = bitcast i8* %363 to i32*
  %365 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %366 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %365, i32 0, i32 0
  store i32* %364, i32** %366, align 8
  br label %367

367:                                              ; preds = %355, %350
  %368 = load i32, i32* %21, align 4
  %369 = sext i32 %368 to i64
  %370 = add i64 24, %369
  %371 = load i32, i32* %22, align 4
  %372 = sext i32 %371 to i64
  %373 = add i64 %370, %372
  %374 = trunc i64 %373 to i32
  %375 = load i32*, i32** %10, align 8
  store i32 %374, i32* %375, align 4
  %376 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %376, i32* %6, align 4
  br label %400

377:                                              ; preds = %5
  %378 = call i32 @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %379 = load i32*, i32** %10, align 8
  %380 = load i32, i32* %379, align 4
  %381 = sext i32 %380 to i64
  %382 = icmp ult i64 %381, 4
  br i1 %382, label %383, label %385

383:                                              ; preds = %377
  %384 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  store i32 %384, i32* %6, align 4
  br label %400

385:                                              ; preds = %377
  %386 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %387 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 4
  %389 = load i8*, i8** %9, align 8
  %390 = bitcast i8* %389 to i32*
  store i32 %388, i32* %390, align 4
  %391 = load i32*, i32** %10, align 8
  store i32 4, i32* %391, align 4
  %392 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %392, i32* %6, align 4
  br label %400

393:                                              ; preds = %5
  %394 = load i32*, i32** %7, align 8
  %395 = load i32, i32* %8, align 4
  %396 = load i8*, i8** %9, align 8
  %397 = load i32*, i32** %10, align 8
  %398 = load i32, i32* %11, align 4
  %399 = call i32 @INET_QueryOption(i32* %394, i32 %395, i8* %396, i32* %397, i32 %398)
  store i32 %399, i32* %6, align 4
  br label %400

400:                                              ; preds = %393, %385, %383, %367, %301, %253, %191, %142, %137, %115, %74, %36, %34
  %401 = load i32, i32* %6, align 4
  ret i32 %401
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @strlenW(i32) #1

declare dso_local i32 @strcpyW(i8*, i32) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @lstrlenW(i32) #1

declare dso_local i32 @lstrcpyW(i8*, i32) #1

declare dso_local i32 @INET_QueryOption(i32*, i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

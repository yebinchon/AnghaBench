; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/hlink/extr_hlink.c_test_persist_save_data.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/hlink/extr_hlink.c_test_persist_save_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IPersistStream = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"IHlink_QueryInterface failed with error 0x%08x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"CreateStreamOnHGlobal failed with error 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"IPersistStream_Save failed with error 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"GetHGlobalFromStream failed with error 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"%s: Size of saved data differs (expected %d or %d, actual %d)\0A\00", align 1
@expected_hlink_data2 = common dso_local global i8* null, align 8
@expected_hlink_data3 = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@expected_hlink_data_ie7 = common dso_local global i8* null, align 8
@expected_hlink_data2_ie7 = common dso_local global i8* null, align 8
@expected_hlink_data3_ie7 = common dso_local global i8* null, align 8
@expected_hlink_data5_ie7 = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"Expected 0 or 1, got %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"%s: Saved data differs\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"0x%02x,\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i8*, i32, i8*, i32)* @test_persist_save_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_persist_save_data(i8* %0, i32* %1, i8* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = bitcast i32** %15 to i8**
  %23 = call i64 @IHlink_QueryInterface(i32* %21, i32* @IID_IPersistStream, i8** %22)
  store i64 %23, i64* %13, align 8
  %24 = load i64, i64* %13, align 8
  %25 = load i64, i64* @S_OK, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i64, i64* %13, align 8
  %29 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load i32, i32* @TRUE, align 4
  %31 = call i64 @CreateStreamOnHGlobal(i32* null, i32 %30, i32** %14)
  store i64 %31, i64* %13, align 8
  %32 = load i64, i64* %13, align 8
  %33 = load i64, i64* @S_OK, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i64, i64* %13, align 8
  %37 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  %38 = load i32*, i32** %15, align 8
  %39 = load i32*, i32** %14, align 8
  %40 = load i32, i32* @TRUE, align 4
  %41 = call i64 @IPersistStream_Save(i32* %38, i32* %39, i32 %40)
  store i64 %41, i64* %13, align 8
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* @S_OK, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i64, i64* %13, align 8
  %47 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64 %46)
  %48 = load i32*, i32** %14, align 8
  %49 = call i64 @GetHGlobalFromStream(i32* %48, i32* %16)
  store i64 %49, i64* %13, align 8
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* @S_OK, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load i64, i64* %13, align 8
  %55 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i64 %54)
  %56 = load i32, i32* %16, align 4
  %57 = call i32 @GlobalSize(i32 %56)
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %16, align 4
  %59 = call i8* @GlobalLock(i32 %58)
  store i8* %59, i8** %18, align 8
  %60 = load i32, i32* %17, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %6
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp eq i32 %64, %65
  br label %67

67:                                               ; preds = %63, %6
  %68 = phi i1 [ true, %6 ], [ %66, %63 ]
  %69 = zext i1 %68 to i32
  %70 = load i8*, i8** %7, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %17, align 4
  %74 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i8* %70, i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* @TRUE, align 4
  store i32 %75, i32* %20, align 4
  store i32 0, i32* %19, align 4
  br label %76

76:                                               ; preds = %119, %67
  %77 = load i32, i32* %19, align 4
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @min(i32 %78, i32 %79)
  %81 = icmp ult i32 %77, %80
  br i1 %81, label %82, label %122

82:                                               ; preds = %76
  %83 = load i8*, i8** %9, align 8
  %84 = load i32, i32* %19, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = load i8*, i8** %18, align 8
  %90 = load i32, i32* %19, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = icmp ne i32 %88, %94
  br i1 %95, label %96, label %118

96:                                               ; preds = %82
  %97 = load i8*, i8** %9, align 8
  %98 = load i8*, i8** @expected_hlink_data2, align 8
  %99 = icmp ne i8* %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load i8*, i8** %9, align 8
  %102 = load i8*, i8** @expected_hlink_data3, align 8
  %103 = icmp ne i8* %101, %102
  br i1 %103, label %116, label %104

104:                                              ; preds = %100, %96
  %105 = load i32, i32* %19, align 4
  %106 = icmp ult i32 %105, 52
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %19, align 4
  %109 = icmp uge i32 %108, 56
  br i1 %109, label %110, label %118

110:                                              ; preds = %107, %104
  %111 = load i32, i32* %19, align 4
  %112 = icmp ult i32 %111, 80
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %19, align 4
  %115 = icmp uge i32 %114, 84
  br i1 %115, label %116, label %118

116:                                              ; preds = %113, %110, %100
  %117 = load i32, i32* @FALSE, align 4
  store i32 %117, i32* %20, align 4
  br label %122

118:                                              ; preds = %113, %107, %82
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %19, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %19, align 4
  br label %76

122:                                              ; preds = %116, %76
  %123 = load i32, i32* %20, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %246, label %125

125:                                              ; preds = %122
  %126 = load i8*, i8** %11, align 8
  %127 = load i8*, i8** %9, align 8
  %128 = icmp ne i8* %126, %127
  br i1 %128, label %129, label %246

129:                                              ; preds = %125
  %130 = load i32, i32* @TRUE, align 4
  store i32 %130, i32* %20, align 4
  store i32 0, i32* %19, align 4
  br label %131

131:                                              ; preds = %242, %129
  %132 = load i32, i32* %19, align 4
  %133 = load i32, i32* %17, align 4
  %134 = load i32, i32* %12, align 4
  %135 = call i32 @min(i32 %133, i32 %134)
  %136 = icmp ult i32 %132, %135
  br i1 %136, label %137, label %245

137:                                              ; preds = %131
  %138 = load i8*, i8** %11, align 8
  %139 = load i8*, i8** @expected_hlink_data_ie7, align 8
  %140 = icmp eq i8* %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load i32, i32* %19, align 4
  %143 = icmp eq i32 %142, 89
  br i1 %143, label %165, label %144

144:                                              ; preds = %141, %137
  %145 = load i8*, i8** %11, align 8
  %146 = load i8*, i8** @expected_hlink_data2_ie7, align 8
  %147 = icmp eq i8* %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = load i32, i32* %19, align 4
  %150 = icmp eq i32 %149, 109
  br i1 %150, label %165, label %151

151:                                              ; preds = %148, %144
  %152 = load i8*, i8** %11, align 8
  %153 = load i8*, i8** @expected_hlink_data3_ie7, align 8
  %154 = icmp eq i8* %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %151
  %156 = load i32, i32* %19, align 4
  %157 = icmp eq i32 %156, 109
  br i1 %157, label %165, label %158

158:                                              ; preds = %155, %151
  %159 = load i8*, i8** %11, align 8
  %160 = load i8*, i8** @expected_hlink_data5_ie7, align 8
  %161 = icmp eq i8* %159, %160
  br i1 %161, label %162, label %205

162:                                              ; preds = %158
  %163 = load i32, i32* %19, align 4
  %164 = icmp eq i32 %163, 107
  br i1 %164, label %165, label %205

165:                                              ; preds = %162, %155, %148, %141
  %166 = load i8*, i8** %18, align 8
  %167 = load i32, i32* %19, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  %170 = load i8, i8* %169, align 1
  %171 = zext i8 %170 to i32
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %195, label %173

173:                                              ; preds = %165
  %174 = load i8*, i8** %18, align 8
  %175 = load i32, i32* %19, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  %178 = load i8, i8* %177, align 1
  %179 = zext i8 %178 to i32
  %180 = icmp eq i32 %179, 1
  %181 = zext i1 %180 to i32
  %182 = call i64 @broken(i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %195, label %184

184:                                              ; preds = %173
  %185 = load i8*, i8** %18, align 8
  %186 = load i32, i32* %19, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %185, i64 %187
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i32
  %191 = icmp eq i32 %190, 3
  %192 = zext i1 %191 to i32
  %193 = call i64 @broken(i32 %192)
  %194 = icmp ne i64 %193, 0
  br label %195

195:                                              ; preds = %184, %173, %165
  %196 = phi i1 [ true, %173 ], [ true, %165 ], [ %194, %184 ]
  %197 = zext i1 %196 to i32
  %198 = load i8*, i8** %18, align 8
  %199 = load i32, i32* %19, align 4
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds i8, i8* %198, i64 %200
  %202 = load i8, i8* %201, align 1
  %203 = zext i8 %202 to i32
  %204 = call i32 (i32, i8*, ...) @ok(i32 %197, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %203)
  br label %242

205:                                              ; preds = %162, %158
  %206 = load i8*, i8** %11, align 8
  %207 = load i32, i32* %19, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %206, i64 %208
  %210 = load i8, i8* %209, align 1
  %211 = zext i8 %210 to i32
  %212 = load i8*, i8** %18, align 8
  %213 = load i32, i32* %19, align 4
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds i8, i8* %212, i64 %214
  %216 = load i8, i8* %215, align 1
  %217 = zext i8 %216 to i32
  %218 = icmp ne i32 %211, %217
  br i1 %218, label %219, label %241

219:                                              ; preds = %205
  %220 = load i8*, i8** %11, align 8
  %221 = load i8*, i8** @expected_hlink_data2, align 8
  %222 = icmp ne i8* %220, %221
  br i1 %222, label %223, label %227

223:                                              ; preds = %219
  %224 = load i8*, i8** %11, align 8
  %225 = load i8*, i8** @expected_hlink_data3, align 8
  %226 = icmp ne i8* %224, %225
  br i1 %226, label %239, label %227

227:                                              ; preds = %223, %219
  %228 = load i32, i32* %19, align 4
  %229 = icmp ult i32 %228, 52
  br i1 %229, label %233, label %230

230:                                              ; preds = %227
  %231 = load i32, i32* %19, align 4
  %232 = icmp uge i32 %231, 56
  br i1 %232, label %233, label %241

233:                                              ; preds = %230, %227
  %234 = load i32, i32* %19, align 4
  %235 = icmp ult i32 %234, 80
  br i1 %235, label %239, label %236

236:                                              ; preds = %233
  %237 = load i32, i32* %19, align 4
  %238 = icmp uge i32 %237, 84
  br i1 %238, label %239, label %241

239:                                              ; preds = %236, %233, %223
  %240 = load i32, i32* @FALSE, align 4
  store i32 %240, i32* %20, align 4
  br label %245

241:                                              ; preds = %236, %230, %205
  br label %242

242:                                              ; preds = %241, %195
  %243 = load i32, i32* %19, align 4
  %244 = add i32 %243, 1
  store i32 %244, i32* %19, align 4
  br label %131

245:                                              ; preds = %239, %131
  br label %246

246:                                              ; preds = %245, %125, %122
  %247 = load i32, i32* %20, align 4
  %248 = load i8*, i8** %7, align 8
  %249 = call i32 (i32, i8*, ...) @ok(i32 %247, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %248)
  %250 = load i32, i32* %20, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %282, label %252

252:                                              ; preds = %246
  store i32 0, i32* %19, align 4
  br label %253

253:                                              ; preds = %277, %252
  %254 = load i32, i32* %19, align 4
  %255 = load i32, i32* %17, align 4
  %256 = icmp ult i32 %254, %255
  br i1 %256, label %257, label %280

257:                                              ; preds = %253
  %258 = load i32, i32* %19, align 4
  %259 = urem i32 %258, 8
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %257
  %262 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %263

263:                                              ; preds = %261, %257
  %264 = load i8*, i8** %18, align 8
  %265 = load i32, i32* %19, align 4
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds i8, i8* %264, i64 %266
  %268 = load i8, i8* %267, align 1
  %269 = zext i8 %268 to i32
  %270 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %269)
  %271 = load i32, i32* %19, align 4
  %272 = urem i32 %271, 8
  %273 = icmp eq i32 %272, 7
  br i1 %273, label %274, label %276

274:                                              ; preds = %263
  %275 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %276

276:                                              ; preds = %274, %263
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %19, align 4
  %279 = add i32 %278, 1
  store i32 %279, i32* %19, align 4
  br label %253

280:                                              ; preds = %253
  %281 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %282

282:                                              ; preds = %280, %246
  %283 = load i32, i32* %16, align 4
  %284 = call i32 @GlobalUnlock(i32 %283)
  %285 = load i32*, i32** %14, align 8
  %286 = call i32 @IStream_Release(i32* %285)
  %287 = load i32*, i32** %15, align 8
  %288 = call i32 @IPersistStream_Release(i32* %287)
  ret void
}

declare dso_local i64 @IHlink_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @CreateStreamOnHGlobal(i32*, i32, i32**) #1

declare dso_local i64 @IPersistStream_Save(i32*, i32*, i32) #1

declare dso_local i64 @GetHGlobalFromStream(i32*, i32*) #1

declare dso_local i32 @GlobalSize(i32) #1

declare dso_local i8* @GlobalLock(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @GlobalUnlock(i32) #1

declare dso_local i32 @IStream_Release(i32*) #1

declare dso_local i32 @IPersistStream_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

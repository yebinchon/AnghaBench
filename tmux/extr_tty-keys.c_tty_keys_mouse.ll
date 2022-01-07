; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty-keys.c_tty_keys_mouse.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty-keys.c_tty_keys_mouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32, i32, %struct.client* }
%struct.client = type { i32 }
%struct.mouse_event = type { i32, i32, i32, i32, i32, i32, i8, i32 }

@.str = private unnamed_addr constant [22 x i8] c"%s: mouse input: %.*s\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"%s: mouse input (SGR): %.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*, i8*, i64, i64*, %struct.mouse_event*)* @tty_keys_mouse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty_keys_mouse(%struct.tty* %0, i8* %1, i64 %2, i64* %3, %struct.mouse_event* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tty*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.mouse_event*, align 8
  %12 = alloca %struct.client*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  store %struct.tty* %0, %struct.tty** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store %struct.mouse_event* %4, %struct.mouse_event** %11, align 8
  %20 = load %struct.tty*, %struct.tty** %7, align 8
  %21 = getelementptr inbounds %struct.tty, %struct.tty* %20, i32 0, i32 3
  %22 = load %struct.client*, %struct.client** %21, align 8
  store %struct.client* %22, %struct.client** %12, align 8
  %23 = load i64*, i64** %10, align 8
  store i64 0, i64* %23, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  store i8 32, i8* %18, align 1
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 27
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %314

30:                                               ; preds = %5
  %31 = load i64, i64* %9, align 8
  %32 = icmp eq i64 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 1, i32* %6, align 4
  br label %314

34:                                               ; preds = %30
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 91
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 -1, i32* %6, align 4
  br label %314

41:                                               ; preds = %34
  %42 = load i64, i64* %9, align 8
  %43 = icmp eq i64 %42, 2
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 1, i32* %6, align 4
  br label %314

45:                                               ; preds = %41
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 2
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 77
  br i1 %50, label %51, label %121

51:                                               ; preds = %45
  %52 = load i64*, i64** %10, align 8
  store i64 3, i64* %52, align 8
  store i32 0, i32* %13, align 4
  br label %53

53:                                               ; preds = %85, %51
  %54 = load i32, i32* %13, align 4
  %55 = icmp slt i32 %54, 3
  br i1 %55, label %56, label %88

56:                                               ; preds = %53
  %57 = load i64, i64* %9, align 8
  %58 = load i64*, i64** %10, align 8
  %59 = load i64, i64* %58, align 8
  %60 = icmp ule i64 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 1, i32* %6, align 4
  br label %314

62:                                               ; preds = %56
  %63 = load i8*, i8** %8, align 8
  %64 = load i64*, i64** %10, align 8
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %64, align 8
  %67 = getelementptr inbounds i8, i8* %63, i64 %65
  %68 = load i8, i8* %67, align 1
  store i8 %68, i8* %19, align 1
  %69 = load i32, i32* %13, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load i8, i8* %19, align 1
  %73 = sext i8 %72 to i32
  store i32 %73, i32* %16, align 4
  br label %84

74:                                               ; preds = %62
  %75 = load i32, i32* %13, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i8, i8* %19, align 1
  %79 = sext i8 %78 to i32
  store i32 %79, i32* %14, align 4
  br label %83

80:                                               ; preds = %74
  %81 = load i8, i8* %19, align 1
  %82 = sext i8 %81 to i32
  store i32 %82, i32* %15, align 4
  br label %83

83:                                               ; preds = %80, %77
  br label %84

84:                                               ; preds = %83, %71
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %13, align 4
  br label %53

88:                                               ; preds = %53
  %89 = load %struct.client*, %struct.client** %12, align 8
  %90 = getelementptr inbounds %struct.client, %struct.client* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i64*, i64** %10, align 8
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = load i8*, i8** %8, align 8
  %96 = call i32 @log_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %94, i8* %95)
  %97 = load i32, i32* %16, align 4
  %98 = icmp slt i32 %97, 32
  br i1 %98, label %99, label %100

99:                                               ; preds = %88
  store i32 -1, i32* %6, align 4
  br label %314

100:                                              ; preds = %88
  %101 = load i32, i32* %16, align 4
  %102 = sub nsw i32 %101, 32
  store i32 %102, i32* %16, align 4
  %103 = load i32, i32* %14, align 4
  %104 = icmp sge i32 %103, 33
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i32, i32* %14, align 4
  %107 = sub nsw i32 %106, 33
  store i32 %107, i32* %14, align 4
  br label %111

108:                                              ; preds = %100
  %109 = load i32, i32* %14, align 4
  %110 = sub nsw i32 256, %109
  store i32 %110, i32* %14, align 4
  br label %111

111:                                              ; preds = %108, %105
  %112 = load i32, i32* %15, align 4
  %113 = icmp sge i32 %112, 33
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32, i32* %15, align 4
  %116 = sub nsw i32 %115, 33
  store i32 %116, i32* %15, align 4
  br label %120

117:                                              ; preds = %111
  %118 = load i32, i32* %15, align 4
  %119 = sub nsw i32 256, %118
  store i32 %119, i32* %15, align 4
  br label %120

120:                                              ; preds = %117, %114
  br label %274

121:                                              ; preds = %45
  %122 = load i8*, i8** %8, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 2
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 60
  br i1 %126, label %127, label %272

127:                                              ; preds = %121
  %128 = load i64*, i64** %10, align 8
  store i64 3, i64* %128, align 8
  br label %129

129:                                              ; preds = %127, %155
  %130 = load i64, i64* %9, align 8
  %131 = load i64*, i64** %10, align 8
  %132 = load i64, i64* %131, align 8
  %133 = icmp ule i64 %130, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  store i32 1, i32* %6, align 4
  br label %314

135:                                              ; preds = %129
  %136 = load i8*, i8** %8, align 8
  %137 = load i64*, i64** %10, align 8
  %138 = load i64, i64* %137, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %137, align 8
  %140 = getelementptr inbounds i8, i8* %136, i64 %138
  %141 = load i8, i8* %140, align 1
  store i8 %141, i8* %19, align 1
  %142 = load i8, i8* %19, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp eq i32 %143, 59
  br i1 %144, label %145, label %146

145:                                              ; preds = %135
  br label %162

146:                                              ; preds = %135
  %147 = load i8, i8* %19, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp slt i32 %148, 48
  br i1 %149, label %154, label %150

150:                                              ; preds = %146
  %151 = load i8, i8* %19, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp sgt i32 %152, 57
  br i1 %153, label %154, label %155

154:                                              ; preds = %150, %146
  store i32 -1, i32* %6, align 4
  br label %314

155:                                              ; preds = %150
  %156 = load i32, i32* %17, align 4
  %157 = mul nsw i32 10, %156
  %158 = load i8, i8* %19, align 1
  %159 = sext i8 %158 to i32
  %160 = sub nsw i32 %159, 48
  %161 = add nsw i32 %157, %160
  store i32 %161, i32* %17, align 4
  br label %129

162:                                              ; preds = %145
  br label %163

163:                                              ; preds = %162, %189
  %164 = load i64, i64* %9, align 8
  %165 = load i64*, i64** %10, align 8
  %166 = load i64, i64* %165, align 8
  %167 = icmp ule i64 %164, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  store i32 1, i32* %6, align 4
  br label %314

169:                                              ; preds = %163
  %170 = load i8*, i8** %8, align 8
  %171 = load i64*, i64** %10, align 8
  %172 = load i64, i64* %171, align 8
  %173 = add i64 %172, 1
  store i64 %173, i64* %171, align 8
  %174 = getelementptr inbounds i8, i8* %170, i64 %172
  %175 = load i8, i8* %174, align 1
  store i8 %175, i8* %19, align 1
  %176 = load i8, i8* %19, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp eq i32 %177, 59
  br i1 %178, label %179, label %180

179:                                              ; preds = %169
  br label %196

180:                                              ; preds = %169
  %181 = load i8, i8* %19, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp slt i32 %182, 48
  br i1 %183, label %188, label %184

184:                                              ; preds = %180
  %185 = load i8, i8* %19, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp sgt i32 %186, 57
  br i1 %187, label %188, label %189

188:                                              ; preds = %184, %180
  store i32 -1, i32* %6, align 4
  br label %314

189:                                              ; preds = %184
  %190 = load i32, i32* %14, align 4
  %191 = mul nsw i32 10, %190
  %192 = load i8, i8* %19, align 1
  %193 = sext i8 %192 to i32
  %194 = sub nsw i32 %193, 48
  %195 = add nsw i32 %191, %194
  store i32 %195, i32* %14, align 4
  br label %163

196:                                              ; preds = %179
  br label %197

197:                                              ; preds = %196, %227
  %198 = load i64, i64* %9, align 8
  %199 = load i64*, i64** %10, align 8
  %200 = load i64, i64* %199, align 8
  %201 = icmp ule i64 %198, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %197
  store i32 1, i32* %6, align 4
  br label %314

203:                                              ; preds = %197
  %204 = load i8*, i8** %8, align 8
  %205 = load i64*, i64** %10, align 8
  %206 = load i64, i64* %205, align 8
  %207 = add i64 %206, 1
  store i64 %207, i64* %205, align 8
  %208 = getelementptr inbounds i8, i8* %204, i64 %206
  %209 = load i8, i8* %208, align 1
  store i8 %209, i8* %19, align 1
  %210 = load i8, i8* %19, align 1
  %211 = sext i8 %210 to i32
  %212 = icmp eq i32 %211, 77
  br i1 %212, label %217, label %213

213:                                              ; preds = %203
  %214 = load i8, i8* %19, align 1
  %215 = sext i8 %214 to i32
  %216 = icmp eq i32 %215, 109
  br i1 %216, label %217, label %218

217:                                              ; preds = %213, %203
  br label %234

218:                                              ; preds = %213
  %219 = load i8, i8* %19, align 1
  %220 = sext i8 %219 to i32
  %221 = icmp slt i32 %220, 48
  br i1 %221, label %226, label %222

222:                                              ; preds = %218
  %223 = load i8, i8* %19, align 1
  %224 = sext i8 %223 to i32
  %225 = icmp sgt i32 %224, 57
  br i1 %225, label %226, label %227

226:                                              ; preds = %222, %218
  store i32 -1, i32* %6, align 4
  br label %314

227:                                              ; preds = %222
  %228 = load i32, i32* %15, align 4
  %229 = mul nsw i32 10, %228
  %230 = load i8, i8* %19, align 1
  %231 = sext i8 %230 to i32
  %232 = sub nsw i32 %231, 48
  %233 = add nsw i32 %229, %232
  store i32 %233, i32* %15, align 4
  br label %197

234:                                              ; preds = %217
  %235 = load %struct.client*, %struct.client** %12, align 8
  %236 = getelementptr inbounds %struct.client, %struct.client* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i64*, i64** %10, align 8
  %239 = load i64, i64* %238, align 8
  %240 = trunc i64 %239 to i32
  %241 = load i8*, i8** %8, align 8
  %242 = call i32 @log_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %237, i32 %240, i8* %241)
  %243 = load i32, i32* %14, align 4
  %244 = icmp slt i32 %243, 1
  br i1 %244, label %248, label %245

245:                                              ; preds = %234
  %246 = load i32, i32* %15, align 4
  %247 = icmp slt i32 %246, 1
  br i1 %247, label %248, label %249

248:                                              ; preds = %245, %234
  store i32 -1, i32* %6, align 4
  br label %314

249:                                              ; preds = %245
  %250 = load i32, i32* %14, align 4
  %251 = add nsw i32 %250, -1
  store i32 %251, i32* %14, align 4
  %252 = load i32, i32* %15, align 4
  %253 = add nsw i32 %252, -1
  store i32 %253, i32* %15, align 4
  %254 = load i32, i32* %17, align 4
  store i32 %254, i32* %16, align 4
  %255 = load i8, i8* %19, align 1
  store i8 %255, i8* %18, align 1
  %256 = load i8, i8* %18, align 1
  %257 = sext i8 %256 to i32
  %258 = icmp eq i32 %257, 109
  br i1 %258, label %259, label %262

259:                                              ; preds = %249
  %260 = load i32, i32* %16, align 4
  %261 = or i32 %260, 3
  store i32 %261, i32* %16, align 4
  br label %262

262:                                              ; preds = %259, %249
  %263 = load i8, i8* %18, align 1
  %264 = sext i8 %263 to i32
  %265 = icmp eq i32 %264, 109
  br i1 %265, label %266, label %271

266:                                              ; preds = %262
  %267 = load i32, i32* %17, align 4
  %268 = and i32 %267, 64
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %266
  store i32 -2, i32* %6, align 4
  br label %314

271:                                              ; preds = %266, %262
  br label %273

272:                                              ; preds = %121
  store i32 -1, i32* %6, align 4
  br label %314

273:                                              ; preds = %271
  br label %274

274:                                              ; preds = %273, %120
  %275 = load %struct.tty*, %struct.tty** %7, align 8
  %276 = getelementptr inbounds %struct.tty, %struct.tty* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.mouse_event*, %struct.mouse_event** %11, align 8
  %279 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %278, i32 0, i32 0
  store i32 %277, i32* %279, align 4
  %280 = load i32, i32* %14, align 4
  %281 = load %struct.mouse_event*, %struct.mouse_event** %11, align 8
  %282 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %281, i32 0, i32 1
  store i32 %280, i32* %282, align 4
  %283 = load %struct.tty*, %struct.tty** %7, align 8
  %284 = getelementptr inbounds %struct.tty, %struct.tty* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.mouse_event*, %struct.mouse_event** %11, align 8
  %287 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %286, i32 0, i32 2
  store i32 %285, i32* %287, align 4
  %288 = load i32, i32* %15, align 4
  %289 = load %struct.mouse_event*, %struct.mouse_event** %11, align 8
  %290 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %289, i32 0, i32 3
  store i32 %288, i32* %290, align 4
  %291 = load %struct.tty*, %struct.tty** %7, align 8
  %292 = getelementptr inbounds %struct.tty, %struct.tty* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = load %struct.mouse_event*, %struct.mouse_event** %11, align 8
  %295 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %294, i32 0, i32 4
  store i32 %293, i32* %295, align 4
  %296 = load i32, i32* %16, align 4
  %297 = load %struct.mouse_event*, %struct.mouse_event** %11, align 8
  %298 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %297, i32 0, i32 5
  store i32 %296, i32* %298, align 4
  %299 = load i8, i8* %18, align 1
  %300 = load %struct.mouse_event*, %struct.mouse_event** %11, align 8
  %301 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %300, i32 0, i32 6
  store i8 %299, i8* %301, align 4
  %302 = load i32, i32* %17, align 4
  %303 = load %struct.mouse_event*, %struct.mouse_event** %11, align 8
  %304 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %303, i32 0, i32 7
  store i32 %302, i32* %304, align 4
  %305 = load i32, i32* %14, align 4
  %306 = load %struct.tty*, %struct.tty** %7, align 8
  %307 = getelementptr inbounds %struct.tty, %struct.tty* %306, i32 0, i32 0
  store i32 %305, i32* %307, align 8
  %308 = load i32, i32* %15, align 4
  %309 = load %struct.tty*, %struct.tty** %7, align 8
  %310 = getelementptr inbounds %struct.tty, %struct.tty* %309, i32 0, i32 1
  store i32 %308, i32* %310, align 4
  %311 = load i32, i32* %16, align 4
  %312 = load %struct.tty*, %struct.tty** %7, align 8
  %313 = getelementptr inbounds %struct.tty, %struct.tty* %312, i32 0, i32 2
  store i32 %311, i32* %313, align 8
  store i32 0, i32* %6, align 4
  br label %314

314:                                              ; preds = %274, %272, %270, %248, %226, %202, %188, %168, %154, %134, %99, %61, %44, %40, %33, %29
  %315 = load i32, i32* %6, align 4
  ret i32 %315
}

declare dso_local i32 @log_debug(i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

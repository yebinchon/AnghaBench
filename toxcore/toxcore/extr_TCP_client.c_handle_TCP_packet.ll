; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_client.c_handle_TCP_packet.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_client.c_handle_TCP_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32, i32 (i32, i32, i32, i32*, i32)*, i32, i32 (i32, i32*, i32)*, i32, i32 (i32, i32*, i32*, i32)*, i32, i32, i32, i32 (i32, i32, i32, i32)*, i32, i32 (i32, i32, i32*)* }
%struct.TYPE_5__ = type { i32, i32, i32* }

@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@NUM_RESERVED_PORTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32)* @handle_TCP_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_TCP_packet(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp sle i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %359

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %319 [
    i32 128, label %21
    i32 134, label %99
    i32 133, label %164
    i32 130, label %240
    i32 129, label %254
    i32 131, label %276
    i32 132, label %307
  ]

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %24 = add nsw i32 2, %23
  %25 = icmp ne i32 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 -1, i32* %4, align 4
  br label %359

27:                                               ; preds = %21
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @NUM_RESERVED_PORTS, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %359

34:                                               ; preds = %27
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @NUM_RESERVED_PORTS, align 4
  %39 = sub nsw i32 %37, %38
  store i32 %39, i32* %8, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %359

50:                                               ; preds = %34
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  store i32 -1, i32* %64, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %76 = call i32 @memcpy(i32* %72, i32* %74, i32 %75)
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 12
  %79 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %78, align 8
  %80 = icmp ne i32 (i32, i32, i32*)* %79, null
  br i1 %80, label %81, label %98

81:                                               ; preds = %50
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 12
  %84 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %83, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 11
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 %84(i32 %87, i32 %88, i32* %96)
  br label %98

98:                                               ; preds = %81, %50
  store i32 0, i32* %4, align 4
  br label %359

99:                                               ; preds = %17
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 2
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  store i32 -1, i32* %4, align 4
  br label %359

103:                                              ; preds = %99
  %104 = load i32*, i32** %6, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @NUM_RESERVED_PORTS, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  store i32 -1, i32* %4, align 4
  br label %359

110:                                              ; preds = %103
  %111 = load i32*, i32** %6, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @NUM_RESERVED_PORTS, align 4
  %115 = sub nsw i32 %113, %114
  store i32 %115, i32* %9, align 4
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 1
  br i1 %124, label %125, label %126

125:                                              ; preds = %110
  store i32 0, i32* %4, align 4
  br label %359

126:                                              ; preds = %110
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  store i32 2, i32* %133, align 8
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 10
  %136 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %135, align 8
  %137 = icmp ne i32 (i32, i32, i32, i32)* %136, null
  br i1 %137, label %138, label %163

138:                                              ; preds = %126
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 10
  %141 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %140, align 8
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 9
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %9, align 4
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %155, align 8
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 %141(i32 %144, i32 %152, i32 %153, i32 %161)
  br label %163

163:                                              ; preds = %138, %126
  store i32 0, i32* %4, align 4
  br label %359

164:                                              ; preds = %17
  %165 = load i32, i32* %7, align 4
  %166 = icmp ne i32 %165, 2
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  store i32 -1, i32* %4, align 4
  br label %359

168:                                              ; preds = %164
  %169 = load i32*, i32** %6, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @NUM_RESERVED_PORTS, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %168
  store i32 -1, i32* %4, align 4
  br label %359

175:                                              ; preds = %168
  %176 = load i32*, i32** %6, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @NUM_RESERVED_PORTS, align 4
  %180 = sub nsw i32 %178, %179
  store i32 %180, i32* %10, align 4
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %182, align 8
  %184 = load i32, i32* %10, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %175
  store i32 0, i32* %4, align 4
  br label %359

191:                                              ; preds = %175
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %193, align 8
  %195 = load i32, i32* %10, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp ne i32 %199, 2
  br i1 %200, label %201, label %202

201:                                              ; preds = %191
  store i32 0, i32* %4, align 4
  br label %359

202:                                              ; preds = %191
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %204, align 8
  %206 = load i32, i32* %10, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 0
  store i32 1, i32* %209, align 8
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 10
  %212 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %211, align 8
  %213 = icmp ne i32 (i32, i32, i32, i32)* %212, null
  br i1 %213, label %214, label %239

214:                                              ; preds = %202
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 10
  %217 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %216, align 8
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 9
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %222, align 8
  %224 = load i32, i32* %10, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %10, align 4
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 0
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %231, align 8
  %233 = load i32, i32* %10, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = call i32 %217(i32 %220, i32 %228, i32 %229, i32 %237)
  br label %239

239:                                              ; preds = %214, %202
  store i32 0, i32* %4, align 4
  br label %359

240:                                              ; preds = %17
  %241 = load i32, i32* %7, align 4
  %242 = sext i32 %241 to i64
  %243 = icmp ne i64 %242, 5
  br i1 %243, label %244, label %245

244:                                              ; preds = %240
  store i32 -1, i32* %4, align 4
  br label %359

245:                                              ; preds = %240
  %246 = load i32*, i32** %6, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 1
  %248 = call i32 @memcpy(i32* %11, i32* %247, i32 4)
  %249 = load i32, i32* %11, align 4
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 8
  store i32 %249, i32* %251, align 4
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %253 = call i32 @send_ping_response(%struct.TYPE_6__* %252)
  store i32 0, i32* %4, align 4
  br label %359

254:                                              ; preds = %17
  %255 = load i32, i32* %7, align 4
  %256 = sext i32 %255 to i64
  %257 = icmp ne i64 %256, 5
  br i1 %257, label %258, label %259

258:                                              ; preds = %254
  store i32 -1, i32* %4, align 4
  br label %359

259:                                              ; preds = %254
  %260 = load i32*, i32** %6, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 1
  %262 = call i32 @memcpy(i32* %12, i32* %261, i32 4)
  %263 = load i32, i32* %12, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %275

265:                                              ; preds = %259
  %266 = load i32, i32* %12, align 4
  %267 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 7
  %269 = load i32, i32* %268, align 8
  %270 = icmp eq i32 %266, %269
  br i1 %270, label %271, label %274

271:                                              ; preds = %265
  %272 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 7
  store i32 0, i32* %273, align 8
  br label %274

274:                                              ; preds = %271, %265
  store i32 0, i32* %4, align 4
  br label %359

275:                                              ; preds = %259
  store i32 -1, i32* %4, align 4
  br label %359

276:                                              ; preds = %17
  %277 = load i32, i32* %7, align 4
  %278 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %279 = add nsw i32 1, %278
  %280 = icmp sle i32 %277, %279
  br i1 %280, label %281, label %282

281:                                              ; preds = %276
  store i32 -1, i32* %4, align 4
  br label %359

282:                                              ; preds = %276
  %283 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 6
  %285 = load i32 (i32, i32*, i32*, i32)*, i32 (i32, i32*, i32*, i32)** %284, align 8
  %286 = icmp ne i32 (i32, i32*, i32*, i32)* %285, null
  br i1 %286, label %287, label %306

287:                                              ; preds = %282
  %288 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i32 0, i32 6
  %290 = load i32 (i32, i32*, i32*, i32)*, i32 (i32, i32*, i32*, i32)** %289, align 8
  %291 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 5
  %293 = load i32, i32* %292, align 8
  %294 = load i32*, i32** %6, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 1
  %296 = load i32*, i32** %6, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 1
  %298 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %297, i64 %299
  %301 = load i32, i32* %7, align 4
  %302 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %303 = add nsw i32 1, %302
  %304 = sub nsw i32 %301, %303
  %305 = call i32 %290(i32 %293, i32* %295, i32* %300, i32 %304)
  br label %306

306:                                              ; preds = %287, %282
  store i32 0, i32* %4, align 4
  br label %359

307:                                              ; preds = %17
  %308 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i32 0, i32 4
  %310 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %309, align 8
  %311 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i32 0, i32 3
  %313 = load i32, i32* %312, align 8
  %314 = load i32*, i32** %6, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 1
  %316 = load i32, i32* %7, align 4
  %317 = sub nsw i32 %316, 1
  %318 = call i32 %310(i32 %313, i32* %315, i32 %317)
  store i32 0, i32* %4, align 4
  br label %359

319:                                              ; preds = %17
  %320 = load i32*, i32** %6, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 0
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* @NUM_RESERVED_PORTS, align 4
  %324 = icmp slt i32 %322, %323
  br i1 %324, label %325, label %326

325:                                              ; preds = %319
  store i32 -1, i32* %4, align 4
  br label %359

326:                                              ; preds = %319
  %327 = load i32*, i32** %6, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 0
  %329 = load i32, i32* %328, align 4
  %330 = load i32, i32* @NUM_RESERVED_PORTS, align 4
  %331 = sub nsw i32 %329, %330
  store i32 %331, i32* %13, align 4
  %332 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %332, i32 0, i32 2
  %334 = load i32 (i32, i32, i32, i32*, i32)*, i32 (i32, i32, i32, i32*, i32)** %333, align 8
  %335 = icmp ne i32 (i32, i32, i32, i32*, i32)* %334, null
  br i1 %335, label %336, label %357

336:                                              ; preds = %326
  %337 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %338 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %337, i32 0, i32 2
  %339 = load i32 (i32, i32, i32, i32*, i32)*, i32 (i32, i32, i32, i32*, i32)** %338, align 8
  %340 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 8
  %343 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %344 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %343, i32 0, i32 0
  %345 = load %struct.TYPE_5__*, %struct.TYPE_5__** %344, align 8
  %346 = load i32, i32* %13, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %345, i64 %347
  %349 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = load i32, i32* %13, align 4
  %352 = load i32*, i32** %6, align 8
  %353 = getelementptr inbounds i32, i32* %352, i64 1
  %354 = load i32, i32* %7, align 4
  %355 = sub nsw i32 %354, 1
  %356 = call i32 %339(i32 %342, i32 %350, i32 %351, i32* %353, i32 %355)
  br label %357

357:                                              ; preds = %336, %326
  br label %358

358:                                              ; preds = %357
  store i32 0, i32* %4, align 4
  br label %359

359:                                              ; preds = %358, %325, %307, %306, %281, %275, %274, %258, %245, %244, %239, %201, %190, %174, %167, %163, %125, %109, %102, %98, %49, %33, %26, %16
  %360 = load i32, i32* %4, align 4
  ret i32 %360
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @send_ping_response(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

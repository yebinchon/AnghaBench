; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_group.c_handle_message_packet_group.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_group.c_handle_message_packet_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32 (i32, i32, i32, i32*, i32, i32)*, i32, i32 (i32, i32, i32, i32*, i32, i32)* }
%struct.TYPE_17__ = type { %struct.TYPE_16__*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_15__ = type { i32, i32 }

@GROUP_MESSAGE_NEW_PEER_LENGTH = common dso_local global i32 0, align 4
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@GROUP_MESSAGE_KILL_PEER_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, i32, i32*, i32, i32)* @handle_message_packet_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_message_packet_group(%struct.TYPE_18__* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ult i64 %25, 9
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  br label %291

28:                                               ; preds = %5
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call %struct.TYPE_17__* @get_group_c(%struct.TYPE_18__* %29, i32 %30)
  store %struct.TYPE_17__* %31, %struct.TYPE_17__** %11, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %33 = icmp ne %struct.TYPE_17__* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %291

35:                                               ; preds = %28
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @memcpy(i32* %12, i32* %36, i32 4)
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @ntohs(i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @get_peer_index(%struct.TYPE_17__* %40, i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %64

45:                                               ; preds = %35
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @send_peer_query(%struct.TYPE_18__* %46, i32 %54, i32 %62)
  br label %291

64:                                               ; preds = %35
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 4
  %67 = call i32 @memcpy(i32* %14, i32* %66, i32 4)
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @ntohl(i32 %68)
  store i32 %69, i32* %14, align 4
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %71, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %64
  %80 = load i32, i32* %14, align 4
  %81 = sext i32 %80 to i64
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %83, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  store i64 %81, i64* %88, align 8
  br label %116

89:                                               ; preds = %64
  %90 = load i32, i32* %14, align 4
  %91 = sext i32 %90 to i64
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %93, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %91, %99
  %101 = icmp sgt i64 %100, 64
  br i1 %101, label %114, label %102

102:                                              ; preds = %89
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %106, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %104, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %102, %89
  br label %291

115:                                              ; preds = %102
  br label %116

116:                                              ; preds = %115, %79
  %117 = load i32, i32* %14, align 4
  %118 = sext i32 %117 to i64
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %120, align 8
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  store i64 %118, i64* %125, align 8
  %126 = load i32*, i32** %8, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 8
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %15, align 4
  %129 = load i32*, i32** %8, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 4
  %131 = getelementptr inbounds i32, i32* %130, i64 4
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  store i32* %132, i32** %16, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = sub i64 %134, 9
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %17, align 4
  %137 = load i32, i32* %15, align 4
  switch i32 %137, label %284 [
    i32 131, label %138
    i32 132, label %151
    i32 134, label %172
    i32 133, label %192
    i32 130, label %202
    i32 128, label %212
    i32 129, label %248
  ]

138:                                              ; preds = %116
  %139 = load i32, i32* %17, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  br label %291

142:                                              ; preds = %138
  %143 = call i32 (...) @unix_time()
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %145, align 8
  %147 = load i32, i32* %13, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 1
  store i32 %143, i32* %150, align 8
  br label %285

151:                                              ; preds = %116
  %152 = load i32, i32* %17, align 4
  %153 = load i32, i32* @GROUP_MESSAGE_NEW_PEER_LENGTH, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  br label %291

156:                                              ; preds = %151
  %157 = load i32*, i32** %16, align 8
  %158 = call i32 @memcpy(i32* %18, i32* %157, i32 4)
  %159 = load i32, i32* %18, align 4
  %160 = call i32 @ntohs(i32 %159)
  store i32 %160, i32* %18, align 4
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %162 = load i32, i32* %7, align 4
  %163 = load i32*, i32** %16, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 4
  %165 = load i32*, i32** %16, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 4
  %167 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %18, align 4
  %171 = call i32 @addpeer(%struct.TYPE_18__* %161, i32 %162, i32* %164, i32* %169, i32 %170)
  br label %285

172:                                              ; preds = %116
  %173 = load i32, i32* %17, align 4
  %174 = load i32, i32* @GROUP_MESSAGE_KILL_PEER_LENGTH, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  br label %291

177:                                              ; preds = %172
  %178 = load i32*, i32** %16, align 8
  %179 = call i32 @memcpy(i32* %19, i32* %178, i32 4)
  %180 = load i32, i32* %19, align 4
  %181 = call i32 @ntohs(i32 %180)
  store i32 %181, i32* %19, align 4
  %182 = load i32, i32* %12, align 4
  %183 = load i32, i32* %19, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %190

185:                                              ; preds = %177
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %187 = load i32, i32* %7, align 4
  %188 = load i32, i32* %13, align 4
  %189 = call i32 @delpeer(%struct.TYPE_18__* %186, i32 %187, i32 %188)
  br label %191

190:                                              ; preds = %177
  br label %291

191:                                              ; preds = %185
  br label %285

192:                                              ; preds = %116
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %194 = load i32, i32* %7, align 4
  %195 = load i32, i32* %13, align 4
  %196 = load i32*, i32** %16, align 8
  %197 = load i32, i32* %17, align 4
  %198 = call i32 @setnick(%struct.TYPE_18__* %193, i32 %194, i32 %195, i32* %196, i32 %197)
  %199 = icmp eq i32 %198, -1
  br i1 %199, label %200, label %201

200:                                              ; preds = %192
  br label %291

201:                                              ; preds = %192
  br label %285

202:                                              ; preds = %116
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %204 = load i32, i32* %7, align 4
  %205 = load i32, i32* %13, align 4
  %206 = load i32*, i32** %16, align 8
  %207 = load i32, i32* %17, align 4
  %208 = call i32 @settitle(%struct.TYPE_18__* %203, i32 %204, i32 %205, i32* %206, i32 %207)
  %209 = icmp eq i32 %208, -1
  br i1 %209, label %210, label %211

210:                                              ; preds = %202
  br label %291

211:                                              ; preds = %202
  br label %285

212:                                              ; preds = %116
  %213 = load i32, i32* %17, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %212
  br label %291

216:                                              ; preds = %212
  %217 = load i32, i32* %17, align 4
  %218 = add nsw i32 %217, 1
  %219 = zext i32 %218 to i64
  %220 = call i8* @llvm.stacksave()
  store i8* %220, i8** %20, align 8
  %221 = alloca i32, i64 %219, align 16
  store i64 %219, i64* %21, align 8
  %222 = load i32*, i32** %16, align 8
  %223 = load i32, i32* %17, align 4
  %224 = call i32 @memcpy(i32* %221, i32* %222, i32 %223)
  %225 = load i32, i32* %17, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %221, i64 %226
  store i32 0, i32* %227, align 4
  %228 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %228, i32 0, i32 4
  %230 = load i32 (i32, i32, i32, i32*, i32, i32)*, i32 (i32, i32, i32, i32*, i32, i32)** %229, align 8
  %231 = icmp ne i32 (i32, i32, i32, i32*, i32, i32)* %230, null
  br i1 %231, label %232, label %246

232:                                              ; preds = %216
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i32 0, i32 4
  %235 = load i32 (i32, i32, i32, i32*, i32, i32)*, i32 (i32, i32, i32, i32*, i32, i32)** %234, align 8
  %236 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* %7, align 4
  %240 = load i32, i32* %13, align 4
  %241 = load i32, i32* %17, align 4
  %242 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 8
  %245 = call i32 %235(i32 %238, i32 %239, i32 %240, i32* %221, i32 %241, i32 %244)
  br label %246

246:                                              ; preds = %232, %216
  %247 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %247)
  br label %285

248:                                              ; preds = %116
  %249 = load i32, i32* %17, align 4
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %248
  br label %291

252:                                              ; preds = %248
  %253 = load i32, i32* %17, align 4
  %254 = add nsw i32 %253, 1
  %255 = zext i32 %254 to i64
  %256 = call i8* @llvm.stacksave()
  store i8* %256, i8** %22, align 8
  %257 = alloca i32, i64 %255, align 16
  store i64 %255, i64* %23, align 8
  %258 = load i32*, i32** %16, align 8
  %259 = load i32, i32* %17, align 4
  %260 = call i32 @memcpy(i32* %257, i32* %258, i32 %259)
  %261 = load i32, i32* %17, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %257, i64 %262
  store i32 0, i32* %263, align 4
  %264 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 2
  %266 = load i32 (i32, i32, i32, i32*, i32, i32)*, i32 (i32, i32, i32, i32*, i32, i32)** %265, align 8
  %267 = icmp ne i32 (i32, i32, i32, i32*, i32, i32)* %266, null
  br i1 %267, label %268, label %282

268:                                              ; preds = %252
  %269 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %269, i32 0, i32 2
  %271 = load i32 (i32, i32, i32, i32*, i32, i32)*, i32 (i32, i32, i32, i32*, i32, i32)** %270, align 8
  %272 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* %7, align 4
  %276 = load i32, i32* %13, align 4
  %277 = load i32, i32* %17, align 4
  %278 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = call i32 %271(i32 %274, i32 %275, i32 %276, i32* %257, i32 %277, i32 %280)
  br label %282

282:                                              ; preds = %268, %252
  %283 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %283)
  br label %285

284:                                              ; preds = %116
  br label %291

285:                                              ; preds = %282, %246, %211, %201, %191, %156, %142
  %286 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %287 = load i32, i32* %7, align 4
  %288 = load i32*, i32** %8, align 8
  %289 = load i32, i32* %9, align 4
  %290 = call i32 @send_message_all_close(%struct.TYPE_18__* %286, i32 %287, i32* %288, i32 %289, i32 -1)
  br label %291

291:                                              ; preds = %285, %284, %251, %215, %210, %200, %190, %176, %155, %141, %114, %45, %34, %27
  ret void
}

declare dso_local %struct.TYPE_17__* @get_group_c(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @get_peer_index(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @send_peer_query(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @unix_time(...) #1

declare dso_local i32 @addpeer(%struct.TYPE_18__*, i32, i32*, i32*, i32) #1

declare dso_local i32 @delpeer(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @setnick(%struct.TYPE_18__*, i32, i32, i32*, i32) #1

declare dso_local i32 @settitle(%struct.TYPE_18__*, i32, i32, i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @send_message_all_close(%struct.TYPE_18__*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

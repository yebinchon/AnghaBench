; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_rfb.c_rfb_handle.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_rfb.c_rfb_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfb_softc = type { i32, i32, i64, i32*, i64 }

@.str = private unnamed_addr constant [13 x i8] c"RFB 003.008\0A\00", align 1
@AUTH_LENGTH = common dso_local global i32 0, align 4
@PASSWD_LENGTH = common dso_local global i32 0, align 4
@kCCEncrypt = common dso_local global i32 0, align 4
@kCCAlgorithmDES = common dso_local global i32 0, align 4
@kCCOptionECBMode = common dso_local global i32 0, align 4
@kCCSuccess = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Auth Failed: Internal Error.\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Auth Failed: Invalid Password.\00", align 1
@RFB_ZLIB_BUFSZ = common dso_local global i64 0, align 8
@rfb_wr_thr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"rfb client exiting\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"rfb unknown cli-code %d!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rfb_softc*, i32)* @rfb_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfb_handle(%struct.rfb_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.rfb_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca [80 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.rfb_softc* %0, %struct.rfb_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  store i8* null, i8** %7, align 8
  %19 = load i32, i32* @AUTH_LENGTH, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %8, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %23 = load i32, i32* @PASSWD_LENGTH, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %10, align 8
  %26 = load i32, i32* @AUTH_LENGTH, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %11, align 8
  store i32* null, i32** %15, align 8
  store i8 0, i8* %16, align 1
  store i32 1, i32* %18, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.rfb_softc*, %struct.rfb_softc** %3, align 8
  %31 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load i8*, i8** %5, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @strlen(i8* %34)
  %36 = trunc i64 %35 to i32
  %37 = call i32 (i32, ...) @stream_write(i32 %32, i8* %33, i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %40 = call i64 @read(i32 %38, i8* %39, i32 80)
  store i64 %40, i64* %17, align 8
  %41 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  store i8 1, i8* %41, align 16
  %42 = load %struct.rfb_softc*, %struct.rfb_softc** %3, align 8
  %43 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %2
  %47 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 1
  store i8 -128, i8* %47, align 1
  br label %50

48:                                               ; preds = %2
  %49 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 1
  store i8 -127, i8* %49, align 1
  br label %50

50:                                               ; preds = %48, %46
  %51 = load i32, i32* %4, align 4
  %52 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %53 = call i32 (i32, ...) @stream_write(i32 %51, i8* %52, i32 2)
  %54 = load i32, i32* %4, align 4
  %55 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %56 = call i64 @stream_read(i32 %54, i8* %55, i32 1)
  store i64 %56, i64* %17, align 8
  %57 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %58 = load i8, i8* %57, align 16
  %59 = zext i8 %58 to i32
  switch i32 %59, label %172 [
    i32 129, label %60
    i32 128, label %61
  ]

60:                                               ; preds = %50
  store i8 0, i8* %16, align 1
  br label %172

61:                                               ; preds = %50
  %62 = load %struct.rfb_softc*, %struct.rfb_softc** %3, align 8
  %63 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* @PASSWD_LENGTH, align 4
  %66 = call i32 @strncpy(i8* %25, i64 %64, i32 %65)
  store i32 0, i32* %13, align 4
  br label %67

67:                                               ; preds = %135, %61
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* @PASSWD_LENGTH, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %138

71:                                               ; preds = %67
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %25, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = and i32 %76, 240
  %78 = ashr i32 %77, 4
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %25, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = and i32 %83, 15
  %85 = shl i32 %84, 4
  %86 = trunc i32 %85 to i8
  %87 = zext i8 %86 to i32
  %88 = or i32 %78, %87
  %89 = trunc i32 %88 to i8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %25, i64 %91
  store i8 %89, i8* %92, align 1
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %25, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = and i32 %97, 204
  %99 = ashr i32 %98, 2
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %25, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = and i32 %104, 51
  %106 = shl i32 %105, 2
  %107 = trunc i32 %106 to i8
  %108 = zext i8 %107 to i32
  %109 = or i32 %99, %108
  %110 = trunc i32 %109 to i8
  %111 = load i32, i32* %13, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %25, i64 %112
  store i8 %110, i8* %113, align 1
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %25, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = and i32 %118, 170
  %120 = ashr i32 %119, 1
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %25, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = and i32 %125, 85
  %127 = shl i32 %126, 1
  %128 = trunc i32 %127 to i8
  %129 = zext i8 %128 to i32
  %130 = or i32 %120, %129
  %131 = trunc i32 %130 to i8
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %25, i64 %133
  store i8 %131, i8* %134, align 1
  br label %135

135:                                              ; preds = %71
  %136 = load i32, i32* %13, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %13, align 4
  br label %67

138:                                              ; preds = %67
  %139 = trunc i64 %20 to i32
  %140 = call i32 @arc4random_buf(i8* %22, i32 %139)
  %141 = load i32, i32* %4, align 4
  %142 = load i32, i32* @AUTH_LENGTH, align 4
  %143 = call i32 (i32, ...) @stream_write(i32 %141, i8* %22, i32 %142)
  %144 = load i32, i32* %4, align 4
  %145 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %146 = load i32, i32* @AUTH_LENGTH, align 4
  %147 = call i64 @stream_read(i32 %144, i8* %145, i32 %146)
  %148 = load i32, i32* @AUTH_LENGTH, align 4
  %149 = call i32 @memcpy(i8* %28, i8* %22, i32 %148)
  %150 = load i32, i32* @kCCEncrypt, align 4
  %151 = load i32, i32* @kCCAlgorithmDES, align 4
  %152 = load i32, i32* @kCCOptionECBMode, align 4
  %153 = load i32, i32* @PASSWD_LENGTH, align 4
  %154 = load i32, i32* @AUTH_LENGTH, align 4
  %155 = load i32, i32* @AUTH_LENGTH, align 4
  %156 = call i32 @CCCrypt(i32 %150, i32 %151, i32 %152, i8* %25, i32 %153, i32* null, i8* %22, i32 %154, i8* %28, i32 %155, i64* %12)
  store i32 %156, i32* %14, align 4
  %157 = load i32, i32* %14, align 4
  %158 = load i32, i32* @kCCSuccess, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %138
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %161 = call signext i8 @htonl(i32 1)
  store i8 %161, i8* %16, align 1
  br label %171

162:                                              ; preds = %138
  %163 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %164 = load i32, i32* @AUTH_LENGTH, align 4
  %165 = call i32 @memcmp(i8* %28, i8* %163, i32 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %162
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  %168 = call signext i8 @htonl(i32 1)
  store i8 %168, i8* %16, align 1
  br label %170

169:                                              ; preds = %162
  store i8 0, i8* %16, align 1
  br label %170

170:                                              ; preds = %169, %167
  br label %171

171:                                              ; preds = %170, %160
  br label %172

172:                                              ; preds = %50, %171, %60
  %173 = load i32, i32* %4, align 4
  %174 = call i32 (i32, ...) @stream_write(i32 %173, i8* %16, i32 4)
  %175 = load i8, i8* %16, align 1
  %176 = icmp ne i8 %175, 0
  br i1 %176, label %177, label %192

177:                                              ; preds = %172
  %178 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %179 = load i8*, i8** %7, align 8
  %180 = call i64 @strlen(i8* %179)
  %181 = trunc i64 %180 to i8
  %182 = call i32 @be32enc(i8* %178, i8 signext %181)
  %183 = load i32, i32* %4, align 4
  %184 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %185 = call i32 (i32, ...) @stream_write(i32 %183, i8* %184, i32 4)
  %186 = load i32, i32* %4, align 4
  %187 = load i8*, i8** %7, align 8
  %188 = load i8*, i8** %7, align 8
  %189 = call i64 @strlen(i8* %188)
  %190 = trunc i64 %189 to i32
  %191 = call i32 (i32, ...) @stream_write(i32 %186, i8* %187, i32 %190)
  br label %271

192:                                              ; preds = %172
  %193 = load i32, i32* %4, align 4
  %194 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %195 = call i64 @stream_read(i32 %193, i8* %194, i32 1)
  store i64 %195, i64* %17, align 8
  %196 = load i32, i32* %4, align 4
  %197 = call i32 @rfb_send_server_init_msg(i32 %196)
  %198 = load %struct.rfb_softc*, %struct.rfb_softc** %3, align 8
  %199 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %198, i32 0, i32 3
  %200 = load i32*, i32** %199, align 8
  %201 = icmp ne i32* %200, null
  br i1 %201, label %214, label %202

202:                                              ; preds = %192
  %203 = load i64, i64* @RFB_ZLIB_BUFSZ, align 8
  %204 = add nsw i64 %203, 16
  %205 = call i32* @malloc(i64 %204)
  %206 = load %struct.rfb_softc*, %struct.rfb_softc** %3, align 8
  %207 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %206, i32 0, i32 3
  store i32* %205, i32** %207, align 8
  %208 = load %struct.rfb_softc*, %struct.rfb_softc** %3, align 8
  %209 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %208, i32 0, i32 3
  %210 = load i32*, i32** %209, align 8
  %211 = icmp ne i32* %210, null
  %212 = zext i1 %211 to i32
  %213 = call i32 @assert(i32 %212)
  br label %214

214:                                              ; preds = %202, %192
  %215 = load %struct.rfb_softc*, %struct.rfb_softc** %3, align 8
  %216 = load i32, i32* %4, align 4
  %217 = call i32 @rfb_send_screen(%struct.rfb_softc* %215, i32 %216, i32 1)
  %218 = load i32, i32* @rfb_wr_thr, align 4
  %219 = load %struct.rfb_softc*, %struct.rfb_softc** %3, align 8
  %220 = call i32 @pthread_create(i32** %15, i32* null, i32 %218, %struct.rfb_softc* %219)
  store i32 %220, i32* %18, align 4
  %221 = load i32, i32* %18, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %214
  br label %271

224:                                              ; preds = %214
  br label %225

225:                                              ; preds = %269, %224
  %226 = load i32, i32* %4, align 4
  %227 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %228 = call i64 @read(i32 %226, i8* %227, i32 1)
  store i64 %228, i64* %17, align 8
  %229 = load i64, i64* %17, align 8
  %230 = icmp sle i64 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %225
  %232 = call i32 @DPRINTF(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %270

233:                                              ; preds = %225
  %234 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %235 = load i8, i8* %234, align 16
  %236 = zext i8 %235 to i32
  switch i32 %236, label %261 [
    i32 0, label %237
    i32 2, label %241
    i32 3, label %245
    i32 4, label %249
    i32 5, label %253
    i32 6, label %257
  ]

237:                                              ; preds = %233
  %238 = load %struct.rfb_softc*, %struct.rfb_softc** %3, align 8
  %239 = load i32, i32* %4, align 4
  %240 = call i32 @rfb_recv_set_pixfmt_msg(%struct.rfb_softc* %238, i32 %239)
  br label %269

241:                                              ; preds = %233
  %242 = load %struct.rfb_softc*, %struct.rfb_softc** %3, align 8
  %243 = load i32, i32* %4, align 4
  %244 = call i32 @rfb_recv_set_encodings_msg(%struct.rfb_softc* %242, i32 %243)
  br label %269

245:                                              ; preds = %233
  %246 = load %struct.rfb_softc*, %struct.rfb_softc** %3, align 8
  %247 = load i32, i32* %4, align 4
  %248 = call i32 @rfb_recv_update_msg(%struct.rfb_softc* %246, i32 %247, i32 1)
  br label %269

249:                                              ; preds = %233
  %250 = load %struct.rfb_softc*, %struct.rfb_softc** %3, align 8
  %251 = load i32, i32* %4, align 4
  %252 = call i32 @rfb_recv_key_msg(%struct.rfb_softc* %250, i32 %251)
  br label %269

253:                                              ; preds = %233
  %254 = load %struct.rfb_softc*, %struct.rfb_softc** %3, align 8
  %255 = load i32, i32* %4, align 4
  %256 = call i32 @rfb_recv_ptr_msg(%struct.rfb_softc* %254, i32 %255)
  br label %269

257:                                              ; preds = %233
  %258 = load %struct.rfb_softc*, %struct.rfb_softc** %3, align 8
  %259 = load i32, i32* %4, align 4
  %260 = call i32 @rfb_recv_cuttext_msg(%struct.rfb_softc* %258, i32 %259)
  br label %269

261:                                              ; preds = %233
  %262 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %263 = load i8, i8* %262, align 16
  %264 = zext i8 %263 to i32
  %265 = and i32 %264, 255
  %266 = sext i32 %265 to i64
  %267 = inttoptr i64 %266 to i8*
  %268 = call i32 @WPRINTF(i8* %267)
  br label %271

269:                                              ; preds = %257, %253, %249, %245, %241, %237
  br label %225

270:                                              ; preds = %231
  br label %271

271:                                              ; preds = %270, %261, %223, %177
  %272 = load %struct.rfb_softc*, %struct.rfb_softc** %3, align 8
  %273 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %272, i32 0, i32 0
  store i32 -1, i32* %273, align 8
  %274 = load i32, i32* %18, align 4
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %271
  %277 = load i32*, i32** %15, align 8
  %278 = call i32 @pthread_join(i32* %277, i32* null)
  br label %279

279:                                              ; preds = %276, %271
  %280 = load %struct.rfb_softc*, %struct.rfb_softc** %3, align 8
  %281 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %280, i32 0, i32 2
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %279
  %285 = load %struct.rfb_softc*, %struct.rfb_softc** %3, align 8
  %286 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %285, i32 0, i32 1
  %287 = call i32 @deflateEnd(i32* %286)
  br label %288

288:                                              ; preds = %284, %279
  %289 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %289)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @stream_write(i32, ...) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @read(i32, i8*, i32) #2

declare dso_local i64 @stream_read(i32, i8*, i32) #2

declare dso_local i32 @strncpy(i8*, i64, i32) #2

declare dso_local i32 @arc4random_buf(i8*, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @CCCrypt(i32, i32, i32, i8*, i32, i32*, i8*, i32, i8*, i32, i64*) #2

declare dso_local signext i8 @htonl(i32) #2

declare dso_local i32 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @be32enc(i8*, i8 signext) #2

declare dso_local i32 @rfb_send_server_init_msg(i32) #2

declare dso_local i32* @malloc(i64) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @rfb_send_screen(%struct.rfb_softc*, i32, i32) #2

declare !callback !2 dso_local i32 @pthread_create(i32**, i32*, i32, %struct.rfb_softc*) #2

declare dso_local i32 @DPRINTF(i8*) #2

declare dso_local i32 @rfb_recv_set_pixfmt_msg(%struct.rfb_softc*, i32) #2

declare dso_local i32 @rfb_recv_set_encodings_msg(%struct.rfb_softc*, i32) #2

declare dso_local i32 @rfb_recv_update_msg(%struct.rfb_softc*, i32, i32) #2

declare dso_local i32 @rfb_recv_key_msg(%struct.rfb_softc*, i32) #2

declare dso_local i32 @rfb_recv_ptr_msg(%struct.rfb_softc*, i32) #2

declare dso_local i32 @rfb_recv_cuttext_msg(%struct.rfb_softc*, i32) #2

declare dso_local i32 @WPRINTF(i8*) #2

declare dso_local i32 @pthread_join(i32*, i32*) #2

declare dso_local i32 @deflateEnd(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}

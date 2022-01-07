; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/sio/extr_StrAddr.c_AddrToAddrStr.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/sio/extr_StrAddr.c_AddrToAddrStr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i64, i32 }
%struct.hostent = type { i8* }
%struct.servent = type { i8* }

@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%h:%p\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"udp\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @AddrToAddrStr(i8* %0, i64 %1, %struct.sockaddr_in* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.hostent*, align 8
  %13 = alloca [128 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.servent*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.sockaddr_in* %2, %struct.sockaddr_in** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %18 = load i32, i32* %9, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %5
  %21 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i8* @inet_ntoa(i32 %23)
  store i8* %24, i8** %11, align 8
  br label %56

25:                                               ; preds = %5
  %26 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %26, i32 0, i32 1
  %28 = bitcast i32* %27 to i8*
  %29 = load i32, i32* @AF_INET, align 4
  %30 = call %struct.hostent* @gethostbyaddr(i8* %28, i32 4, i32 %29)
  store %struct.hostent* %30, %struct.hostent** %12, align 8
  %31 = load %struct.hostent*, %struct.hostent** %12, align 8
  %32 = icmp ne %struct.hostent* %31, null
  br i1 %32, label %33, label %50

33:                                               ; preds = %25
  %34 = load %struct.hostent*, %struct.hostent** %12, align 8
  %35 = getelementptr inbounds %struct.hostent, %struct.hostent* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load %struct.hostent*, %struct.hostent** %12, align 8
  %40 = getelementptr inbounds %struct.hostent, %struct.hostent* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load %struct.hostent*, %struct.hostent** %12, align 8
  %48 = getelementptr inbounds %struct.hostent, %struct.hostent* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %11, align 8
  br label %55

50:                                               ; preds = %38, %33, %25
  %51 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %52 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i8* @inet_ntoa(i32 %53)
  store i8* %54, i8** %11, align 8
  br label %55

55:                                               ; preds = %50, %46
  br label %56

56:                                               ; preds = %55, %20
  %57 = load i8*, i8** %10, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %60

60:                                               ; preds = %59, %56
  %61 = load i8*, i8** %6, align 8
  store i8* %61, i8** %15, align 8
  %62 = load i8*, i8** %15, align 8
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = getelementptr inbounds i8, i8* %64, i64 -1
  store i8* %65, i8** %14, align 8
  br label %66

66:                                               ; preds = %306, %60
  %67 = load i8*, i8** %10, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %309

72:                                               ; preds = %66
  %73 = load i8*, i8** %10, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 37
  br i1 %76, label %77, label %294

77:                                               ; preds = %72
  %78 = load i8*, i8** %10, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %10, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 37
  br i1 %83, label %84, label %92

84:                                               ; preds = %77
  %85 = load i8*, i8** %15, align 8
  %86 = load i8*, i8** %14, align 8
  %87 = icmp ult i8* %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i8*, i8** %15, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %15, align 8
  store i8 37, i8* %89, align 1
  br label %91

91:                                               ; preds = %88, %84
  br label %293

92:                                               ; preds = %77
  %93 = load i8*, i8** %10, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 112
  br i1 %96, label %97, label %126

97:                                               ; preds = %92
  %98 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %99 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %100 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i64 @ntohs(i64 %101)
  %103 = trunc i64 %102 to i32
  %104 = call i32 @sprintf(i8* %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  %105 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  store i8* %105, i8** %16, align 8
  br label %106

106:                                              ; preds = %121, %97
  %107 = load i8*, i8** %16, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %106
  %112 = load i8*, i8** %15, align 8
  %113 = load i8*, i8** %14, align 8
  %114 = icmp ult i8* %112, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %111
  %116 = load i8*, i8** %16, align 8
  %117 = load i8, i8* %116, align 1
  %118 = load i8*, i8** %15, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %15, align 8
  store i8 %117, i8* %118, align 1
  br label %120

120:                                              ; preds = %115, %111
  br label %121

121:                                              ; preds = %120
  %122 = load i8*, i8** %16, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %16, align 8
  br label %106

124:                                              ; preds = %106
  %125 = load i8*, i8** %15, align 8
  store i8 0, i8* %125, align 1
  br label %292

126:                                              ; preds = %92
  %127 = load i8*, i8** %10, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 104
  br i1 %130, label %131, label %158

131:                                              ; preds = %126
  %132 = load i8*, i8** %11, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = load i8*, i8** %11, align 8
  store i8* %135, i8** %16, align 8
  br label %137

136:                                              ; preds = %131
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %16, align 8
  br label %137

137:                                              ; preds = %136, %134
  br label %138

138:                                              ; preds = %153, %137
  %139 = load i8*, i8** %16, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %156

143:                                              ; preds = %138
  %144 = load i8*, i8** %15, align 8
  %145 = load i8*, i8** %14, align 8
  %146 = icmp ult i8* %144, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %143
  %148 = load i8*, i8** %16, align 8
  %149 = load i8, i8* %148, align 1
  %150 = load i8*, i8** %15, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %15, align 8
  store i8 %149, i8* %150, align 1
  br label %152

152:                                              ; preds = %147, %143
  br label %153

153:                                              ; preds = %152
  %154 = load i8*, i8** %16, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %16, align 8
  br label %138

156:                                              ; preds = %138
  %157 = load i8*, i8** %15, align 8
  store i8 0, i8* %157, align 1
  br label %291

158:                                              ; preds = %126
  %159 = load i8*, i8** %10, align 8
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %161, 115
  br i1 %162, label %163, label %214

163:                                              ; preds = %158
  %164 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %165 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = trunc i64 %166 to i32
  %168 = call %struct.servent* @getservbyport(i32 %167, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store %struct.servent* %168, %struct.servent** %17, align 8
  %169 = load %struct.servent*, %struct.servent** %17, align 8
  %170 = icmp eq %struct.servent* %169, null
  br i1 %170, label %171, label %177

171:                                              ; preds = %163
  %172 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %173 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = trunc i64 %174 to i32
  %176 = call %struct.servent* @getservbyport(i32 %175, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store %struct.servent* %176, %struct.servent** %17, align 8
  br label %177

177:                                              ; preds = %171, %163
  %178 = load %struct.servent*, %struct.servent** %17, align 8
  %179 = icmp eq %struct.servent* %178, null
  br i1 %179, label %180, label %189

180:                                              ; preds = %177
  %181 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %182 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %183 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = call i64 @ntohs(i64 %184)
  %186 = trunc i64 %185 to i32
  %187 = call i32 @sprintf(i8* %181, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %186)
  %188 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  store i8* %188, i8** %16, align 8
  br label %193

189:                                              ; preds = %177
  %190 = load %struct.servent*, %struct.servent** %17, align 8
  %191 = getelementptr inbounds %struct.servent, %struct.servent* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  store i8* %192, i8** %16, align 8
  br label %193

193:                                              ; preds = %189, %180
  br label %194

194:                                              ; preds = %209, %193
  %195 = load i8*, i8** %16, align 8
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %212

199:                                              ; preds = %194
  %200 = load i8*, i8** %15, align 8
  %201 = load i8*, i8** %14, align 8
  %202 = icmp ult i8* %200, %201
  br i1 %202, label %203, label %208

203:                                              ; preds = %199
  %204 = load i8*, i8** %16, align 8
  %205 = load i8, i8* %204, align 1
  %206 = load i8*, i8** %15, align 8
  %207 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %207, i8** %15, align 8
  store i8 %205, i8* %206, align 1
  br label %208

208:                                              ; preds = %203, %199
  br label %209

209:                                              ; preds = %208
  %210 = load i8*, i8** %16, align 8
  %211 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %211, i8** %16, align 8
  br label %194

212:                                              ; preds = %194
  %213 = load i8*, i8** %15, align 8
  store i8 0, i8* %213, align 1
  br label %290

214:                                              ; preds = %158
  %215 = load i8*, i8** %10, align 8
  %216 = load i8, i8* %215, align 1
  %217 = sext i8 %216 to i32
  %218 = icmp eq i32 %217, 116
  br i1 %218, label %224, label %219

219:                                              ; preds = %214
  %220 = load i8*, i8** %10, align 8
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i32
  %223 = icmp eq i32 %222, 117
  br i1 %223, label %224, label %272

224:                                              ; preds = %219, %214
  %225 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %226 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = trunc i64 %227 to i32
  %229 = load i8*, i8** %10, align 8
  %230 = load i8, i8* %229, align 1
  %231 = sext i8 %230 to i32
  %232 = icmp eq i32 %231, 117
  %233 = zext i1 %232 to i64
  %234 = select i1 %232, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %235 = call %struct.servent* @getservbyport(i32 %228, i8* %234)
  store %struct.servent* %235, %struct.servent** %17, align 8
  %236 = load %struct.servent*, %struct.servent** %17, align 8
  %237 = icmp eq %struct.servent* %236, null
  br i1 %237, label %238, label %247

238:                                              ; preds = %224
  %239 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %240 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %241 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = call i64 @ntohs(i64 %242)
  %244 = trunc i64 %243 to i32
  %245 = call i32 @sprintf(i8* %239, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %244)
  %246 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  store i8* %246, i8** %16, align 8
  br label %251

247:                                              ; preds = %224
  %248 = load %struct.servent*, %struct.servent** %17, align 8
  %249 = getelementptr inbounds %struct.servent, %struct.servent* %248, i32 0, i32 0
  %250 = load i8*, i8** %249, align 8
  store i8* %250, i8** %16, align 8
  br label %251

251:                                              ; preds = %247, %238
  br label %252

252:                                              ; preds = %267, %251
  %253 = load i8*, i8** %16, align 8
  %254 = load i8, i8* %253, align 1
  %255 = sext i8 %254 to i32
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %270

257:                                              ; preds = %252
  %258 = load i8*, i8** %15, align 8
  %259 = load i8*, i8** %14, align 8
  %260 = icmp ult i8* %258, %259
  br i1 %260, label %261, label %266

261:                                              ; preds = %257
  %262 = load i8*, i8** %16, align 8
  %263 = load i8, i8* %262, align 1
  %264 = load i8*, i8** %15, align 8
  %265 = getelementptr inbounds i8, i8* %264, i32 1
  store i8* %265, i8** %15, align 8
  store i8 %263, i8* %264, align 1
  br label %266

266:                                              ; preds = %261, %257
  br label %267

267:                                              ; preds = %266
  %268 = load i8*, i8** %16, align 8
  %269 = getelementptr inbounds i8, i8* %268, i32 1
  store i8* %269, i8** %16, align 8
  br label %252

270:                                              ; preds = %252
  %271 = load i8*, i8** %15, align 8
  store i8 0, i8* %271, align 1
  br label %289

272:                                              ; preds = %219
  %273 = load i8*, i8** %10, align 8
  %274 = load i8, i8* %273, align 1
  %275 = sext i8 %274 to i32
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %272
  br label %309

278:                                              ; preds = %272
  %279 = load i8*, i8** %15, align 8
  %280 = load i8*, i8** %14, align 8
  %281 = icmp ult i8* %279, %280
  br i1 %281, label %282, label %287

282:                                              ; preds = %278
  %283 = load i8*, i8** %10, align 8
  %284 = load i8, i8* %283, align 1
  %285 = load i8*, i8** %15, align 8
  %286 = getelementptr inbounds i8, i8* %285, i32 1
  store i8* %286, i8** %15, align 8
  store i8 %284, i8* %285, align 1
  br label %287

287:                                              ; preds = %282, %278
  br label %288

288:                                              ; preds = %287
  br label %289

289:                                              ; preds = %288, %270
  br label %290

290:                                              ; preds = %289, %212
  br label %291

291:                                              ; preds = %290, %156
  br label %292

292:                                              ; preds = %291, %124
  br label %293

293:                                              ; preds = %292, %91
  br label %304

294:                                              ; preds = %72
  %295 = load i8*, i8** %15, align 8
  %296 = load i8*, i8** %14, align 8
  %297 = icmp ult i8* %295, %296
  br i1 %297, label %298, label %303

298:                                              ; preds = %294
  %299 = load i8*, i8** %10, align 8
  %300 = load i8, i8* %299, align 1
  %301 = load i8*, i8** %15, align 8
  %302 = getelementptr inbounds i8, i8* %301, i32 1
  store i8* %302, i8** %15, align 8
  store i8 %300, i8* %301, align 1
  br label %303

303:                                              ; preds = %298, %294
  br label %304

304:                                              ; preds = %303, %293
  br label %305

305:                                              ; preds = %304
  br label %306

306:                                              ; preds = %305
  %307 = load i8*, i8** %10, align 8
  %308 = getelementptr inbounds i8, i8* %307, i32 1
  store i8* %308, i8** %10, align 8
  br label %66

309:                                              ; preds = %277, %71
  %310 = load i8*, i8** %15, align 8
  store i8 0, i8* %310, align 1
  %311 = load i8*, i8** %6, align 8
  ret i8* %311
}

declare dso_local i8* @inet_ntoa(i32) #1

declare dso_local %struct.hostent* @gethostbyaddr(i8*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @ntohs(i64) #1

declare dso_local %struct.servent* @getservbyport(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

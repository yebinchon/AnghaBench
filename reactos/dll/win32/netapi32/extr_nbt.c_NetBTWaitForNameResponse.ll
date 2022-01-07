; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_nbt.c_NetBTWaitForNameResponse.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_nbt.c_NetBTWaitForNameResponse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.fd_set = type { i32 }
%struct.timeval = type { i32, i32 }
%struct.sockaddr_in = type { i32 }
%struct.TYPE_5__ = type { i32, i32* }
%struct.sockaddr = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@NRC_GOODRET = common dso_local global i64 0, align 8
@NRC_BADDR = common dso_local global i64 0, align 8
@INVALID_SOCKET = common dso_local global i64 0, align 8
@NRC_SYSTEM = common dso_local global i64 0, align 8
@NBNS_HEADER_SIZE = common dso_local global i32 0, align 4
@NBNS_RESPONSE_AND_OPCODE = common dso_local global i64 0, align 8
@NBNS_RESPONSE_AND_QUERY = common dso_local global i64 0, align 8
@NBNS_REPLYCODE = common dso_local global i64 0, align 8
@NRC_NAMERR = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@NBNS_CLASS_INTERNET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"returning 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i64, i32, i64 (i8*, i64, i64, i64*, i64)*, i8*)* @NetBTWaitForNameResponse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @NetBTWaitForNameResponse(%struct.TYPE_6__* %0, i64 %1, i32 %2, i64 (i8*, i64, i64, i64*, i64)* %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64 (i8*, i64, i64, i64*, i64)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.fd_set, align 4
  %17 = alloca %struct.timeval, align 4
  %18 = alloca i32, align 4
  %19 = alloca [256 x i64], align 16
  %20 = alloca i32, align 4
  %21 = alloca %struct.sockaddr_in, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.TYPE_5__, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i64*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 (i8*, i64, i64, i64*, i64)* %3, i64 (i8*, i64, i64, i64*, i64)** %10, align 8
  store i8* %4, i8** %11, align 8
  %33 = load i64, i64* @FALSE, align 8
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* @NRC_GOODRET, align 8
  store i64 %34, i64* %14, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %36 = icmp ne %struct.TYPE_6__* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %5
  %38 = load i64, i64* @NRC_BADDR, align 8
  store i64 %38, i64* %6, align 8
  br label %272

39:                                               ; preds = %5
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @INVALID_SOCKET, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i64, i64* @NRC_BADDR, align 8
  store i64 %44, i64* %6, align 8
  br label %272

45:                                               ; preds = %39
  %46 = load i64 (i8*, i64, i64, i64*, i64)*, i64 (i8*, i64, i64, i64*, i64)** %10, align 8
  %47 = icmp ne i64 (i8*, i64, i64, i64*, i64)* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = load i64, i64* @NRC_BADDR, align 8
  store i64 %49, i64* %6, align 8
  br label %272

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %267, %126, %113, %104, %50
  %52 = load i64, i64* %12, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %51
  %55 = load i64, i64* %14, align 8
  %56 = load i64, i64* @NRC_GOODRET, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = call i32 (...) @GetTickCount()
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %9, align 4
  %61 = sub nsw i32 %59, %60
  %62 = icmp slt i32 %61, 0
  br label %63

63:                                               ; preds = %58, %54, %51
  %64 = phi i1 [ false, %54 ], [ false, %51 ], [ %62, %58 ]
  br i1 %64, label %65, label %268

65:                                               ; preds = %63
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %13, align 4
  %68 = sub nsw i32 %66, %67
  store i32 %68, i32* %15, align 4
  %69 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  %70 = load i32, i32* %15, align 4
  %71 = sdiv i32 %70, 1000
  store i32 %71, i32* %69, align 4
  %72 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1
  %73 = load i32, i32* %15, align 4
  %74 = srem i32 %73, 1000
  store i32 %74, i32* %72, align 4
  %75 = call i32 @FD_ZERO(%struct.fd_set* %16)
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @FD_SET(i64 %76, %struct.fd_set* %16)
  %78 = load i64, i64* %8, align 8
  %79 = add nsw i64 %78, 1
  %80 = call i32 @select(i64 %79, %struct.fd_set* %16, i32* null, i32* null, %struct.timeval* %17)
  store i32 %80, i32* %18, align 4
  %81 = load i32, i32* %18, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %65
  %84 = load i64, i64* @NRC_SYSTEM, align 8
  store i64 %84, i64* %14, align 8
  br label %267

85:                                               ; preds = %65
  %86 = load i32, i32* %18, align 4
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %266

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 2048, i32* %89, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %91 = getelementptr inbounds [256 x i64], [256 x i64]* %19, i64 0, i64 0
  %92 = bitcast i64* %91 to i32*
  store i32* %92, i32** %90, align 8
  store i32 0, i32* %28, align 4
  store i32 4, i32* %20, align 4
  %93 = load i64, i64* %8, align 8
  %94 = bitcast %struct.sockaddr_in* %21 to %struct.sockaddr*
  %95 = call i32 @WSARecvFrom(i64 %93, %struct.TYPE_5__* %26, i32 1, i32* %27, i32* %28, %struct.sockaddr* %94, i32* %20, i32* null, i32* null)
  store i32 %95, i32* %18, align 4
  %96 = load i32, i32* %18, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %88
  %99 = load i64, i64* @NRC_SYSTEM, align 8
  store i64 %99, i64* %14, align 8
  br label %268

100:                                              ; preds = %88
  %101 = load i32, i32* %27, align 4
  %102 = load i32, i32* @NBNS_HEADER_SIZE, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %51

105:                                              ; preds = %100
  %106 = getelementptr inbounds [256 x i64], [256 x i64]* %19, i64 0, i64 0
  %107 = call i64 @NBR_GETWORD(i64* %106)
  store i64 %107, i64* %22, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %22, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  br label %51

114:                                              ; preds = %105
  %115 = getelementptr inbounds [256 x i64], [256 x i64]* %19, i64 0, i64 0
  %116 = getelementptr inbounds i64, i64* %115, i64 2
  %117 = call i64 @NBR_GETWORD(i64* %116)
  store i64 %117, i64* %23, align 8
  %118 = getelementptr inbounds [256 x i64], [256 x i64]* %19, i64 0, i64 0
  %119 = getelementptr inbounds i64, i64* %118, i64 4
  %120 = call i64 @NBR_GETWORD(i64* %119)
  store i64 %120, i64* %24, align 8
  %121 = getelementptr inbounds [256 x i64], [256 x i64]* %19, i64 0, i64 0
  %122 = getelementptr inbounds i64, i64* %121, i64 6
  %123 = call i64 @NBR_GETWORD(i64* %122)
  store i64 %123, i64* %25, align 8
  %124 = load i64, i64* %24, align 8
  %125 = icmp sgt i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %114
  br label %51

127:                                              ; preds = %114
  %128 = load i64, i64* %23, align 8
  %129 = load i64, i64* @NBNS_RESPONSE_AND_OPCODE, align 8
  %130 = and i64 %128, %129
  %131 = load i64, i64* @NBNS_RESPONSE_AND_QUERY, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %265

133:                                              ; preds = %127
  %134 = load i64, i64* %23, align 8
  %135 = load i64, i64* @NBNS_REPLYCODE, align 8
  %136 = and i64 %134, %135
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %133
  %139 = load i64, i64* @NRC_NAMERR, align 8
  store i64 %139, i64* %14, align 8
  br label %264

140:                                              ; preds = %133
  %141 = load i64, i64* %23, align 8
  %142 = load i64, i64* @NBNS_REPLYCODE, align 8
  %143 = and i64 %141, %142
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %263

145:                                              ; preds = %140
  %146 = load i64, i64* %25, align 8
  %147 = icmp sgt i64 %146, 0
  br i1 %147, label %148, label %263

148:                                              ; preds = %145
  %149 = getelementptr inbounds [256 x i64], [256 x i64]* %19, i64 0, i64 0
  %150 = load i32, i32* @NBNS_HEADER_SIZE, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  store i64* %152, i64** %29, align 8
  %153 = load i64, i64* @TRUE, align 8
  store i64 %153, i64* %30, align 8
  store i64 0, i64* %31, align 8
  %154 = load i64, i64* @TRUE, align 8
  store i64 %154, i64* %12, align 8
  br label %155

155:                                              ; preds = %231, %148
  %156 = load i64, i64* %14, align 8
  %157 = load i64, i64* @NRC_GOODRET, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %176

159:                                              ; preds = %155
  %160 = load i64, i64* %31, align 8
  %161 = load i64, i64* %25, align 8
  %162 = icmp slt i64 %160, %161
  br i1 %162, label %163, label %176

163:                                              ; preds = %159
  %164 = load i64*, i64** %29, align 8
  %165 = getelementptr inbounds [256 x i64], [256 x i64]* %19, i64 0, i64 0
  %166 = ptrtoint i64* %164 to i64
  %167 = ptrtoint i64* %165 to i64
  %168 = sub i64 %166, %167
  %169 = sdiv exact i64 %168, 8
  %170 = load i32, i32* %27, align 4
  %171 = sext i32 %170 to i64
  %172 = icmp slt i64 %169, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %163
  %174 = load i64, i64* %30, align 8
  %175 = icmp ne i64 %174, 0
  br label %176

176:                                              ; preds = %173, %163, %159, %155
  %177 = phi i1 [ false, %163 ], [ false, %159 ], [ false, %155 ], [ %175, %173 ]
  br i1 %177, label %178, label %262

178:                                              ; preds = %176
  br label %179

179:                                              ; preds = %196, %178
  %180 = load i64*, i64** %29, align 8
  %181 = getelementptr inbounds i64, i64* %180, i64 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %194

184:                                              ; preds = %179
  %185 = load i64*, i64** %29, align 8
  %186 = getelementptr inbounds [256 x i64], [256 x i64]* %19, i64 0, i64 0
  %187 = ptrtoint i64* %185 to i64
  %188 = ptrtoint i64* %186 to i64
  %189 = sub i64 %187, %188
  %190 = sdiv exact i64 %189, 8
  %191 = load i32, i32* %27, align 4
  %192 = sext i32 %191 to i64
  %193 = icmp slt i64 %190, %192
  br label %194

194:                                              ; preds = %184, %179
  %195 = phi i1 [ false, %179 ], [ %193, %184 ]
  br i1 %195, label %196, label %203

196:                                              ; preds = %194
  %197 = load i64*, i64** %29, align 8
  %198 = getelementptr inbounds i64, i64* %197, i64 0
  %199 = load i64, i64* %198, align 8
  %200 = add nsw i64 %199, 1
  %201 = load i64*, i64** %29, align 8
  %202 = getelementptr inbounds i64, i64* %201, i64 %200
  store i64* %202, i64** %29, align 8
  br label %179

203:                                              ; preds = %194
  %204 = load i64*, i64** %29, align 8
  %205 = getelementptr inbounds i64, i64* %204, i32 1
  store i64* %205, i64** %29, align 8
  %206 = load i64*, i64** %29, align 8
  %207 = getelementptr inbounds i64, i64* %206, i64 2
  store i64* %207, i64** %29, align 8
  %208 = load i64*, i64** %29, align 8
  %209 = getelementptr inbounds [256 x i64], [256 x i64]* %19, i64 0, i64 0
  %210 = ptrtoint i64* %208 to i64
  %211 = ptrtoint i64* %209 to i64
  %212 = sub i64 %210, %211
  %213 = sdiv exact i64 %212, 8
  %214 = load i32, i32* %27, align 4
  %215 = sext i32 %214 to i64
  %216 = icmp slt i64 %213, %215
  br i1 %216, label %217, label %229

217:                                              ; preds = %203
  %218 = load i64, i64* %14, align 8
  %219 = load i64, i64* @NRC_GOODRET, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %229

221:                                              ; preds = %217
  %222 = load i64*, i64** %29, align 8
  %223 = call i64 @NBR_GETWORD(i64* %222)
  %224 = load i64, i64* @NBNS_CLASS_INTERNET, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %226, label %229

226:                                              ; preds = %221
  %227 = load i64*, i64** %29, align 8
  %228 = getelementptr inbounds i64, i64* %227, i64 8
  store i64* %228, i64** %29, align 8
  br label %231

229:                                              ; preds = %221, %217, %203
  %230 = load i64, i64* @NRC_SYSTEM, align 8
  store i64 %230, i64* %14, align 8
  br label %231

231:                                              ; preds = %229, %226
  %232 = load i64*, i64** %29, align 8
  %233 = getelementptr inbounds i64, i64* %232, i64 4
  store i64* %233, i64** %29, align 8
  %234 = load i64*, i64** %29, align 8
  %235 = call i64 @NBR_GETWORD(i64* %234)
  store i64 %235, i64* %32, align 8
  %236 = load i64, i64* %32, align 8
  %237 = load i32, i32* %27, align 4
  %238 = sext i32 %237 to i64
  %239 = load i64*, i64** %29, align 8
  %240 = getelementptr inbounds [256 x i64], [256 x i64]* %19, i64 0, i64 0
  %241 = ptrtoint i64* %239 to i64
  %242 = ptrtoint i64* %240 to i64
  %243 = sub i64 %241, %242
  %244 = sdiv exact i64 %243, 8
  %245 = sub nsw i64 %238, %244
  %246 = trunc i64 %245 to i32
  %247 = call i64 @min(i64 %236, i32 %246)
  store i64 %247, i64* %32, align 8
  %248 = load i64*, i64** %29, align 8
  %249 = getelementptr inbounds i64, i64* %248, i64 8
  store i64* %249, i64** %29, align 8
  %250 = load i64 (i8*, i64, i64, i64*, i64)*, i64 (i8*, i64, i64, i64*, i64)** %10, align 8
  %251 = load i8*, i8** %11, align 8
  %252 = load i64, i64* %25, align 8
  %253 = load i64, i64* %31, align 8
  %254 = load i64*, i64** %29, align 8
  %255 = load i64, i64* %32, align 8
  %256 = call i64 %250(i8* %251, i64 %252, i64 %253, i64* %254, i64 %255)
  store i64 %256, i64* %30, align 8
  %257 = load i64, i64* %32, align 8
  %258 = load i64*, i64** %29, align 8
  %259 = getelementptr inbounds i64, i64* %258, i64 %257
  store i64* %259, i64** %29, align 8
  %260 = load i64, i64* %31, align 8
  %261 = add nsw i64 %260, 1
  store i64 %261, i64* %31, align 8
  br label %155

262:                                              ; preds = %176
  br label %263

263:                                              ; preds = %262, %145, %140
  br label %264

264:                                              ; preds = %263, %138
  br label %265

265:                                              ; preds = %264, %127
  br label %266

266:                                              ; preds = %265, %85
  br label %267

267:                                              ; preds = %266, %83
  br label %51

268:                                              ; preds = %98, %63
  %269 = load i64, i64* %14, align 8
  %270 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %269)
  %271 = load i64, i64* %14, align 8
  store i64 %271, i64* %6, align 8
  br label %272

272:                                              ; preds = %268, %48, %43, %37
  %273 = load i64, i64* %6, align 8
  ret i64 %273
}

declare dso_local i32 @GetTickCount(...) #1

declare dso_local i32 @FD_ZERO(%struct.fd_set*) #1

declare dso_local i32 @FD_SET(i64, %struct.fd_set*) #1

declare dso_local i32 @select(i64, %struct.fd_set*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @WSARecvFrom(i64, %struct.TYPE_5__*, i32, i32*, i32*, %struct.sockaddr*, i32*, i32*, i32*) #1

declare dso_local i64 @NBR_GETWORD(i64*) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @TRACE(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

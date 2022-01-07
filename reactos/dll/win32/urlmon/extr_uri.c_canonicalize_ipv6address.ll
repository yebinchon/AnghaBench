; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_canonicalize_ipv6address.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_canonicalize_ipv6address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { i32, i32, i8*, i32 }

@URL_SCHEME_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [68 x i8] c"(%p %p %x %d): Failed to compute numerical value for IPv6 address.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"%p %p %x %d): Elision starts at %d, len=%u\0A\00", align 1
@canonicalize_ipv6address.formatW = internal constant [3 x i8] c"%x\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"(%p %p %x %d): Canonicalized IPv6 address %s, len=%d\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, i32, i32)* @canonicalize_ipv6address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @canonicalize_ipv6address(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [8 x i64], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [5 x i8], align 1
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @URL_SCHEME_UNKNOWN, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %59

29:                                               ; preds = %4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %51, label %32

32:                                               ; preds = %29
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %35, i64 %39
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 1
  %49 = trunc i64 %48 to i32
  %50 = call i32 @memcpy(i8* %40, i32 %43, i32 %49)
  br label %51

51:                                               ; preds = %32, %29
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %327

59:                                               ; preds = %4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i64 0, i64 0
  %63 = call i32 @ipv6_to_number(%struct.TYPE_11__* %61, i64* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %59
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 (i8*, %struct.TYPE_9__*, %struct.TYPE_10__*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), %struct.TYPE_9__* %66, %struct.TYPE_10__* %67, i32 %68, i32 %69)
  %71 = load i32, i32* @FALSE, align 4
  store i32 %71, i32* %5, align 4
  br label %362

72:                                               ; preds = %59
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %72
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %78, i64 %82
  store i8 91, i8* %83, align 1
  br label %84

84:                                               ; preds = %75, %72
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 2
  %91 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i64 0, i64 0
  %92 = call i32 @compute_elision_location(%struct.TYPE_11__* %90, i64* %91, i32* %11, i32* %13)
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %13, align 4
  %99 = call i32 (i8*, %struct.TYPE_9__*, %struct.TYPE_10__*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_9__* %93, %struct.TYPE_10__* %94, i32 %95, i32 %96, i32 %97, i32 %98)
  store i32 0, i32* %12, align 4
  br label %100

100:                                              ; preds = %307, %84
  %101 = load i32, i32* %12, align 4
  %102 = icmp slt i32 %101, 8
  br i1 %102, label %103, label %310

103:                                              ; preds = %100
  %104 = load i32, i32* %11, align 4
  %105 = icmp sgt i32 %104, -1
  br i1 %105, label %106, label %116

106:                                              ; preds = %103
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %11, align 4
  %109 = icmp sge i32 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %106
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %112, %113
  %115 = icmp slt i32 %111, %114
  br label %116

116:                                              ; preds = %110, %106, %103
  %117 = phi i1 [ false, %106 ], [ false, %103 ], [ %115, %110 ]
  %118 = zext i1 %117 to i32
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %12, align 4
  %120 = icmp eq i32 %119, 6
  br i1 %120, label %121, label %136

121:                                              ; preds = %116
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %121
  %128 = load i32, i32* %14, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %136, label %130

130:                                              ; preds = %127
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp eq i64 %134, 0
  br label %136

136:                                              ; preds = %130, %127, %121, %116
  %137 = phi i1 [ false, %127 ], [ false, %121 ], [ false, %116 ], [ %135, %130 ]
  %138 = zext i1 %137 to i32
  store i32 %138, i32* %15, align 4
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %11, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %168

142:                                              ; preds = %136
  %143 = load i32, i32* %9, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %163, label %145

145:                                              ; preds = %142
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 2
  %148 = load i8*, i8** %147, align 8
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %148, i64 %152
  store i8 58, i8* %153, align 1
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 2
  %156 = load i8*, i8** %155, align 8
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %156, i64 %161
  store i8 58, i8* %162, align 1
  br label %163

163:                                              ; preds = %145, %142
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 2
  store i32 %167, i32* %165, align 4
  br label %168

168:                                              ; preds = %163, %136
  %169 = load i32, i32* %14, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  br label %307

172:                                              ; preds = %168
  %173 = load i32, i32* %12, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %201

175:                                              ; preds = %172
  %176 = load i32, i32* %11, align 4
  %177 = icmp sgt i32 %176, -1
  br i1 %177, label %178, label %184

178:                                              ; preds = %175
  %179 = load i32, i32* %12, align 4
  %180 = load i32, i32* %11, align 4
  %181 = load i32, i32* %13, align 4
  %182 = add nsw i32 %180, %181
  %183 = icmp eq i32 %179, %182
  br i1 %183, label %201, label %184

184:                                              ; preds = %178, %175
  %185 = load i32, i32* %9, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %196, label %187

187:                                              ; preds = %184
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 2
  %190 = load i8*, i8** %189, align 8
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %190, i64 %194
  store i8 58, i8* %195, align 1
  br label %196

196:                                              ; preds = %187, %184
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %198, align 4
  br label %201

201:                                              ; preds = %196, %178, %172
  %202 = load i32, i32* %15, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %245

204:                                              ; preds = %201
  %205 = load i32, i32* %12, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i64 0, i64 %206
  %208 = load i64, i64* %207, align 8
  %209 = trunc i64 %208 to i32
  store i32 %209, i32* %16, align 4
  %210 = load i32, i32* %16, align 4
  %211 = shl i32 %210, 16
  store i32 %211, i32* %16, align 4
  %212 = load i32, i32* %12, align 4
  %213 = add nsw i32 %212, 1
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i64 0, i64 %214
  %216 = load i64, i64* %215, align 8
  %217 = load i32, i32* %16, align 4
  %218 = sext i32 %217 to i64
  %219 = add nsw i64 %218, %216
  %220 = trunc i64 %219 to i32
  store i32 %220, i32* %16, align 4
  %221 = load i32, i32* %9, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %234, label %223

223:                                              ; preds = %204
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 2
  %226 = load i8*, i8** %225, align 8
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8, i8* %226, i64 %230
  %232 = load i32, i32* %16, align 4
  %233 = call i32 @ui2ipv4(i8* %231, i32 %232)
  store i32 %233, i32* %17, align 4
  br label %237

234:                                              ; preds = %204
  %235 = load i32, i32* %16, align 4
  %236 = call i32 @ui2ipv4(i8* null, i32 %235)
  store i32 %236, i32* %17, align 4
  br label %237

237:                                              ; preds = %234, %223
  %238 = load i32, i32* %17, align 4
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = add nsw i32 %241, %238
  store i32 %242, i32* %240, align 4
  %243 = load i32, i32* %12, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %12, align 4
  br label %306

245:                                              ; preds = %201
  %246 = load i32, i32* %12, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i64 0, i64 %247
  %249 = load i64, i64* %248, align 8
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %251, label %268

251:                                              ; preds = %245
  %252 = load i32, i32* %9, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %263, label %254

254:                                              ; preds = %251
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 2
  %257 = load i8*, i8** %256, align 8
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i8, i8* %257, i64 %261
  store i8 48, i8* %262, align 1
  br label %263

263:                                              ; preds = %254, %251
  %264 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %265, align 4
  br label %305

268:                                              ; preds = %245
  %269 = load i32, i32* %9, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %291, label %271

271:                                              ; preds = %268
  %272 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i32 0, i32 2
  %274 = load i8*, i8** %273, align 8
  %275 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i8, i8* %274, i64 %278
  %280 = load i32, i32* %12, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i64 0, i64 %281
  %283 = load i64, i64* %282, align 8
  %284 = call i64 @sprintfW(i8* %279, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @canonicalize_ipv6address.formatW, i64 0, i64 0), i64 %283)
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = sext i32 %287 to i64
  %289 = add nsw i64 %288, %284
  %290 = trunc i64 %289 to i32
  store i32 %290, i32* %286, align 4
  br label %304

291:                                              ; preds = %268
  %292 = getelementptr inbounds [5 x i8], [5 x i8]* %18, i64 0, i64 0
  %293 = load i32, i32* %12, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i64 0, i64 %294
  %296 = load i64, i64* %295, align 8
  %297 = call i64 @sprintfW(i8* %292, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @canonicalize_ipv6address.formatW, i64 0, i64 0), i64 %296)
  %298 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %299 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = sext i32 %300 to i64
  %302 = add nsw i64 %301, %297
  %303 = trunc i64 %302 to i32
  store i32 %303, i32* %299, align 4
  br label %304

304:                                              ; preds = %291, %271
  br label %305

305:                                              ; preds = %304, %263
  br label %306

306:                                              ; preds = %305, %237
  br label %307

307:                                              ; preds = %306, %171
  %308 = load i32, i32* %12, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %12, align 4
  br label %100

310:                                              ; preds = %100
  %311 = load i32, i32* %9, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %322, label %313

313:                                              ; preds = %310
  %314 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %315 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %314, i32 0, i32 2
  %316 = load i8*, i8** %315, align 8
  %317 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %318 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i8, i8* %316, i64 %320
  store i8 93, i8* %321, align 1
  br label %322

322:                                              ; preds = %313, %310
  %323 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %324 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %324, align 4
  br label %327

327:                                              ; preds = %322, %51
  %328 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %329 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %332 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = sub nsw i32 %330, %333
  %335 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %336 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %335, i32 0, i32 3
  store i32 %334, i32* %336, align 8
  %337 = load i32, i32* %9, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %360, label %339

339:                                              ; preds = %327
  %340 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %341 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %342 = load i32, i32* %8, align 4
  %343 = load i32, i32* %9, align 4
  %344 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %345 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %344, i32 0, i32 2
  %346 = load i8*, i8** %345, align 8
  %347 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %348 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i8, i8* %346, i64 %350
  %352 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %353 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %352, i32 0, i32 3
  %354 = load i32, i32* %353, align 8
  %355 = call i32 @debugstr_wn(i8* %351, i32 %354)
  %356 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %357 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %356, i32 0, i32 3
  %358 = load i32, i32* %357, align 8
  %359 = call i32 (i8*, %struct.TYPE_9__*, %struct.TYPE_10__*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_9__* %340, %struct.TYPE_10__* %341, i32 %342, i32 %343, i32 %355, i32 %358)
  br label %360

360:                                              ; preds = %339, %327
  %361 = load i32, i32* @TRUE, align 4
  store i32 %361, i32* %5, align 4
  br label %362

362:                                              ; preds = %360, %65
  %363 = load i32, i32* %5, align 4
  ret i32 %363
}

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @ipv6_to_number(%struct.TYPE_11__*, i64*) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_9__*, %struct.TYPE_10__*, i32, i32, ...) #1

declare dso_local i32 @compute_elision_location(%struct.TYPE_11__*, i64*, i32*, i32*) #1

declare dso_local i32 @ui2ipv4(i8*, i32) #1

declare dso_local i64 @sprintfW(i8*, i8*, i64) #1

declare dso_local i32 @debugstr_wn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_OLECONVERT_LoadOLE10.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_OLECONVERT_LoadOLE10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_19__*, i8*, i32)* }
%struct.TYPE_18__ = type { i8*, i64, i64, i32, i8*, i32, i32, i8*, i32*, i32, i32 }

@S_OK = common dso_local global i64 0, align 8
@CONVERT10_E_OLESTREAM_GET = common dso_local global i64 0, align 8
@OLESTREAM_ID = common dso_local global i64 0, align 8
@CONVERT10_E_OLESTREAM_FMT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_19__*, %struct.TYPE_18__*, i64)* @OLECONVERT_LoadOLE10 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @OLECONVERT_LoadOLE10(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i64, i64* @S_OK, align 8
  store i64 %11, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 6, i32* %10, align 4
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 8
  store i32* null, i32** %13, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  store i8* null, i8** %15, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %48, %3
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %51

20:                                               ; preds = %16
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i32 (%struct.TYPE_19__*, i8*, i32)*, i32 (%struct.TYPE_19__*, i8*, i32)** %24, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 1
  %29 = bitcast i64* %28 to i8*
  %30 = call i32 %25(%struct.TYPE_19__* %26, i8* %29, i32 8)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %32, 8
  br i1 %33, label %34, label %36

34:                                               ; preds = %20
  %35 = load i64, i64* @CONVERT10_E_OLESTREAM_GET, align 8
  store i64 %35, i64* %8, align 8
  br label %47

36:                                               ; preds = %20
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @OLESTREAM_ID, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i64, i64* @CONVERT10_E_OLESTREAM_FMT, align 8
  store i64 %43, i64* %8, align 8
  br label %46

44:                                               ; preds = %36
  %45 = load i64, i64* @S_OK, align 8
  store i64 %45, i64* %8, align 8
  br label %51

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %46, %34
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %16

51:                                               ; preds = %44, %16
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* @S_OK, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %51
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load i32 (%struct.TYPE_19__*, i8*, i32)*, i32 (%struct.TYPE_19__*, i8*, i32)** %59, align 8
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 2
  %64 = bitcast i64* %63 to i8*
  %65 = call i32 %60(%struct.TYPE_19__* %61, i8* %64, i32 8)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = icmp ne i64 %67, 8
  br i1 %68, label %69, label %71

69:                                               ; preds = %55
  %70 = load i64, i64* @CONVERT10_E_OLESTREAM_GET, align 8
  store i64 %70, i64* %8, align 8
  br label %71

71:                                               ; preds = %69, %55
  br label %72

72:                                               ; preds = %71, %51
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* @S_OK, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %337

76:                                               ; preds = %72
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %336

81:                                               ; preds = %76
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = load i32 (%struct.TYPE_19__*, i8*, i32)*, i32 (%struct.TYPE_19__*, i8*, i32)** %85, align 8
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 3
  %90 = bitcast i32* %89 to i8*
  %91 = call i32 %86(%struct.TYPE_19__* %87, i8* %90, i32 4)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = icmp ne i64 %93, 4
  br i1 %94, label %95, label %97

95:                                               ; preds = %81
  %96 = load i64, i64* @CONVERT10_E_OLESTREAM_GET, align 8
  store i64 %96, i64* %8, align 8
  br label %97

97:                                               ; preds = %95, %81
  %98 = load i64, i64* %8, align 8
  %99 = load i64, i64* @S_OK, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %129

101:                                              ; preds = %97
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %128

106:                                              ; preds = %101
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = load i32 (%struct.TYPE_19__*, i8*, i32)*, i32 (%struct.TYPE_19__*, i8*, i32)** %110, align 8
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 4
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = call i32 %111(%struct.TYPE_19__* %112, i8* %115, i32 %118)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %120, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %106
  %126 = load i64, i64* @CONVERT10_E_OLESTREAM_GET, align 8
  store i64 %126, i64* %8, align 8
  br label %127

127:                                              ; preds = %125, %106
  br label %128

128:                                              ; preds = %127, %101
  br label %129

129:                                              ; preds = %128, %97
  %130 = load i64, i64* %6, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %198

132:                                              ; preds = %129
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  %137 = load i32 (%struct.TYPE_19__*, i8*, i32)*, i32 (%struct.TYPE_19__*, i8*, i32)** %136, align 8
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 5
  %141 = bitcast i32* %140 to i8*
  %142 = call i32 %137(%struct.TYPE_19__* %138, i8* %141, i32 4)
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = icmp ne i64 %144, 4
  br i1 %145, label %146, label %148

146:                                              ; preds = %132
  %147 = load i64, i64* @CONVERT10_E_OLESTREAM_GET, align 8
  store i64 %147, i64* %8, align 8
  br label %148

148:                                              ; preds = %146, %132
  %149 = load i64, i64* %8, align 8
  %150 = load i64, i64* @S_OK, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %197

152:                                              ; preds = %148
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 8
  %156 = icmp slt i32 %155, 1
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 5
  store i32 4, i32* %159, align 8
  br label %160

160:                                              ; preds = %157, %152
  %161 = call i32 (...) @GetProcessHeap()
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 8
  %165 = call i8* @HeapAlloc(i32 %161, i32 0, i32 %164)
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 0
  store i8* %165, i8** %167, align 8
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %194

172:                                              ; preds = %160
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 0
  %177 = load i32 (%struct.TYPE_19__*, i8*, i32)*, i32 (%struct.TYPE_19__*, i8*, i32)** %176, align 8
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 8
  %185 = call i32 %177(%struct.TYPE_19__* %178, i8* %181, i32 %184)
  store i32 %185, i32* %7, align 4
  %186 = load i32, i32* %7, align 4
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 8
  %190 = icmp ne i32 %186, %189
  br i1 %190, label %191, label %193

191:                                              ; preds = %172
  %192 = load i64, i64* @CONVERT10_E_OLESTREAM_GET, align 8
  store i64 %192, i64* %8, align 8
  br label %193

193:                                              ; preds = %191, %172
  br label %196

194:                                              ; preds = %160
  %195 = load i64, i64* @CONVERT10_E_OLESTREAM_GET, align 8
  store i64 %195, i64* %8, align 8
  br label %196

196:                                              ; preds = %194, %193
  br label %197

197:                                              ; preds = %196, %148
  br label %236

198:                                              ; preds = %129
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 0
  %203 = load i32 (%struct.TYPE_19__*, i8*, i32)*, i32 (%struct.TYPE_19__*, i8*, i32)** %202, align 8
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 10
  %207 = bitcast i32* %206 to i8*
  %208 = call i32 %203(%struct.TYPE_19__* %204, i8* %207, i32 4)
  store i32 %208, i32* %7, align 4
  %209 = load i32, i32* %7, align 4
  %210 = sext i32 %209 to i64
  %211 = icmp ne i64 %210, 4
  br i1 %211, label %212, label %214

212:                                              ; preds = %198
  %213 = load i64, i64* @CONVERT10_E_OLESTREAM_GET, align 8
  store i64 %213, i64* %8, align 8
  br label %214

214:                                              ; preds = %212, %198
  %215 = load i64, i64* %8, align 8
  %216 = load i64, i64* @S_OK, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %235

218:                                              ; preds = %214
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 0
  %223 = load i32 (%struct.TYPE_19__*, i8*, i32)*, i32 (%struct.TYPE_19__*, i8*, i32)** %222, align 8
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 9
  %227 = bitcast i32* %226 to i8*
  %228 = call i32 %223(%struct.TYPE_19__* %224, i8* %227, i32 4)
  store i32 %228, i32* %7, align 4
  %229 = load i32, i32* %7, align 4
  %230 = sext i32 %229 to i64
  %231 = icmp ne i64 %230, 4
  br i1 %231, label %232, label %234

232:                                              ; preds = %218
  %233 = load i64, i64* @CONVERT10_E_OLESTREAM_GET, align 8
  store i64 %233, i64* %8, align 8
  br label %234

234:                                              ; preds = %232, %218
  br label %235

235:                                              ; preds = %234, %214
  br label %236

236:                                              ; preds = %235, %197
  %237 = load i64, i64* %8, align 8
  %238 = load i64, i64* @S_OK, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %257

240:                                              ; preds = %236
  %241 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %241, i32 0, i32 0
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 0
  %245 = load i32 (%struct.TYPE_19__*, i8*, i32)*, i32 (%struct.TYPE_19__*, i8*, i32)** %244, align 8
  %246 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 6
  %249 = bitcast i32* %248 to i8*
  %250 = call i32 %245(%struct.TYPE_19__* %246, i8* %249, i32 4)
  store i32 %250, i32* %7, align 4
  %251 = load i32, i32* %7, align 4
  %252 = sext i32 %251 to i64
  %253 = icmp ne i64 %252, 4
  br i1 %253, label %254, label %256

254:                                              ; preds = %240
  %255 = load i64, i64* @CONVERT10_E_OLESTREAM_GET, align 8
  store i64 %255, i64* %8, align 8
  br label %256

256:                                              ; preds = %254, %240
  br label %257

257:                                              ; preds = %256, %236
  %258 = load i64, i64* %8, align 8
  %259 = load i64, i64* @S_OK, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %286

261:                                              ; preds = %257
  %262 = load i64, i64* %6, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %285, label %264

264:                                              ; preds = %261
  %265 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %265, i32 0, i32 6
  %267 = load i32, i32* %266, align 4
  %268 = sub nsw i32 %267, 8
  store i32 %268, i32* %266, align 4
  %269 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %269, i32 0, i32 0
  %271 = load %struct.TYPE_17__*, %struct.TYPE_17__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %271, i32 0, i32 0
  %273 = load i32 (%struct.TYPE_19__*, i8*, i32)*, i32 (%struct.TYPE_19__*, i8*, i32)** %272, align 8
  %274 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %275 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %275, i32 0, i32 7
  %277 = load i8*, i8** %276, align 8
  %278 = call i32 %273(%struct.TYPE_19__* %274, i8* %277, i32 8)
  store i32 %278, i32* %7, align 4
  %279 = load i32, i32* %7, align 4
  %280 = sext i32 %279 to i64
  %281 = icmp ne i64 %280, 8
  br i1 %281, label %282, label %284

282:                                              ; preds = %264
  %283 = load i64, i64* @CONVERT10_E_OLESTREAM_GET, align 8
  store i64 %283, i64* %8, align 8
  br label %284

284:                                              ; preds = %282, %264
  br label %285

285:                                              ; preds = %284, %261
  br label %286

286:                                              ; preds = %285, %257
  %287 = load i64, i64* %8, align 8
  %288 = load i64, i64* @S_OK, align 8
  %289 = icmp eq i64 %287, %288
  br i1 %289, label %290, label %335

290:                                              ; preds = %286
  %291 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %291, i32 0, i32 6
  %293 = load i32, i32* %292, align 4
  %294 = icmp sgt i32 %293, 0
  br i1 %294, label %295, label %334

295:                                              ; preds = %290
  %296 = call i32 (...) @GetProcessHeap()
  %297 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %297, i32 0, i32 6
  %299 = load i32, i32* %298, align 4
  %300 = call i8* @HeapAlloc(i32 %296, i32 0, i32 %299)
  %301 = bitcast i8* %300 to i32*
  %302 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %302, i32 0, i32 8
  store i32* %301, i32** %303, align 8
  %304 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %304, i32 0, i32 8
  %306 = load i32*, i32** %305, align 8
  %307 = icmp ne i32* %306, null
  br i1 %307, label %308, label %331

308:                                              ; preds = %295
  %309 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %310 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %309, i32 0, i32 0
  %311 = load %struct.TYPE_17__*, %struct.TYPE_17__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %311, i32 0, i32 0
  %313 = load i32 (%struct.TYPE_19__*, i8*, i32)*, i32 (%struct.TYPE_19__*, i8*, i32)** %312, align 8
  %314 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %315 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %315, i32 0, i32 8
  %317 = load i32*, i32** %316, align 8
  %318 = bitcast i32* %317 to i8*
  %319 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %319, i32 0, i32 6
  %321 = load i32, i32* %320, align 4
  %322 = call i32 %313(%struct.TYPE_19__* %314, i8* %318, i32 %321)
  store i32 %322, i32* %7, align 4
  %323 = load i32, i32* %7, align 4
  %324 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %325 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %324, i32 0, i32 6
  %326 = load i32, i32* %325, align 4
  %327 = icmp ne i32 %323, %326
  br i1 %327, label %328, label %330

328:                                              ; preds = %308
  %329 = load i64, i64* @CONVERT10_E_OLESTREAM_GET, align 8
  store i64 %329, i64* %8, align 8
  br label %330

330:                                              ; preds = %328, %308
  br label %333

331:                                              ; preds = %295
  %332 = load i64, i64* @CONVERT10_E_OLESTREAM_GET, align 8
  store i64 %332, i64* %8, align 8
  br label %333

333:                                              ; preds = %331, %330
  br label %334

334:                                              ; preds = %333, %290
  br label %335

335:                                              ; preds = %334, %286
  br label %336

336:                                              ; preds = %335, %76
  br label %337

337:                                              ; preds = %336, %72
  %338 = load i64, i64* %8, align 8
  ret i64 %338
}

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

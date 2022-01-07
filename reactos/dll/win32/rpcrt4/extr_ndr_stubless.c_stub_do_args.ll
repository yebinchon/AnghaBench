; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_stubless.c_stub_do_args.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_stubless.c_stub_do_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i8*, i32 (i8*)*, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i8* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_23__, %struct.TYPE_20__ }
%struct.TYPE_23__ = type { i32, i64, i32, i32, i32, i32, i64 }
%struct.TYPE_20__ = type { i64, i8 }

@.str = private unnamed_addr constant [34 x i8] c"param[%d]: %p -> %p type %02x %s\0A\00", align 1
@FC_BIND_CONTEXT = common dso_local global i8 0, align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@RPC_S_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"\09memory addr (after): %p -> %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_22__*, i64, i32, i16)* @stub_do_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @stub_do_args(%struct.TYPE_22__* %0, i64 %1, i32 %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i16 %3, i16* %8, align 2
  %16 = load i64, i64* %6, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %17, %struct.TYPE_21__** %9, align 8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %328, %4
  %19 = load i32, i32* %10, align 4
  %20 = load i16, i16* %8, align 2
  %21 = zext i16 %20 to i32
  %22 = icmp ult i32 %19, %21
  br i1 %22, label %23, label %331

23:                                               ; preds = %18
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %26, i64 %33
  store i8* %34, i8** %12, align 8
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i8, i8* %39, i64 %46
  store i8* %47, i8** %13, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i8*, i8** %12, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = bitcast i8* %50 to i8**
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 6
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %23
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 1
  %68 = load i8, i8* %67, align 8
  %69 = zext i8 %68 to i32
  br label %74

70:                                               ; preds = %23
  %71 = load i8*, i8** %13, align 8
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  br label %74

74:                                               ; preds = %70, %61
  %75 = phi i32 [ %69, %61 ], [ %73, %70 ]
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %77 = load i32, i32* %10, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 1
  %81 = call i32 @debugstr_PROC_PF(%struct.TYPE_23__* byval(%struct.TYPE_23__) align 8 %80)
  %82 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %48, i8* %49, i8* %52, i32 %75, i32 %81)
  %83 = load i32, i32* %7, align 4
  switch i32 %83, label %307 [
    i32 130, label %84
    i32 129, label %111
    i32 132, label %129
    i32 131, label %188
    i32 128, label %240
    i32 133, label %280
  ]

84:                                               ; preds = %74
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %86 = load i32, i32* %10, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %84
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %95 = load i32, i32* %10, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %93, %84
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %104 = load i8*, i8** %12, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %106 = load i32, i32* %10, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i64 %107
  %109 = call i32 @call_marshaller(%struct.TYPE_22__* %103, i8* %104, %struct.TYPE_21__* %108)
  br label %110

110:                                              ; preds = %102, %93
  br label %310

111:                                              ; preds = %74
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %113 = load i32, i32* %10, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %111
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %122 = load i8*, i8** %12, align 8
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %124 = load i32, i32* %10, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i64 %125
  %127 = call i32 @call_freer(%struct.TYPE_22__* %121, i8* %122, %struct.TYPE_21__* %126)
  br label %128

128:                                              ; preds = %120, %111
  br label %310

129:                                              ; preds = %74
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %131 = load i32, i32* %10, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %129
  %139 = call i32 (...) @GetProcessHeap()
  %140 = load i8*, i8** %12, align 8
  %141 = bitcast i8* %140 to i8**
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @HeapFree(i32 %139, i32 0, i8* %142)
  br label %187

144:                                              ; preds = %129
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %146 = load i32, i32* %10, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 1
  %150 = call i32 @param_needs_alloc(%struct.TYPE_23__* byval(%struct.TYPE_23__) align 8 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %186

152:                                              ; preds = %144
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %154 = load i32, i32* %10, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %170

161:                                              ; preds = %152
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %163 = load i32, i32* %10, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %186

170:                                              ; preds = %161, %152
  %171 = load i8*, i8** %13, align 8
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i32
  %174 = load i8, i8* @FC_BIND_CONTEXT, align 1
  %175 = zext i8 %174 to i32
  %176 = icmp ne i32 %173, %175
  br i1 %176, label %177, label %185

177:                                              ; preds = %170
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 1
  %180 = load i32 (i8*)*, i32 (i8*)** %179, align 8
  %181 = load i8*, i8** %12, align 8
  %182 = bitcast i8* %181 to i8**
  %183 = load i8*, i8** %182, align 8
  %184 = call i32 %180(i8* %183)
  br label %185

185:                                              ; preds = %177, %170
  br label %186

186:                                              ; preds = %185, %161, %144
  br label %187

187:                                              ; preds = %186, %138
  br label %310

188:                                              ; preds = %74
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %190 = load i32, i32* %10, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 1
  %194 = call i32 @param_needs_alloc(%struct.TYPE_23__* byval(%struct.TYPE_23__) align 8 %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %239

196:                                              ; preds = %188
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %198 = load i32, i32* %10, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %239, label %205

205:                                              ; preds = %196
  %206 = load i8*, i8** %13, align 8
  %207 = load i8, i8* %206, align 1
  %208 = zext i8 %207 to i32
  %209 = load i8, i8* @FC_BIND_CONTEXT, align 1
  %210 = zext i8 %209 to i32
  %211 = icmp eq i32 %208, %210
  br i1 %211, label %212, label %220

212:                                              ; preds = %205
  %213 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %214 = load i8*, i8** %13, align 8
  %215 = call i32 @NdrContextHandleInitialize(%struct.TYPE_22__* %213, i8* %214)
  store i32 %215, i32* %14, align 4
  %216 = load i32, i32* %14, align 4
  %217 = call i8* @NDRSContextValue(i32 %216)
  %218 = load i8*, i8** %12, align 8
  %219 = bitcast i8* %218 to i8**
  store i8* %217, i8** %219, align 8
  br label %238

220:                                              ; preds = %205
  %221 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %222 = load i8*, i8** %13, align 8
  %223 = call i32 @calc_arg_size(%struct.TYPE_22__* %221, i8* %222)
  store i32 %223, i32* %15, align 4
  %224 = load i32, i32* %15, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %237

226:                                              ; preds = %220
  %227 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %228 = load i32, i32* %15, align 4
  %229 = call i8* @NdrAllocate(%struct.TYPE_22__* %227, i32 %228)
  %230 = load i8*, i8** %12, align 8
  %231 = bitcast i8* %230 to i8**
  store i8* %229, i8** %231, align 8
  %232 = load i8*, i8** %12, align 8
  %233 = bitcast i8* %232 to i8**
  %234 = load i8*, i8** %233, align 8
  %235 = load i32, i32* %15, align 4
  %236 = call i32 @memset(i8* %234, i32 0, i32 %235)
  br label %237

237:                                              ; preds = %226, %220
  br label %238

238:                                              ; preds = %237, %212
  br label %239

239:                                              ; preds = %238, %196, %188
  br label %310

240:                                              ; preds = %74
  %241 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %242 = load i32, i32* %10, align 4
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %263

249:                                              ; preds = %240
  %250 = call i32 (...) @GetProcessHeap()
  %251 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %252 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %253 = load i32, i32* %10, align 4
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = mul nsw i32 %258, 8
  %260 = call i8* @HeapAlloc(i32 %250, i32 %251, i32 %259)
  %261 = load i8*, i8** %12, align 8
  %262 = bitcast i8* %261 to i8**
  store i8* %260, i8** %262, align 8
  br label %263

263:                                              ; preds = %249, %240
  %264 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %265 = load i32, i32* %10, align 4
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %279

272:                                              ; preds = %263
  %273 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %274 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %275 = load i32, i32* %10, align 4
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %274, i64 %276
  %278 = call i32 @call_unmarshaller(%struct.TYPE_22__* %273, i8** %12, %struct.TYPE_21__* %277, i32 0)
  br label %279

279:                                              ; preds = %272, %263
  br label %310

280:                                              ; preds = %74
  %281 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %282 = load i32, i32* %10, align 4
  %283 = zext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %281, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 8
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %298, label %289

289:                                              ; preds = %280
  %290 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %291 = load i32, i32* %10, align 4
  %292 = zext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %290, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %294, i32 0, i32 1
  %296 = load i64, i64* %295, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %306

298:                                              ; preds = %289, %280
  %299 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %300 = load i8*, i8** %12, align 8
  %301 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %302 = load i32, i32* %10, align 4
  %303 = zext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %301, i64 %303
  %305 = call i32 @call_buffer_sizer(%struct.TYPE_22__* %299, i8* %300, %struct.TYPE_21__* %304)
  br label %306

306:                                              ; preds = %298, %289
  br label %310

307:                                              ; preds = %74
  %308 = load i32, i32* @RPC_S_INTERNAL_ERROR, align 4
  %309 = call i32 @RpcRaiseException(i32 %308)
  br label %310

310:                                              ; preds = %307, %306, %279, %239, %187, %128, %110
  %311 = load i8*, i8** %12, align 8
  %312 = load i8*, i8** %12, align 8
  %313 = bitcast i8* %312 to i8**
  %314 = load i8*, i8** %313, align 8
  %315 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %311, i8* %314)
  %316 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %317 = load i32, i32* %10, align 4
  %318 = zext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %316, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %320, i32 0, i32 1
  %322 = load i64, i64* %321, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %327

324:                                              ; preds = %310
  %325 = load i8*, i8** %12, align 8
  %326 = bitcast i8* %325 to i32*
  store i32* %326, i32** %11, align 8
  br label %327

327:                                              ; preds = %324, %310
  br label %328

328:                                              ; preds = %327
  %329 = load i32, i32* %10, align 4
  %330 = add i32 %329, 1
  store i32 %330, i32* %10, align 4
  br label %18

331:                                              ; preds = %18
  %332 = load i32*, i32** %11, align 8
  ret i32* %332
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @debugstr_PROC_PF(%struct.TYPE_23__* byval(%struct.TYPE_23__) align 8) #1

declare dso_local i32 @call_marshaller(%struct.TYPE_22__*, i8*, %struct.TYPE_21__*) #1

declare dso_local i32 @call_freer(%struct.TYPE_22__*, i8*, %struct.TYPE_21__*) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @param_needs_alloc(%struct.TYPE_23__* byval(%struct.TYPE_23__) align 8) #1

declare dso_local i32 @NdrContextHandleInitialize(%struct.TYPE_22__*, i8*) #1

declare dso_local i8* @NDRSContextValue(i32) #1

declare dso_local i32 @calc_arg_size(%struct.TYPE_22__*, i8*) #1

declare dso_local i8* @NdrAllocate(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @call_unmarshaller(%struct.TYPE_22__*, i8**, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @call_buffer_sizer(%struct.TYPE_22__*, i8*, %struct.TYPE_21__*) #1

declare dso_local i32 @RpcRaiseException(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_heap.c_test_HeapCreate.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_heap.c_test_HeapCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"GetSystemInfo should return a valid page size\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"heap %p not 64K aligned\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"HeapCreate allocated more Ram than it should have\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"HeapAlloc failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"HeapAlloc should return a big enough memory block\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [55 x i8] c"HeapAlloc should have zeroed out its allocated memory\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"HeapAlloc should return NULL\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"HeapFree didn't pass successfully\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"HeapReAlloc failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"HeapReAlloc should have zeroed out its allocated memory\0A\00", align 1
@HEAP_REALLOC_IN_PLACE_ONLY = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [54 x i8] c"HeapReAlloc didn't honour HEAP_REALLOC_IN_PLACE_ONLY\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"HeapFree failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"Reserved memory\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"The size of the 0-length buffer\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Freed the 0-length buffer\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"HeapDestroy failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_HeapCreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_HeapCreate() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = call i32 @GetSystemInfo(%struct.TYPE_3__* %1)
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sgt i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 10, %19
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  %22 = mul nsw i32 2, %21
  %23 = load i32, i32* %2, align 4
  %24 = mul nsw i32 5, %23
  %25 = call i64 @HeapCreate(i32 0, i32 %22, i32 %24)
  store i64 %25, i64* %3, align 8
  %26 = load i64, i64* %3, align 8
  %27 = trunc i64 %26 to i32
  %28 = and i32 %27, 65535
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = load i64, i64* %3, align 8
  %33 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  %34 = load i64, i64* %3, align 8
  %35 = load i32, i32* %2, align 4
  %36 = mul nsw i32 5, %35
  %37 = add nsw i32 %36, 1
  %38 = call i64* @HeapAlloc(i64 %34, i32 0, i32 %37)
  store i64* %38, i64** %4, align 8
  %39 = load i64*, i64** %4, align 8
  %40 = icmp eq i64* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i64, i64* %3, align 8
  %44 = load i64*, i64** %4, align 8
  %45 = call i32 @HeapFree(i64 %43, i32 0, i64* %44)
  %46 = load i64, i64* %3, align 8
  %47 = load i32, i32* %2, align 4
  %48 = call i64* @HeapAlloc(i64 %46, i32 0, i32 %47)
  store i64* %48, i64** %4, align 8
  %49 = load i64*, i64** %4, align 8
  %50 = icmp ne i64* %49, null
  %51 = zext i1 %50 to i32
  %52 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i64*, i64** %4, align 8
  %54 = icmp ne i64* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %0
  %56 = load i64, i64* %3, align 8
  %57 = load i64*, i64** %4, align 8
  %58 = call i32 @HeapSize(i64 %56, i32 0, i64* %57)
  %59 = load i32, i32* %2, align 4
  %60 = icmp sge i32 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  br label %63

63:                                               ; preds = %55, %0
  %64 = load i64, i64* %3, align 8
  %65 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %66 = load i32, i32* %2, align 4
  %67 = call i64* @HeapAlloc(i64 %64, i32 %65, i32 %66)
  store i64* %67, i64** %7, align 8
  %68 = load i64*, i64** %7, align 8
  %69 = icmp ne i64* %68, null
  %70 = zext i1 %69 to i32
  %71 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %72 = load i64*, i64** %7, align 8
  %73 = icmp ne i64* %72, null
  br i1 %73, label %74, label %106

74:                                               ; preds = %63
  %75 = load i64, i64* %3, align 8
  %76 = load i64*, i64** %7, align 8
  %77 = call i32 @HeapSize(i64 %75, i32 0, i64* %76)
  %78 = load i32, i32* %2, align 4
  %79 = icmp sge i32 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  %82 = load i64, i64* @FALSE, align 8
  store i64 %82, i64* %10, align 8
  store i32 0, i32* %9, align 4
  br label %83

83:                                               ; preds = %97, %74
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %2, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %100

87:                                               ; preds = %83
  %88 = load i64*, i64** %7, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = load i64, i64* @TRUE, align 8
  store i64 %95, i64* %10, align 8
  br label %96

96:                                               ; preds = %94, %87
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %83

100:                                              ; preds = %83
  %101 = load i64, i64* %10, align 8
  %102 = icmp ne i64 %101, 0
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0))
  br label %106

106:                                              ; preds = %100, %63
  %107 = load i64, i64* %3, align 8
  %108 = load i32, i32* %2, align 4
  %109 = mul nsw i32 5, %108
  %110 = call i64* @HeapAlloc(i64 %107, i32 0, i32 %109)
  store i64* %110, i64** %6, align 8
  %111 = load i64*, i64** %6, align 8
  %112 = icmp eq i64* %111, null
  %113 = zext i1 %112 to i32
  %114 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %115 = load i64*, i64** %6, align 8
  %116 = icmp ne i64* %115, null
  br i1 %116, label %117, label %122

117:                                              ; preds = %106
  %118 = load i64, i64* %3, align 8
  %119 = load i64*, i64** %6, align 8
  %120 = call i32 @HeapFree(i64 %118, i32 0, i64* %119)
  %121 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  br label %122

122:                                              ; preds = %117, %106
  %123 = load i64, i64* %3, align 8
  %124 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %125 = load i64*, i64** %7, align 8
  %126 = load i32, i32* %2, align 4
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = mul nsw i32 5, %128
  %130 = add nsw i32 %126, %129
  %131 = call i64* @HeapReAlloc(i64 %123, i32 %124, i64* %125, i32 %130)
  store i64* %131, i64** %8, align 8
  %132 = load i64*, i64** %8, align 8
  %133 = icmp ne i64* %132, null
  %134 = zext i1 %133 to i32
  %135 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %136 = load i64*, i64** %8, align 8
  %137 = icmp ne i64* %136, null
  br i1 %137, label %138, label %178

138:                                              ; preds = %122
  %139 = load i64, i64* %3, align 8
  %140 = load i64*, i64** %8, align 8
  %141 = call i32 @HeapSize(i64 %139, i32 0, i64* %140)
  %142 = load i32, i32* %2, align 4
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = mul nsw i32 5, %144
  %146 = add nsw i32 %142, %145
  %147 = icmp sge i32 %141, %146
  %148 = zext i1 %147 to i32
  %149 = call i32 (i32, i8*, ...) @ok(i32 %148, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %150 = load i64, i64* @FALSE, align 8
  store i64 %150, i64* %10, align 8
  store i32 0, i32* %9, align 4
  br label %151

151:                                              ; preds = %169, %138
  %152 = load i32, i32* %9, align 4
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = mul nsw i32 5, %154
  %156 = icmp slt i32 %152, %155
  br i1 %156, label %157, label %172

157:                                              ; preds = %151
  %158 = load i64*, i64** %8, align 8
  %159 = load i32, i32* %2, align 4
  %160 = load i32, i32* %9, align 4
  %161 = add nsw i32 %159, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %158, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %157
  %167 = load i64, i64* @TRUE, align 8
  store i64 %167, i64* %10, align 8
  br label %168

168:                                              ; preds = %166, %157
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %9, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %9, align 4
  br label %151

172:                                              ; preds = %151
  %173 = load i64, i64* %10, align 8
  %174 = icmp ne i64 %173, 0
  %175 = xor i1 %174, true
  %176 = zext i1 %175 to i32
  %177 = call i32 (i32, i8*, ...) @ok(i32 %176, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i64 0, i64 0))
  br label %178

178:                                              ; preds = %172, %122
  %179 = load i64, i64* @FALSE, align 8
  store i64 %179, i64* %10, align 8
  %180 = load i64, i64* %3, align 8
  %181 = load i32, i32* @HEAP_REALLOC_IN_PLACE_ONLY, align 4
  %182 = load i64*, i64** %4, align 8
  %183 = load i32, i32* %2, align 4
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %183, %185
  %187 = call i64* @HeapReAlloc(i64 %180, i32 %181, i64* %182, i32 %186)
  store i64* %187, i64** %5, align 8
  %188 = load i64*, i64** %5, align 8
  %189 = icmp ne i64* %188, null
  br i1 %189, label %190, label %197

190:                                              ; preds = %178
  %191 = load i64*, i64** %5, align 8
  %192 = load i64*, i64** %4, align 8
  %193 = icmp ne i64* %191, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %190
  %195 = load i64, i64* @TRUE, align 8
  store i64 %195, i64* %10, align 8
  br label %196

196:                                              ; preds = %194, %190
  br label %197

197:                                              ; preds = %196, %178
  %198 = load i64*, i64** %5, align 8
  %199 = icmp eq i64* %198, null
  br i1 %199, label %204, label %200

200:                                              ; preds = %197
  %201 = load i64, i64* %10, align 8
  %202 = icmp ne i64 %201, 0
  %203 = xor i1 %202, true
  br label %204

204:                                              ; preds = %200, %197
  %205 = phi i1 [ true, %197 ], [ %203, %200 ]
  %206 = zext i1 %205 to i32
  %207 = call i32 (i32, i8*, ...) @ok(i32 %206, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0))
  %208 = load i64*, i64** %5, align 8
  %209 = icmp ne i64* %208, null
  br i1 %209, label %210, label %215

210:                                              ; preds = %204
  %211 = load i64, i64* %3, align 8
  %212 = load i64*, i64** %5, align 8
  %213 = call i32 @HeapFree(i64 %211, i32 0, i64* %212)
  %214 = call i32 (i32, i8*, ...) @ok(i32 %213, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  br label %220

215:                                              ; preds = %204
  %216 = load i64, i64* %3, align 8
  %217 = load i64*, i64** %4, align 8
  %218 = call i32 @HeapFree(i64 %216, i32 0, i64* %217)
  %219 = call i32 (i32, i8*, ...) @ok(i32 %218, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  br label %220

220:                                              ; preds = %215, %210
  %221 = load i64*, i64** %8, align 8
  %222 = icmp ne i64* %221, null
  br i1 %222, label %223, label %228

223:                                              ; preds = %220
  %224 = load i64, i64* %3, align 8
  %225 = load i64*, i64** %8, align 8
  %226 = call i32 @HeapFree(i64 %224, i32 0, i64* %225)
  %227 = call i32 (i32, i8*, ...) @ok(i32 %226, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  br label %233

228:                                              ; preds = %220
  %229 = load i64, i64* %3, align 8
  %230 = load i64*, i64** %7, align 8
  %231 = call i32 @HeapFree(i64 %229, i32 0, i64* %230)
  %232 = call i32 (i32, i8*, ...) @ok(i32 %231, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  br label %233

233:                                              ; preds = %228, %223
  %234 = load i64, i64* %3, align 8
  %235 = call i64* @HeapAlloc(i64 %234, i32 0, i32 0)
  store i64* %235, i64** %4, align 8
  %236 = load i64*, i64** %4, align 8
  %237 = icmp ne i64* %236, null
  %238 = zext i1 %237 to i32
  %239 = call i32 (i32, i8*, ...) @ok(i32 %238, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  %240 = load i64, i64* %3, align 8
  %241 = load i64*, i64** %4, align 8
  %242 = call i32 @HeapSize(i64 %240, i32 0, i64* %241)
  store i32 %242, i32* %11, align 4
  %243 = load i32, i32* %11, align 4
  %244 = icmp ult i32 %243, -1
  %245 = zext i1 %244 to i32
  %246 = call i32 (i32, i8*, ...) @ok(i32 %245, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0))
  %247 = load i64, i64* %3, align 8
  %248 = load i64*, i64** %4, align 8
  %249 = call i32 @HeapFree(i64 %247, i32 0, i64* %248)
  %250 = call i32 (i32, i8*, ...) @ok(i32 %249, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  %251 = load i64, i64* %3, align 8
  %252 = call i32 @HeapDestroy(i64 %251)
  %253 = call i32 (i32, i8*, ...) @ok(i32 %252, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0))
  ret void
}

declare dso_local i32 @GetSystemInfo(%struct.TYPE_3__*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @HeapCreate(i32, i32, i32) #1

declare dso_local i64* @HeapAlloc(i64, i32, i32) #1

declare dso_local i32 @HeapFree(i64, i32, i64*) #1

declare dso_local i32 @HeapSize(i64, i32, i64*) #1

declare dso_local i64* @HeapReAlloc(i64, i32, i64*, i32) #1

declare dso_local i32 @HeapDestroy(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

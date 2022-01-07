; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winspool/extr_info.c_test_GetPrinterDataEx.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winspool/extr_info.c_test_GetPrinterDataEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Unable to open the printserver: %d\0A\00", align 1
@defaultspooldirectory = common dso_local global i32 0, align 4
@REG_SZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [78 x i8] c"got %d, type %d, needed: %d and '%s' (expected ERROR_SUCCESS, REG_SZ and %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"PrinterDriverData\00", align 1
@does_not_exist = common dso_local global i8* null, align 8
@ERROR_MORE_DATA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"got %d, needed: %d (expected ERROR_MORE_DATA and %d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"ClosePrinter error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetPrinterDataEx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetPrinterDataEx() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %9 = load i32, i32* @MAX_PATH, align 4
  %10 = add nsw i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i64, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = call i32 @SetLastError(i32 -559038737)
  %15 = call i32 @OpenPrinterA(i32* null, i32* %1, i32* null)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %0
  %19 = call i32 (...) @GetLastError()
  %20 = call i32 (i8*, ...) @win_skip(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 1, i32* %8, align 4
  br label %271

21:                                               ; preds = %0
  %22 = mul nuw i64 8, %11
  %23 = trunc i64 %22 to i32
  %24 = call i32 @memset(i64* %13, i8 signext 35, i32 %23)
  %25 = load i32, i32* @MAX_PATH, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %13, i64 %26
  store i64 0, i64* %27, align 8
  store i32 -559038737, i32* %3, align 4
  store i32 -559038737, i32* %6, align 4
  %28 = call i32 @SetLastError(i32 -559038737)
  %29 = load i32, i32* %1, align 4
  %30 = load i32, i32* @defaultspooldirectory, align 4
  %31 = bitcast i64* %13 to i32*
  %32 = mul nuw i64 8, %11
  %33 = trunc i64 %32 to i32
  %34 = call i32 @pGetPrinterDataExA(i32 %29, i8* null, i32 %30, i32* %3, i32* %31, i32 %33, i32* %6)
  store i32 %34, i32* %2, align 4
  %35 = call i32 @lstrlenA(i64* %13)
  %36 = sext i32 %35 to i64
  %37 = add i64 %36, 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %2, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %58, label %41

41:                                               ; preds = %21
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @REG_SZ, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %56, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 4
  %55 = icmp eq i64 %51, %54
  br label %56

56:                                               ; preds = %49, %45
  %57 = phi i1 [ true, %45 ], [ %55, %49 ]
  br label %58

58:                                               ; preds = %56, %41, %21
  %59 = phi i1 [ false, %41 ], [ false, %21 ], [ %57, %56 ]
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %2, align 4
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 (i32, i8*, i32, ...) @ok(i32 %60, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %62, i32 %63, i64* %13, i32 %64)
  %66 = mul nuw i64 8, %11
  %67 = trunc i64 %66 to i32
  %68 = call i32 @memset(i64* %13, i8 signext 35, i32 %67)
  %69 = load i32, i32* @MAX_PATH, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %13, i64 %70
  store i64 0, i64* %71, align 8
  store i32 -559038737, i32* %3, align 4
  store i32 -559038737, i32* %6, align 4
  %72 = call i32 @SetLastError(i32 -559038737)
  %73 = load i32, i32* %1, align 4
  %74 = load i32, i32* @defaultspooldirectory, align 4
  %75 = bitcast i64* %13 to i32*
  %76 = mul nuw i64 8, %11
  %77 = trunc i64 %76 to i32
  %78 = call i32 @pGetPrinterDataExA(i32 %73, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32* %3, i32* %75, i32 %77, i32* %6)
  store i32 %78, i32* %2, align 4
  %79 = call i32 @lstrlenA(i64* %13)
  %80 = sext i32 %79 to i64
  %81 = add i64 %80, 8
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %2, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %102, label %85

85:                                               ; preds = %58
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* @REG_SZ, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %102

89:                                               ; preds = %85
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %100, label %93

93:                                               ; preds = %89
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = mul i64 %97, 4
  %99 = icmp eq i64 %95, %98
  br label %100

100:                                              ; preds = %93, %89
  %101 = phi i1 [ true, %89 ], [ %99, %93 ]
  br label %102

102:                                              ; preds = %100, %85, %58
  %103 = phi i1 [ false, %85 ], [ false, %58 ], [ %101, %100 ]
  %104 = zext i1 %103 to i32
  %105 = load i32, i32* %2, align 4
  %106 = load i32, i32* %3, align 4
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i32 (i32, i8*, i32, ...) @ok(i32 %104, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 %105, i32 %106, i32 %107, i64* %13, i32 %108)
  %110 = mul nuw i64 8, %11
  %111 = trunc i64 %110 to i32
  %112 = call i32 @memset(i64* %13, i8 signext 35, i32 %111)
  %113 = load i32, i32* @MAX_PATH, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %13, i64 %114
  store i64 0, i64* %115, align 8
  store i32 -559038737, i32* %3, align 4
  store i32 -559038737, i32* %6, align 4
  %116 = call i32 @SetLastError(i32 -559038737)
  %117 = load i32, i32* %1, align 4
  %118 = load i32, i32* @defaultspooldirectory, align 4
  %119 = bitcast i64* %13 to i32*
  %120 = mul nuw i64 8, %11
  %121 = trunc i64 %120 to i32
  %122 = call i32 @pGetPrinterDataExA(i32 %117, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %118, i32* %3, i32* %119, i32 %121, i32* %6)
  store i32 %122, i32* %2, align 4
  %123 = call i32 @lstrlenA(i64* %13)
  %124 = sext i32 %123 to i64
  %125 = add i64 %124, 8
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %2, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %146, label %129

129:                                              ; preds = %102
  %130 = load i32, i32* %3, align 4
  %131 = load i32, i32* @REG_SZ, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %146

133:                                              ; preds = %129
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* %7, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %144, label %137

137:                                              ; preds = %133
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = mul i64 %141, 4
  %143 = icmp eq i64 %139, %142
  br label %144

144:                                              ; preds = %137, %133
  %145 = phi i1 [ true, %133 ], [ %143, %137 ]
  br label %146

146:                                              ; preds = %144, %129, %102
  %147 = phi i1 [ false, %129 ], [ false, %102 ], [ %145, %144 ]
  %148 = zext i1 %147 to i32
  %149 = load i32, i32* %2, align 4
  %150 = load i32, i32* %3, align 4
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* %7, align 4
  %153 = call i32 (i32, i8*, i32, ...) @ok(i32 %148, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 %149, i32 %150, i32 %151, i64* %13, i32 %152)
  %154 = mul nuw i64 8, %11
  %155 = trunc i64 %154 to i32
  %156 = call i32 @memset(i64* %13, i8 signext 35, i32 %155)
  %157 = load i32, i32* @MAX_PATH, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i64, i64* %13, i64 %158
  store i64 0, i64* %159, align 8
  store i32 -559038737, i32* %3, align 4
  store i32 -559038737, i32* %6, align 4
  %160 = call i32 @SetLastError(i32 -559038737)
  %161 = load i32, i32* %1, align 4
  %162 = load i8*, i8** @does_not_exist, align 8
  %163 = load i32, i32* @defaultspooldirectory, align 4
  %164 = bitcast i64* %13 to i32*
  %165 = mul nuw i64 8, %11
  %166 = trunc i64 %165 to i32
  %167 = call i32 @pGetPrinterDataExA(i32 %161, i8* %162, i32 %163, i32* %3, i32* %164, i32 %166, i32* %6)
  store i32 %167, i32* %2, align 4
  %168 = call i32 @lstrlenA(i64* %13)
  %169 = sext i32 %168 to i64
  %170 = add i64 %169, 8
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %7, align 4
  %172 = load i32, i32* %2, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %191, label %174

174:                                              ; preds = %146
  %175 = load i32, i32* %3, align 4
  %176 = load i32, i32* @REG_SZ, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %191

178:                                              ; preds = %174
  %179 = load i32, i32* %6, align 4
  %180 = load i32, i32* %7, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %189, label %182

182:                                              ; preds = %178
  %183 = load i32, i32* %6, align 4
  %184 = sext i32 %183 to i64
  %185 = load i32, i32* %7, align 4
  %186 = sext i32 %185 to i64
  %187 = mul i64 %186, 4
  %188 = icmp eq i64 %184, %187
  br label %189

189:                                              ; preds = %182, %178
  %190 = phi i1 [ true, %178 ], [ %188, %182 ]
  br label %191

191:                                              ; preds = %189, %174, %146
  %192 = phi i1 [ false, %174 ], [ false, %146 ], [ %190, %189 ]
  %193 = zext i1 %192 to i32
  %194 = load i32, i32* %2, align 4
  %195 = load i32, i32* %3, align 4
  %196 = load i32, i32* %6, align 4
  %197 = load i32, i32* %7, align 4
  %198 = call i32 (i32, i8*, i32, ...) @ok(i32 %193, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 %194, i32 %195, i32 %196, i64* %13, i32 %197)
  store i32 -559038737, i32* %6, align 4
  %199 = call i32 @SetLastError(i32 -559038737)
  %200 = load i32, i32* %1, align 4
  %201 = load i32, i32* @defaultspooldirectory, align 4
  %202 = call i32 @pGetPrinterDataExA(i32 %200, i8* null, i32 %201, i32* null, i32* null, i32 0, i32* %6)
  store i32 %202, i32* %2, align 4
  %203 = load i32, i32* %2, align 4
  %204 = load i32, i32* @ERROR_MORE_DATA, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %212, label %206

206:                                              ; preds = %191
  %207 = load i32, i32* %2, align 4
  %208 = icmp eq i32 %207, -559038737
  %209 = zext i1 %208 to i32
  %210 = call i64 @broken(i32 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %225

212:                                              ; preds = %206, %191
  %213 = load i32, i32* %6, align 4
  %214 = load i32, i32* %7, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %223, label %216

216:                                              ; preds = %212
  %217 = load i32, i32* %6, align 4
  %218 = sext i32 %217 to i64
  %219 = load i32, i32* %7, align 4
  %220 = sext i32 %219 to i64
  %221 = mul i64 %220, 4
  %222 = icmp eq i64 %218, %221
  br label %223

223:                                              ; preds = %216, %212
  %224 = phi i1 [ true, %212 ], [ %222, %216 ]
  br label %225

225:                                              ; preds = %223, %206
  %226 = phi i1 [ false, %206 ], [ %224, %223 ]
  %227 = zext i1 %226 to i32
  %228 = load i32, i32* %2, align 4
  %229 = load i32, i32* %6, align 4
  %230 = load i32, i32* %7, align 4
  %231 = call i32 (i32, i8*, i32, ...) @ok(i32 %227, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %228, i32 %229, i32 %230)
  store i32 -559038737, i32* %6, align 4
  %232 = call i32 @SetLastError(i32 -559030611)
  %233 = load i32, i32* %1, align 4
  %234 = load i32, i32* @defaultspooldirectory, align 4
  %235 = call i32 @pGetPrinterDataExA(i32 %233, i8* null, i32 %234, i32* null, i32* null, i32 0, i32* %6)
  store i32 %235, i32* %2, align 4
  %236 = load i32, i32* %2, align 4
  %237 = load i32, i32* @ERROR_MORE_DATA, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %245, label %239

239:                                              ; preds = %225
  %240 = load i32, i32* %2, align 4
  %241 = icmp eq i32 %240, -559030611
  %242 = zext i1 %241 to i32
  %243 = call i64 @broken(i32 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %258

245:                                              ; preds = %239, %225
  %246 = load i32, i32* %6, align 4
  %247 = load i32, i32* %7, align 4
  %248 = icmp eq i32 %246, %247
  br i1 %248, label %256, label %249

249:                                              ; preds = %245
  %250 = load i32, i32* %6, align 4
  %251 = sext i32 %250 to i64
  %252 = load i32, i32* %7, align 4
  %253 = sext i32 %252 to i64
  %254 = mul i64 %253, 4
  %255 = icmp eq i64 %251, %254
  br label %256

256:                                              ; preds = %249, %245
  %257 = phi i1 [ true, %245 ], [ %255, %249 ]
  br label %258

258:                                              ; preds = %256, %239
  %259 = phi i1 [ false, %239 ], [ %257, %256 ]
  %260 = zext i1 %259 to i32
  %261 = load i32, i32* %2, align 4
  %262 = load i32, i32* %6, align 4
  %263 = load i32, i32* %7, align 4
  %264 = call i32 (i32, i8*, i32, ...) @ok(i32 %260, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %261, i32 %262, i32 %263)
  %265 = call i32 @SetLastError(i32 -559038737)
  %266 = load i32, i32* %1, align 4
  %267 = call i32 @ClosePrinter(i32 %266)
  store i32 %267, i32* %2, align 4
  %268 = load i32, i32* %2, align 4
  %269 = call i32 (...) @GetLastError()
  %270 = call i32 (i32, i8*, i32, ...) @ok(i32 %268, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %269)
  store i32 0, i32* %8, align 4
  br label %271

271:                                              ; preds = %258, %18
  %272 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %272)
  %273 = load i32, i32* %8, align 4
  switch i32 %273, label %275 [
    i32 0, label %274
    i32 1, label %274
  ]

274:                                              ; preds = %271, %271
  ret void

275:                                              ; preds = %271
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @OpenPrinterA(i32*, i32*, i32*) #2

declare dso_local i32 @win_skip(i8*, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @memset(i64*, i8 signext, i32) #2

declare dso_local i32 @pGetPrinterDataExA(i32, i8*, i32, i32*, i32*, i32, i32*) #2

declare dso_local i32 @lstrlenA(i64*) #2

declare dso_local i32 @ok(i32, i8*, i32, ...) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i32 @ClosePrinter(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

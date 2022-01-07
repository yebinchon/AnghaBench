; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_codepage.c_test_other_invalid_parameters.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_codepage.c_test_other_invalid_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_other_invalid_parameters.c_string = private unnamed_addr constant [12 x i8] c"Hello World\00", align 1
@__const.test_other_invalid_parameters.w_string = private unnamed_addr constant [12 x i8] c"Hello World\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@ERROR_INVALID_FLAGS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"len=%d error=%x\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@CP_UTF7 = common dso_local global i32 0, align 4
@CP_UTF8 = common dso_local global i32 0, align 4
@CP_SYMBOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_other_invalid_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_other_invalid_parameters() #0 {
  %1 = alloca [12 x i8], align 1
  %2 = alloca i64, align 8
  %3 = alloca [12 x i8], align 1
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = bitcast [12 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds ([12 x i8], [12 x i8]* @__const.test_other_invalid_parameters.c_string, i32 0, i32 0), i64 12, i1 false)
  store i64 12, i64* %2, align 8
  %8 = bitcast [12 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 getelementptr inbounds ([12 x i8], [12 x i8]* @__const.test_other_invalid_parameters.w_string, i32 0, i32 0), i64 12, i1 false)
  store i64 12, i64* %4, align 8
  %9 = call i32 @SetLastError(i32 -559038737)
  %10 = load i32, i32* @CP_ACP, align 4
  %11 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %12 = getelementptr inbounds [12 x i8], [12 x i8]* %1, i64 0, i64 0
  %13 = load i64, i64* %2, align 8
  %14 = call i64 @WideCharToMultiByte(i32 %10, i32 256, i8* %11, i64 -1, i8* %12, i64 %13, i8* null, i32* null)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %0
  %18 = call i64 (...) @GetLastError()
  %19 = load i64, i64* @ERROR_INVALID_FLAGS, align 8
  %20 = icmp eq i64 %18, %19
  br label %21

21:                                               ; preds = %17, %0
  %22 = phi i1 [ false, %0 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = load i64, i64* %6, align 8
  %25 = call i64 (...) @GetLastError()
  %26 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %24, i64 %25)
  %27 = call i32 @SetLastError(i32 -559038737)
  %28 = load i32, i32* @CP_ACP, align 4
  %29 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %30 = getelementptr inbounds [12 x i8], [12 x i8]* %1, i64 0, i64 0
  %31 = load i64, i64* %2, align 8
  %32 = call i64 @WideCharToMultiByte(i32 %28, i32 2048, i8* %29, i64 -1, i8* %30, i64 %31, i8* null, i32* null)
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %21
  %36 = call i64 (...) @GetLastError()
  %37 = load i64, i64* @ERROR_INVALID_FLAGS, align 8
  %38 = icmp eq i64 %36, %37
  br label %39

39:                                               ; preds = %35, %21
  %40 = phi i1 [ false, %21 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %6, align 8
  %43 = call i64 (...) @GetLastError()
  %44 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %42, i64 %43)
  %45 = call i32 @SetLastError(i32 -559038737)
  %46 = load i32, i32* @CP_ACP, align 4
  %47 = getelementptr inbounds [12 x i8], [12 x i8]* %1, i64 0, i64 0
  %48 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %49 = load i64, i64* %4, align 8
  %50 = call i64 @MultiByteToWideChar(i32 %46, i32 16, i8* %47, i64 -1, i8* %48, i64 %49)
  store i64 %50, i64* %6, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %39
  %54 = call i64 (...) @GetLastError()
  %55 = load i64, i64* @ERROR_INVALID_FLAGS, align 8
  %56 = icmp eq i64 %54, %55
  br label %57

57:                                               ; preds = %53, %39
  %58 = phi i1 [ false, %39 ], [ %56, %53 ]
  %59 = zext i1 %58 to i32
  %60 = load i64, i64* %6, align 8
  %61 = call i64 (...) @GetLastError()
  %62 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %60, i64 %61)
  %63 = call i32 @SetLastError(i32 -559038737)
  %64 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %65 = load i64, i64* %4, align 8
  %66 = getelementptr inbounds [12 x i8], [12 x i8]* %1, i64 0, i64 0
  %67 = load i64, i64* %2, align 8
  %68 = call i64 @WideCharToMultiByte(i32 -559038737, i32 256, i8* %64, i64 %65, i8* %66, i64 %67, i8* null, i32* null)
  store i64 %68, i64* %6, align 8
  %69 = load i64, i64* %6, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %57
  %72 = call i64 (...) @GetLastError()
  %73 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %74 = icmp eq i64 %72, %73
  br label %75

75:                                               ; preds = %71, %57
  %76 = phi i1 [ false, %57 ], [ %74, %71 ]
  %77 = zext i1 %76 to i32
  %78 = load i64, i64* %6, align 8
  %79 = call i64 (...) @GetLastError()
  %80 = call i32 @ok(i32 %77, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %78, i64 %79)
  %81 = call i32 @SetLastError(i32 -559038737)
  %82 = getelementptr inbounds [12 x i8], [12 x i8]* %1, i64 0, i64 0
  %83 = load i64, i64* %2, align 8
  %84 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %85 = load i64, i64* %4, align 8
  %86 = call i64 @MultiByteToWideChar(i32 -559038737, i32 16, i8* %82, i64 %83, i8* %84, i64 %85)
  store i64 %86, i64* %6, align 8
  %87 = load i64, i64* %6, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %75
  %90 = call i64 (...) @GetLastError()
  %91 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %92 = icmp eq i64 %90, %91
  br label %93

93:                                               ; preds = %89, %75
  %94 = phi i1 [ false, %75 ], [ %92, %89 ]
  %95 = zext i1 %94 to i32
  %96 = load i64, i64* %6, align 8
  %97 = call i64 (...) @GetLastError()
  %98 = call i32 @ok(i32 %95, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %96, i64 %97)
  %99 = call i32 @SetLastError(i32 -559038737)
  %100 = load i32, i32* @CP_ACP, align 4
  %101 = getelementptr inbounds [12 x i8], [12 x i8]* %1, i64 0, i64 0
  %102 = load i64, i64* %2, align 8
  %103 = call i64 @WideCharToMultiByte(i32 %100, i32 256, i8* null, i64 -1, i8* %101, i64 %102, i8* null, i32* null)
  store i64 %103, i64* %6, align 8
  %104 = load i64, i64* %6, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %93
  %107 = call i64 (...) @GetLastError()
  %108 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %109 = icmp eq i64 %107, %108
  br label %110

110:                                              ; preds = %106, %93
  %111 = phi i1 [ false, %93 ], [ %109, %106 ]
  %112 = zext i1 %111 to i32
  %113 = load i64, i64* %6, align 8
  %114 = call i64 (...) @GetLastError()
  %115 = call i32 @ok(i32 %112, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %113, i64 %114)
  %116 = call i32 @SetLastError(i32 -559038737)
  %117 = load i32, i32* @CP_ACP, align 4
  %118 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %119 = load i64, i64* %4, align 8
  %120 = call i64 @MultiByteToWideChar(i32 %117, i32 16, i8* null, i64 -1, i8* %118, i64 %119)
  store i64 %120, i64* %6, align 8
  %121 = load i64, i64* %6, align 8
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %110
  %124 = call i64 (...) @GetLastError()
  %125 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %126 = icmp eq i64 %124, %125
  br label %127

127:                                              ; preds = %123, %110
  %128 = phi i1 [ false, %110 ], [ %126, %123 ]
  %129 = zext i1 %128 to i32
  %130 = load i64, i64* %6, align 8
  %131 = call i64 (...) @GetLastError()
  %132 = call i32 @ok(i32 %129, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %130, i64 %131)
  %133 = call i32 @SetLastError(i32 -559038737)
  %134 = load i32, i32* @CP_ACP, align 4
  %135 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %136 = getelementptr inbounds [12 x i8], [12 x i8]* %1, i64 0, i64 0
  %137 = load i64, i64* %2, align 8
  %138 = call i64 @WideCharToMultiByte(i32 %134, i32 0, i8* %135, i64 0, i8* %136, i64 %137, i8* null, i32* null)
  store i64 %138, i64* %6, align 8
  %139 = load i64, i64* %6, align 8
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %127
  %142 = call i64 (...) @GetLastError()
  %143 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %144 = icmp eq i64 %142, %143
  br label %145

145:                                              ; preds = %141, %127
  %146 = phi i1 [ false, %127 ], [ %144, %141 ]
  %147 = zext i1 %146 to i32
  %148 = load i64, i64* %6, align 8
  %149 = call i64 (...) @GetLastError()
  %150 = call i32 @ok(i32 %147, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %148, i64 %149)
  %151 = call i32 @SetLastError(i32 -559038737)
  %152 = load i32, i32* @CP_ACP, align 4
  %153 = getelementptr inbounds [12 x i8], [12 x i8]* %1, i64 0, i64 0
  %154 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %155 = load i64, i64* %4, align 8
  %156 = call i64 @MultiByteToWideChar(i32 %152, i32 0, i8* %153, i64 0, i8* %154, i64 %155)
  store i64 %156, i64* %6, align 8
  %157 = load i64, i64* %6, align 8
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %145
  %160 = call i64 (...) @GetLastError()
  %161 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %162 = icmp eq i64 %160, %161
  br label %163

163:                                              ; preds = %159, %145
  %164 = phi i1 [ false, %145 ], [ %162, %159 ]
  %165 = zext i1 %164 to i32
  %166 = load i64, i64* %6, align 8
  %167 = call i64 (...) @GetLastError()
  %168 = call i32 @ok(i32 %165, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %166, i64 %167)
  %169 = call i32 @SetLastError(i32 -559038737)
  %170 = load i32, i32* @CP_ACP, align 4
  %171 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %172 = load i64, i64* %4, align 8
  %173 = load i64, i64* %2, align 8
  %174 = call i64 @WideCharToMultiByte(i32 %170, i32 0, i8* %171, i64 %172, i8* null, i64 %173, i8* null, i32* null)
  store i64 %174, i64* %6, align 8
  %175 = load i64, i64* %6, align 8
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %163
  %178 = call i64 (...) @GetLastError()
  %179 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %180 = icmp eq i64 %178, %179
  br label %181

181:                                              ; preds = %177, %163
  %182 = phi i1 [ false, %163 ], [ %180, %177 ]
  %183 = zext i1 %182 to i32
  %184 = load i64, i64* %6, align 8
  %185 = call i64 (...) @GetLastError()
  %186 = call i32 @ok(i32 %183, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %184, i64 %185)
  %187 = call i32 @SetLastError(i32 -559038737)
  %188 = load i32, i32* @CP_ACP, align 4
  %189 = getelementptr inbounds [12 x i8], [12 x i8]* %1, i64 0, i64 0
  %190 = load i64, i64* %2, align 8
  %191 = load i64, i64* %4, align 8
  %192 = call i64 @MultiByteToWideChar(i32 %188, i32 0, i8* %189, i64 %190, i8* null, i64 %191)
  store i64 %192, i64* %6, align 8
  %193 = load i64, i64* %6, align 8
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %181
  %196 = call i64 (...) @GetLastError()
  %197 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %198 = icmp eq i64 %196, %197
  br label %199

199:                                              ; preds = %195, %181
  %200 = phi i1 [ false, %181 ], [ %198, %195 ]
  %201 = zext i1 %200 to i32
  %202 = load i64, i64* %6, align 8
  %203 = call i64 (...) @GetLastError()
  %204 = call i32 @ok(i32 %201, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %202, i64 %203)
  %205 = call i32 @SetLastError(i32 -559038737)
  %206 = load i32, i32* @CP_UTF7, align 4
  %207 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %208 = load i64, i64* %4, align 8
  %209 = getelementptr inbounds [12 x i8], [12 x i8]* %1, i64 0, i64 0
  %210 = load i64, i64* %2, align 8
  %211 = getelementptr inbounds [12 x i8], [12 x i8]* %1, i64 0, i64 0
  %212 = call i64 @WideCharToMultiByte(i32 %206, i32 0, i8* %207, i64 %208, i8* %209, i64 %210, i8* %211, i32* null)
  store i64 %212, i64* %6, align 8
  %213 = load i64, i64* %6, align 8
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %199
  %216 = call i64 (...) @GetLastError()
  %217 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %218 = icmp eq i64 %216, %217
  br label %219

219:                                              ; preds = %215, %199
  %220 = phi i1 [ false, %199 ], [ %218, %215 ]
  %221 = zext i1 %220 to i32
  %222 = load i64, i64* %6, align 8
  %223 = call i64 (...) @GetLastError()
  %224 = call i32 @ok(i32 %221, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %222, i64 %223)
  %225 = call i32 @SetLastError(i32 -559038737)
  %226 = load i32, i32* @CP_UTF8, align 4
  %227 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %228 = load i64, i64* %4, align 8
  %229 = getelementptr inbounds [12 x i8], [12 x i8]* %1, i64 0, i64 0
  %230 = load i64, i64* %2, align 8
  %231 = getelementptr inbounds [12 x i8], [12 x i8]* %1, i64 0, i64 0
  %232 = call i64 @WideCharToMultiByte(i32 %226, i32 0, i8* %227, i64 %228, i8* %229, i64 %230, i8* %231, i32* null)
  store i64 %232, i64* %6, align 8
  %233 = load i64, i64* %6, align 8
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %219
  %236 = call i64 (...) @GetLastError()
  %237 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %238 = icmp eq i64 %236, %237
  br label %239

239:                                              ; preds = %235, %219
  %240 = phi i1 [ false, %219 ], [ %238, %235 ]
  %241 = zext i1 %240 to i32
  %242 = load i64, i64* %6, align 8
  %243 = call i64 (...) @GetLastError()
  %244 = call i32 @ok(i32 %241, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %242, i64 %243)
  %245 = call i32 @SetLastError(i32 -559038737)
  %246 = load i32, i32* @CP_SYMBOL, align 4
  %247 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %248 = load i64, i64* %4, align 8
  %249 = getelementptr inbounds [12 x i8], [12 x i8]* %1, i64 0, i64 0
  %250 = load i64, i64* %2, align 8
  %251 = getelementptr inbounds [12 x i8], [12 x i8]* %1, i64 0, i64 0
  %252 = call i64 @WideCharToMultiByte(i32 %246, i32 0, i8* %247, i64 %248, i8* %249, i64 %250, i8* %251, i32* null)
  store i64 %252, i64* %6, align 8
  %253 = load i64, i64* %6, align 8
  %254 = icmp eq i64 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %239
  %256 = call i64 (...) @GetLastError()
  %257 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %258 = icmp eq i64 %256, %257
  br label %259

259:                                              ; preds = %255, %239
  %260 = phi i1 [ false, %239 ], [ %258, %255 ]
  %261 = zext i1 %260 to i32
  %262 = load i64, i64* %6, align 8
  %263 = call i64 (...) @GetLastError()
  %264 = call i32 @ok(i32 %261, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %262, i64 %263)
  %265 = call i32 @SetLastError(i32 -559038737)
  %266 = load i32, i32* @CP_UTF7, align 4
  %267 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %268 = load i64, i64* %4, align 8
  %269 = getelementptr inbounds [12 x i8], [12 x i8]* %1, i64 0, i64 0
  %270 = load i64, i64* %2, align 8
  %271 = call i64 @WideCharToMultiByte(i32 %266, i32 0, i8* %267, i64 %268, i8* %269, i64 %270, i8* null, i32* %5)
  store i64 %271, i64* %6, align 8
  %272 = load i64, i64* %6, align 8
  %273 = icmp eq i64 %272, 0
  br i1 %273, label %274, label %278

274:                                              ; preds = %259
  %275 = call i64 (...) @GetLastError()
  %276 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %277 = icmp eq i64 %275, %276
  br label %278

278:                                              ; preds = %274, %259
  %279 = phi i1 [ false, %259 ], [ %277, %274 ]
  %280 = zext i1 %279 to i32
  %281 = load i64, i64* %6, align 8
  %282 = call i64 (...) @GetLastError()
  %283 = call i32 @ok(i32 %280, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %281, i64 %282)
  %284 = call i32 @SetLastError(i32 -559038737)
  %285 = load i32, i32* @CP_UTF8, align 4
  %286 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %287 = load i64, i64* %4, align 8
  %288 = getelementptr inbounds [12 x i8], [12 x i8]* %1, i64 0, i64 0
  %289 = load i64, i64* %2, align 8
  %290 = call i64 @WideCharToMultiByte(i32 %285, i32 0, i8* %286, i64 %287, i8* %288, i64 %289, i8* null, i32* %5)
  store i64 %290, i64* %6, align 8
  %291 = load i64, i64* %6, align 8
  %292 = icmp eq i64 %291, 0
  br i1 %292, label %293, label %297

293:                                              ; preds = %278
  %294 = call i64 (...) @GetLastError()
  %295 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %296 = icmp eq i64 %294, %295
  br label %297

297:                                              ; preds = %293, %278
  %298 = phi i1 [ false, %278 ], [ %296, %293 ]
  %299 = zext i1 %298 to i32
  %300 = load i64, i64* %6, align 8
  %301 = call i64 (...) @GetLastError()
  %302 = call i32 @ok(i32 %299, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %300, i64 %301)
  %303 = call i32 @SetLastError(i32 -559038737)
  %304 = load i32, i32* @CP_SYMBOL, align 4
  %305 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %306 = load i64, i64* %4, align 8
  %307 = getelementptr inbounds [12 x i8], [12 x i8]* %1, i64 0, i64 0
  %308 = load i64, i64* %2, align 8
  %309 = call i64 @WideCharToMultiByte(i32 %304, i32 0, i8* %305, i64 %306, i8* %307, i64 %308, i8* null, i32* %5)
  store i64 %309, i64* %6, align 8
  %310 = load i64, i64* %6, align 8
  %311 = icmp eq i64 %310, 0
  br i1 %311, label %312, label %316

312:                                              ; preds = %297
  %313 = call i64 (...) @GetLastError()
  %314 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %315 = icmp eq i64 %313, %314
  br label %316

316:                                              ; preds = %312, %297
  %317 = phi i1 [ false, %297 ], [ %315, %312 ]
  %318 = zext i1 %317 to i32
  %319 = load i64, i64* %6, align 8
  %320 = call i64 (...) @GetLastError()
  %321 = call i32 @ok(i32 %318, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %319, i64 %320)
  %322 = call i32 @SetLastError(i32 -559038737)
  %323 = load i32, i32* @CP_UTF7, align 4
  %324 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %325 = load i64, i64* %4, align 8
  %326 = getelementptr inbounds [12 x i8], [12 x i8]* %1, i64 0, i64 0
  %327 = load i64, i64* %2, align 8
  %328 = call i64 @WideCharToMultiByte(i32 %323, i32 1, i8* %324, i64 %325, i8* %326, i64 %327, i8* null, i32* %5)
  store i64 %328, i64* %6, align 8
  %329 = load i64, i64* %6, align 8
  %330 = icmp eq i64 %329, 0
  br i1 %330, label %331, label %335

331:                                              ; preds = %316
  %332 = call i64 (...) @GetLastError()
  %333 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %334 = icmp eq i64 %332, %333
  br label %335

335:                                              ; preds = %331, %316
  %336 = phi i1 [ false, %316 ], [ %334, %331 ]
  %337 = zext i1 %336 to i32
  %338 = load i64, i64* %6, align 8
  %339 = call i64 (...) @GetLastError()
  %340 = call i32 @ok(i32 %337, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %338, i64 %339)
  %341 = call i32 @SetLastError(i32 -559038737)
  %342 = load i32, i32* @CP_UTF8, align 4
  %343 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %344 = load i64, i64* %4, align 8
  %345 = getelementptr inbounds [12 x i8], [12 x i8]* %1, i64 0, i64 0
  %346 = load i64, i64* %2, align 8
  %347 = call i64 @WideCharToMultiByte(i32 %342, i32 256, i8* %343, i64 %344, i8* %345, i64 %346, i8* null, i32* %5)
  store i64 %347, i64* %6, align 8
  %348 = load i64, i64* %6, align 8
  %349 = icmp eq i64 %348, 0
  br i1 %349, label %350, label %354

350:                                              ; preds = %335
  %351 = call i64 (...) @GetLastError()
  %352 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %353 = icmp eq i64 %351, %352
  br label %354

354:                                              ; preds = %350, %335
  %355 = phi i1 [ false, %335 ], [ %353, %350 ]
  %356 = zext i1 %355 to i32
  %357 = load i64, i64* %6, align 8
  %358 = call i64 (...) @GetLastError()
  %359 = call i32 @ok(i32 %356, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %357, i64 %358)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i64 @WideCharToMultiByte(i32, i32, i8*, i64, i8*, i64, i8*, i32*) #2

declare dso_local i32 @ok(i32, i8*, i64, i64) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i64 @MultiByteToWideChar(i32, i32, i8*, i64, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dxdiagn/extr_container.c_test_EnumChildContainerNames.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dxdiagn/extr_container.c_test_EnumChildContainerNames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_EnumChildContainerNames.testW = internal constant [5 x i8] c"test\00", align 1
@test_EnumChildContainerNames.zerotestW = internal constant [5 x i8] c"\00est\00", align 1
@.str = private unnamed_addr constant [44 x i8] c"Unable to create the root IDxDiagContainer\0A\00", align 1
@pddc = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [87 x i8] c"Expected IDxDiagContainer::EnumChildContainerNames to return E_INVALIDARG, got 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"Expected the container buffer to be untouched, got %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"Expected the container buffer string to be empty, got %s\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [82 x i8] c"Expected IDxDiagContainer::GetNumberOfChildContainers to return S_OK, got 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"IDxDiagContainer::GetNumberOfChildContainers failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"Starting child container enumeration of the root container:\0A\00", align 1
@.str.7 = private unnamed_addr constant [108 x i8] c"Expected IDxDiagContainer::EnumChildContainerNames to return E_INVALIDARG on the last index %d, got 0x%08x\0A\00", align 1
@DXDIAG_E_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [79 x i8] c"Expected IDxDiagContainer::EnumChildContainerNames to return S_OK, got 0x%08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"Expected truncated container name string, got %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [101 x i8] c"Expected IDxDiagContainer::EnumChildContainerNames to return S_OK, got hr = 0x%08x, buffersize = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"pddc[%d] = %s, length = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [72 x i8] c"IDxDiagContainer::EnumChildContainerNames unexpectedly returned 0x%08x\0A\00", align 1
@pddp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_EnumChildContainerNames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_EnumChildContainerNames() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [256 x i8], align 16
  %7 = call i32 (...) @create_root_IDxDiagContainer()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %0
  %10 = call i32 @skip(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %225

11:                                               ; preds = %0
  %12 = load i32, i32* @pddc, align 4
  %13 = call i32 @IDxDiagContainer_EnumChildContainerNames(i32 %12, i32 0, i8* null, i32 0)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @E_INVALIDARG, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %1, align 4
  %19 = call i32 (i32, i8*, i32, ...) @ok(i32 %17, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @pddc, align 4
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %22 = call i32 @ARRAY_SIZE(i8* %21)
  %23 = call i32 @IDxDiagContainer_EnumChildContainerNames(i32 %20, i32 0, i8* null, i32 %22)
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* @E_INVALIDARG, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %1, align 4
  %29 = call i32 (i32, i8*, i32, ...) @ok(i32 %27, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %31 = call i32 @memcpy(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_EnumChildContainerNames.testW, i64 0, i64 0), i32 5)
  %32 = load i32, i32* @pddc, align 4
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %34 = call i32 @IDxDiagContainer_EnumChildContainerNames(i32 %32, i32 0, i8* %33, i32 0)
  store i32 %34, i32* %1, align 4
  %35 = load i32, i32* %1, align 4
  %36 = load i32, i32* @E_INVALIDARG, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %1, align 4
  %40 = call i32 (i32, i8*, i32, ...) @ok(i32 %38, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %42 = call i32 @memcmp(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_EnumChildContainerNames.testW, i64 0, i64 0), i32 5)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %47 = call i32 @wine_dbgstr_w(i8* %46)
  %48 = call i32 (i32, i8*, i32, ...) @ok(i32 %45, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %50 = call i32 @memcpy(i8* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_EnumChildContainerNames.testW, i64 0, i64 0), i32 5)
  %51 = load i32, i32* @pddc, align 4
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %53 = call i32 @IDxDiagContainer_EnumChildContainerNames(i32 %51, i32 -1, i8* %52, i32 0)
  store i32 %53, i32* %1, align 4
  %54 = load i32, i32* %1, align 4
  %55 = load i32, i32* @E_INVALIDARG, align 4
  %56 = icmp eq i32 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* %1, align 4
  %59 = call i32 (i32, i8*, i32, ...) @ok(i32 %57, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %61 = call i32 @memcmp(i8* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_EnumChildContainerNames.testW, i64 0, i64 0), i32 5)
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %66 = call i32 @wine_dbgstr_w(i8* %65)
  %67 = call i32 (i32, i8*, i32, ...) @ok(i32 %64, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %69 = call i32 @memcpy(i8* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_EnumChildContainerNames.testW, i64 0, i64 0), i32 5)
  %70 = load i32, i32* @pddc, align 4
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %72 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %73 = call i32 @ARRAY_SIZE(i8* %72)
  %74 = call i32 @IDxDiagContainer_EnumChildContainerNames(i32 %70, i32 -1, i8* %71, i32 %73)
  store i32 %74, i32* %1, align 4
  %75 = load i32, i32* %1, align 4
  %76 = load i32, i32* @E_INVALIDARG, align 4
  %77 = icmp eq i32 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* %1, align 4
  %80 = call i32 (i32, i8*, i32, ...) @ok(i32 %78, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %82 = call i32 @memcmp(i8* %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_EnumChildContainerNames.zerotestW, i64 0, i64 0), i32 5)
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %87 = call i32 @wine_dbgstr_w(i8* %86)
  %88 = call i32 (i32, i8*, i32, ...) @ok(i32 %85, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @pddc, align 4
  %90 = call i32 @IDxDiagContainer_GetNumberOfChildContainers(i32 %89, i32* %3)
  store i32 %90, i32* %1, align 4
  %91 = load i32, i32* %1, align 4
  %92 = load i32, i32* @S_OK, align 4
  %93 = icmp eq i32 %91, %92
  %94 = zext i1 %93 to i32
  %95 = load i32, i32* %1, align 4
  %96 = call i32 (i32, i8*, i32, ...) @ok(i32 %94, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %1, align 4
  %98 = call i64 @FAILED(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %11
  %101 = call i32 @skip(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  br label %220

102:                                              ; preds = %11
  %103 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %216, %102
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* %3, align 4
  %107 = icmp sle i32 %105, %106
  br i1 %107, label %108, label %219

108:                                              ; preds = %104
  store i32 1, i32* %5, align 4
  %109 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %110 = call i32 @memcpy(i8* %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_EnumChildContainerNames.testW, i64 0, i64 0), i32 5)
  %111 = load i32, i32* @pddc, align 4
  %112 = load i32, i32* %4, align 4
  %113 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @IDxDiagContainer_EnumChildContainerNames(i32 %111, i32 %112, i8* %113, i32 %114)
  store i32 %115, i32* %1, align 4
  %116 = load i32, i32* %1, align 4
  %117 = load i32, i32* @E_INVALIDARG, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %135

119:                                              ; preds = %108
  %120 = load i32, i32* %3, align 4
  %121 = load i32, i32* %4, align 4
  %122 = icmp eq i32 %120, %121
  %123 = zext i1 %122 to i32
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* %1, align 4
  %126 = call i32 (i32, i8*, i32, ...) @ok(i32 %123, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.7, i64 0, i64 0), i32 %124, i32 %125)
  %127 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %128 = load i8, i8* %127, align 16
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 0
  %131 = zext i1 %130 to i32
  %132 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %133 = call i32 @wine_dbgstr_w(i8* %132)
  %134 = call i32 (i32, i8*, i32, ...) @ok(i32 %131, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %133)
  br label %219

135:                                              ; preds = %108
  %136 = load i32, i32* %1, align 4
  %137 = load i32, i32* @DXDIAG_E_INSUFFICIENT_BUFFER, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %211

139:                                              ; preds = %135
  %140 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %141 = load i8, i8* %140, align 16
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 0
  %144 = zext i1 %143 to i32
  %145 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %146 = call i32 @wine_dbgstr_w(i8* %145)
  %147 = call i32 (i32, i8*, i32, ...) @ok(i32 %144, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %146)
  %148 = load i32, i32* @pddc, align 4
  %149 = load i32, i32* %4, align 4
  %150 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %151 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %152 = call i32 @ARRAY_SIZE(i8* %151)
  %153 = call i32 @IDxDiagContainer_EnumChildContainerNames(i32 %148, i32 %149, i8* %150, i32 %152)
  store i32 %153, i32* %1, align 4
  %154 = load i32, i32* %1, align 4
  %155 = load i32, i32* @S_OK, align 4
  %156 = icmp eq i32 %154, %155
  %157 = zext i1 %156 to i32
  %158 = load i32, i32* %1, align 4
  %159 = call i32 (i32, i8*, i32, ...) @ok(i32 %157, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.8, i64 0, i64 0), i32 %158)
  store i32 2, i32* %5, align 4
  br label %160

160:                                              ; preds = %190, %139
  %161 = load i32, i32* %5, align 4
  %162 = icmp sle i32 %161, 256
  br i1 %162, label %163, label %193

163:                                              ; preds = %160
  %164 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %165 = call i32 @memcpy(i8* %164, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_EnumChildContainerNames.testW, i64 0, i64 0), i32 5)
  %166 = load i32, i32* @pddc, align 4
  %167 = load i32, i32* %4, align 4
  %168 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %169 = load i32, i32* %5, align 4
  %170 = call i32 @IDxDiagContainer_EnumChildContainerNames(i32 %166, i32 %167, i8* %168, i32 %169)
  store i32 %170, i32* %1, align 4
  %171 = load i32, i32* %1, align 4
  %172 = load i32, i32* @DXDIAG_E_INSUFFICIENT_BUFFER, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %163
  br label %193

175:                                              ; preds = %163
  %176 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %177 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %178 = load i32, i32* %5, align 4
  %179 = sub nsw i32 %178, 1
  %180 = sext i32 %179 to i64
  %181 = mul i64 1, %180
  %182 = trunc i64 %181 to i32
  %183 = call i32 @memcmp(i8* %176, i8* %177, i32 %182)
  %184 = icmp ne i32 %183, 0
  %185 = xor i1 %184, true
  %186 = zext i1 %185 to i32
  %187 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %188 = call i32 @wine_dbgstr_w(i8* %187)
  %189 = call i32 (i32, i8*, i32, ...) @ok(i32 %186, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0), i32 %188)
  br label %190

190:                                              ; preds = %175
  %191 = load i32, i32* %5, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %5, align 4
  br label %160

193:                                              ; preds = %174, %160
  %194 = load i32, i32* %1, align 4
  %195 = load i32, i32* @S_OK, align 4
  %196 = icmp eq i32 %194, %195
  %197 = zext i1 %196 to i32
  %198 = load i32, i32* %1, align 4
  %199 = load i32, i32* %5, align 4
  %200 = call i32 (i32, i8*, i32, ...) @ok(i32 %197, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.10, i64 0, i64 0), i32 %198, i32 %199)
  %201 = load i32, i32* %1, align 4
  %202 = load i32, i32* @S_OK, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %210

204:                                              ; preds = %193
  %205 = load i32, i32* %4, align 4
  %206 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %207 = call i32 @wine_dbgstr_w(i8* %206)
  %208 = load i32, i32* %5, align 4
  %209 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 %205, i32 %207, i32 %208)
  br label %210

210:                                              ; preds = %204, %193
  br label %214

211:                                              ; preds = %135
  %212 = load i32, i32* %1, align 4
  %213 = call i32 (i32, i8*, i32, ...) @ok(i32 0, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.12, i64 0, i64 0), i32 %212)
  br label %219

214:                                              ; preds = %210
  br label %215

215:                                              ; preds = %214
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %4, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %4, align 4
  br label %104

219:                                              ; preds = %211, %119, %104
  br label %220

220:                                              ; preds = %219, %100
  %221 = load i32, i32* @pddc, align 4
  %222 = call i32 @IDxDiagContainer_Release(i32 %221)
  %223 = load i32, i32* @pddp, align 4
  %224 = call i32 @IDxDiagProvider_Release(i32 %223)
  br label %225

225:                                              ; preds = %220, %9
  ret void
}

declare dso_local i32 @create_root_IDxDiagContainer(...) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @IDxDiagContainer_EnumChildContainerNames(i32, i32, i8*, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @wine_dbgstr_w(i8*) #1

declare dso_local i32 @IDxDiagContainer_GetNumberOfChildContainers(i32, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @trace(i8*, ...) #1

declare dso_local i32 @IDxDiagContainer_Release(i32) #1

declare dso_local i32 @IDxDiagProvider_Release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

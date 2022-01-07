; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_environ.c_test_ExpandEnvironmentStringsA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_environ.c_test_ExpandEnvironmentStringsA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"Long long value\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%NotAnEnvVar%\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"EnvVar\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"ExpandEnvironmentStrings returned %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%EnvVar%\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"ExpandEnvironmentStrings returned %d instead of %d, %d or %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"ExpandEnvironmentStrings returned %d instead of %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"ExpandEnvironmentStrings returned [%s]\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"12345\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"ExpandEnvironmentStrings failed %s vs %s. ret_size = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"GetWindowsDirectory Failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"%SystemRoot%\00", align 1
@ERROR_ENVVAR_NOT_FOUND = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [12 x i8] c"IndirectVar\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"Foo%EnvVar%Bar\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"Indirect-%IndirectVar%-Indirect\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"Indirect-Foo%EnvVar%Bar-Indirect\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ExpandEnvironmentStringsA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ExpandEnvironmentStringsA() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca [256 x i8], align 16
  %5 = alloca [32768 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  %8 = load i8*, i8** %1, align 8
  %9 = call i32 @SetEnvironmentVariableA(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %8)
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %11 = call i32 @ExpandEnvironmentStringsA(i8* null, i8* %10, i32 256)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %20, label %14

14:                                               ; preds = %0
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 2
  br label %20

20:                                               ; preds = %17, %14, %0
  %21 = phi i1 [ true, %14 ], [ true, %0 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %6, align 4
  %24 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %23)
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %26 = call i32 @strcpy(i8* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %28 = call i32 @ExpandEnvironmentStringsA(i8* %27, i8* null, i32 0)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i8*, i8** %1, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = add nsw i32 %31, 1
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %50, label %34

34:                                               ; preds = %20
  %35 = load i32, i32* %6, align 4
  %36 = load i8*, i8** %1, align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = add nsw i32 %37, 1
  %39 = mul nsw i32 %38, 2
  %40 = icmp eq i32 %35, %39
  br i1 %40, label %50, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* %6, align 4
  %43 = load i8*, i8** %1, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = add nsw i32 %44, 2
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 0
  br label %50

50:                                               ; preds = %47, %41, %34, %20
  %51 = phi i1 [ true, %41 ], [ true, %34 ], [ true, %20 ], [ %49, %47 ]
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %6, align 4
  %54 = load i8*, i8** %1, align 8
  %55 = call i32 @lstrlenA(i8* %54)
  %56 = add nsw i32 %55, 1
  %57 = load i8*, i8** %1, align 8
  %58 = call i32 @lstrlenA(i8* %57)
  %59 = add nsw i32 %58, 2
  %60 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i32 %53, i32 %56, i32 %59, i32 0)
  %61 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %63 = call i32 @ExpandEnvironmentStringsA(i8* %61, i8* %62, i32 0)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i8*, i8** %1, align 8
  %66 = call i32 @strlen(i8* %65)
  %67 = add nsw i32 %66, 1
  %68 = icmp eq i32 %64, %67
  br i1 %68, label %82, label %69

69:                                               ; preds = %50
  %70 = load i32, i32* %6, align 4
  %71 = load i8*, i8** %1, align 8
  %72 = call i32 @strlen(i8* %71)
  %73 = add nsw i32 %72, 2
  %74 = icmp eq i32 %70, %73
  br i1 %74, label %82, label %75

75:                                               ; preds = %69
  %76 = load i32, i32* %6, align 4
  %77 = load i8*, i8** %1, align 8
  %78 = call i32 @strlen(i8* %77)
  %79 = add nsw i32 %78, 1
  %80 = mul nsw i32 %79, 2
  %81 = icmp eq i32 %76, %80
  br label %82

82:                                               ; preds = %75, %69, %50
  %83 = phi i1 [ true, %69 ], [ true, %50 ], [ %81, %75 ]
  %84 = zext i1 %83 to i32
  %85 = load i32, i32* %6, align 4
  %86 = load i8*, i8** %1, align 8
  %87 = call i32 @lstrlenA(i8* %86)
  %88 = add nsw i32 %87, 1
  %89 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %85, i32 %88)
  %90 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %91 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %92 = call i32 @ExpandEnvironmentStringsA(i8* %90, i8* %91, i32 12)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load i8*, i8** %1, align 8
  %95 = call i32 @strlen(i8* %94)
  %96 = add nsw i32 %95, 1
  %97 = icmp eq i32 %93, %96
  br i1 %97, label %111, label %98

98:                                               ; preds = %82
  %99 = load i32, i32* %6, align 4
  %100 = load i8*, i8** %1, align 8
  %101 = call i32 @strlen(i8* %100)
  %102 = add nsw i32 %101, 2
  %103 = icmp eq i32 %99, %102
  br i1 %103, label %111, label %104

104:                                              ; preds = %98
  %105 = load i32, i32* %6, align 4
  %106 = load i8*, i8** %1, align 8
  %107 = call i32 @strlen(i8* %106)
  %108 = add nsw i32 %107, 1
  %109 = mul nsw i32 %108, 2
  %110 = icmp eq i32 %105, %109
  br label %111

111:                                              ; preds = %104, %98, %82
  %112 = phi i1 [ true, %98 ], [ true, %82 ], [ %110, %104 ]
  %113 = zext i1 %112 to i32
  %114 = load i32, i32* %6, align 4
  %115 = load i8*, i8** %1, align 8
  %116 = call i32 @lstrlenA(i8* %115)
  %117 = add nsw i32 %116, 1
  %118 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %114, i32 %117)
  %119 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %120 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @ExpandEnvironmentStringsA(i8* %119, i8* %120, i32 %121)
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  %124 = load i8*, i8** %1, align 8
  %125 = call i32 @strlen(i8* %124)
  %126 = add nsw i32 %125, 1
  %127 = icmp eq i32 %123, %126
  br i1 %127, label %141, label %128

128:                                              ; preds = %111
  %129 = load i32, i32* %6, align 4
  %130 = load i8*, i8** %1, align 8
  %131 = call i32 @strlen(i8* %130)
  %132 = add nsw i32 %131, 2
  %133 = icmp eq i32 %129, %132
  br i1 %133, label %141, label %134

134:                                              ; preds = %128
  %135 = load i32, i32* %6, align 4
  %136 = load i8*, i8** %1, align 8
  %137 = call i32 @strlen(i8* %136)
  %138 = add nsw i32 %137, 1
  %139 = mul nsw i32 %138, 2
  %140 = icmp eq i32 %135, %139
  br label %141

141:                                              ; preds = %134, %128, %111
  %142 = phi i1 [ true, %128 ], [ true, %111 ], [ %140, %134 ]
  %143 = zext i1 %142 to i32
  %144 = load i32, i32* %6, align 4
  %145 = load i8*, i8** %1, align 8
  %146 = call i32 @lstrlenA(i8* %145)
  %147 = add nsw i32 %146, 1
  %148 = call i32 (i32, i8*, ...) @ok(i32 %143, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %144, i32 %147)
  %149 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %150 = load i8*, i8** %1, align 8
  %151 = call i32 @strcmp(i8* %149, i8* %150)
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  %154 = zext i1 %153 to i32
  %155 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %156 = call i32 (i32, i8*, ...) @ok(i32 %154, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8* %155)
  %157 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %158 = load i8*, i8** %2, align 8
  %159 = call i32 @strcpy(i8* %157, i8* %158)
  %160 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %161 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %162 = call i32 @ExpandEnvironmentStringsA(i8* %160, i8* %161, i32 256)
  store i32 %162, i32* %6, align 4
  %163 = load i32, i32* %6, align 4
  %164 = load i8*, i8** %2, align 8
  %165 = call i32 @strlen(i8* %164)
  %166 = add nsw i32 %165, 1
  %167 = icmp eq i32 %163, %166
  br i1 %167, label %175, label %168

168:                                              ; preds = %141
  %169 = load i32, i32* %6, align 4
  %170 = load i8*, i8** %2, align 8
  %171 = call i32 @strlen(i8* %170)
  %172 = add nsw i32 %171, 1
  %173 = mul nsw i32 %172, 2
  %174 = icmp eq i32 %169, %173
  br label %175

175:                                              ; preds = %168, %141
  %176 = phi i1 [ true, %141 ], [ %174, %168 ]
  %177 = zext i1 %176 to i32
  %178 = load i32, i32* %6, align 4
  %179 = load i8*, i8** %2, align 8
  %180 = call i32 @lstrlenA(i8* %179)
  %181 = add nsw i32 %180, 1
  %182 = call i32 (i32, i8*, ...) @ok(i32 %177, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %178, i32 %181)
  %183 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %184 = load i8*, i8** %2, align 8
  %185 = call i32 @strcmp(i8* %183, i8* %184)
  %186 = icmp ne i32 %185, 0
  %187 = xor i1 %186, true
  %188 = zext i1 %187 to i32
  %189 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %190 = call i32 (i32, i8*, ...) @ok(i32 %188, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8* %189)
  %191 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %192 = call i32 @strcpy(i8* %191, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %193 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %194 = getelementptr inbounds [32768 x i8], [32768 x i8]* %5, i64 0, i64 0
  %195 = call i32 @ExpandEnvironmentStringsA(i8* %193, i8* %194, i32 32768)
  store i32 %195, i32* %6, align 4
  %196 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %197 = getelementptr inbounds [32768 x i8], [32768 x i8]* %5, i64 0, i64 0
  %198 = call i32 @strcmp(i8* %196, i8* %197)
  %199 = icmp ne i32 %198, 0
  %200 = xor i1 %199, true
  %201 = zext i1 %200 to i32
  %202 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %203 = getelementptr inbounds [32768 x i8], [32768 x i8]* %5, i64 0, i64 0
  %204 = load i32, i32* %6, align 4
  %205 = call i32 (i32, i8*, ...) @ok(i32 %201, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i64 0, i64 0), i8* %202, i8* %203, i32 %204)
  %206 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %207 = call i32 @GetWindowsDirectoryA(i8* %206, i32 256)
  store i32 %207, i32* %7, align 4
  %208 = load i32, i32* %7, align 4
  %209 = icmp sgt i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %175
  %211 = load i32, i32* %7, align 4
  %212 = icmp slt i32 %211, 256
  br label %213

213:                                              ; preds = %210, %175
  %214 = phi i1 [ false, %175 ], [ %212, %210 ]
  %215 = zext i1 %214 to i32
  %216 = call i32 (i32, i8*, ...) @ok(i32 %215, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  %217 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %218 = call i32 @ExpandEnvironmentStringsA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8* %217, i32 256)
  store i32 %218, i32* %6, align 4
  %219 = load i64, i64* @ERROR_ENVVAR_NOT_FOUND, align 8
  %220 = call i64 (...) @GetLastError()
  %221 = icmp ne i64 %219, %220
  br i1 %221, label %222, label %233

222:                                              ; preds = %213
  %223 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %224 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %225 = call i32 @strcmp(i8* %223, i8* %224)
  %226 = icmp ne i32 %225, 0
  %227 = xor i1 %226, true
  %228 = zext i1 %227 to i32
  %229 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %230 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %231 = load i32, i32* %6, align 4
  %232 = call i32 (i32, i8*, ...) @ok(i32 %228, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i64 0, i64 0), i8* %229, i8* %230, i32 %231)
  br label %233

233:                                              ; preds = %222, %213
  %234 = call i32 @SetEnvironmentVariableA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  %235 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %236 = call i32 @strcpy(i8* %235, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0))
  %237 = getelementptr inbounds [32768 x i8], [32768 x i8]* %5, i64 0, i64 0
  %238 = call i32 @strcpy(i8* %237, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0))
  %239 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %240 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %241 = call i32 @ExpandEnvironmentStringsA(i8* %239, i8* %240, i32 256)
  store i32 %241, i32* %6, align 4
  %242 = load i32, i32* %6, align 4
  %243 = getelementptr inbounds [32768 x i8], [32768 x i8]* %5, i64 0, i64 0
  %244 = call i32 @strlen(i8* %243)
  %245 = add nsw i32 %244, 1
  %246 = icmp eq i32 %242, %245
  br i1 %246, label %254, label %247

247:                                              ; preds = %233
  %248 = load i32, i32* %6, align 4
  %249 = getelementptr inbounds [32768 x i8], [32768 x i8]* %5, i64 0, i64 0
  %250 = call i32 @strlen(i8* %249)
  %251 = add nsw i32 %250, 1
  %252 = mul nsw i32 %251, 2
  %253 = icmp eq i32 %248, %252
  br label %254

254:                                              ; preds = %247, %233
  %255 = phi i1 [ true, %233 ], [ %253, %247 ]
  %256 = zext i1 %255 to i32
  %257 = load i32, i32* %6, align 4
  %258 = getelementptr inbounds [32768 x i8], [32768 x i8]* %5, i64 0, i64 0
  %259 = call i32 @lstrlenA(i8* %258)
  %260 = add nsw i32 %259, 1
  %261 = call i32 (i32, i8*, ...) @ok(i32 %256, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %257, i32 %260)
  %262 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %263 = getelementptr inbounds [32768 x i8], [32768 x i8]* %5, i64 0, i64 0
  %264 = call i32 @strcmp(i8* %262, i8* %263)
  %265 = icmp ne i32 %264, 0
  %266 = xor i1 %265, true
  %267 = zext i1 %266 to i32
  %268 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %269 = call i32 (i32, i8*, ...) @ok(i32 %267, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8* %268)
  %270 = call i32 @SetEnvironmentVariableA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8* null)
  %271 = call i32 @SetEnvironmentVariableA(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* null)
  ret void
}

declare dso_local i32 @SetEnvironmentVariableA(i8*, i8*) #1

declare dso_local i32 @ExpandEnvironmentStringsA(i8*, i8*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @lstrlenA(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @GetWindowsDirectoryA(i8*, i32) #1

declare dso_local i64 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

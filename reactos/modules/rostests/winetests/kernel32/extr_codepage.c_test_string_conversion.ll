; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_codepage.c_test_string_conversion.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_codepage.c_test_string_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_string_conversion.wcs = internal constant [5 x i8] c"Th@i\00", align 1
@test_string_conversion.dbwcs = internal constant [3 x i8] c"\19@\00", align 1
@test_string_conversion.dbwcs2 = internal constant [6 x i8] c"\B8=\13\00}\00", align 1
@test_string_conversion.default_char = internal constant [3 x i8] c"\A3\BF\00", align 1
@.str = private unnamed_addr constant [11 x i8] c"ret is %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"mbc is %d\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"bUsedDefaultChar is %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"GetLastError() is %u\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Codepage 1251 not available\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"Th?i\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"mbs is %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"Th?\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@WC_COMPOSITECHECK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"\F3\E7=\A3\BF\A3\BF\A3\BF\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Codepage 950 not available\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"\B5H\A9\D2\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"\B5H\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_string_conversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_string_conversion(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8, align 1
  %4 = alloca [15 x i8], align 1
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store i32* %0, i32** %2, align 8
  store i8 -28, i8* %6, align 1
  store i8 64, i8* %7, align 1
  %8 = call i32 @SetLastError(i32 -559038737)
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @WideCharToMultiByte(i32 1252, i32 0, i8* %6, i32 1, i8* %3, i32 1, i8* null, i32* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 1
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* %5, align 4
  %15 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i8, i8* %3, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, -28
  %19 = zext i1 %18 to i32
  %20 = load i8, i8* %3, align 1
  %21 = sext i8 %20 to i32
  %22 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32*, i32** %2, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %1
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @FALSE, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %25, %1
  %35 = call i32 (...) @GetLastError()
  %36 = icmp eq i32 %35, -559038737
  %37 = zext i1 %36 to i32
  %38 = call i32 (...) @GetLastError()
  %39 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  %40 = call i32 @SetLastError(i32 -559038737)
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @WideCharToMultiByte(i32 1252, i32 0, i8* %7, i32 1, i8* %3, i32 1, i8* null, i32* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %43, 1
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* %5, align 4
  %47 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i8, i8* %3, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 63
  %51 = zext i1 %50 to i32
  %52 = load i8, i8* %3, align 1
  %53 = sext i8 %52 to i32
  %54 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32*, i32** %2, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %34
  %58 = load i32*, i32** %2, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @TRUE, align 4
  %61 = icmp eq i32 %59, %60
  %62 = zext i1 %61 to i32
  %63 = load i32*, i32** %2, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %57, %34
  %67 = call i32 (...) @GetLastError()
  %68 = icmp eq i32 %67, -559038737
  %69 = zext i1 %68 to i32
  %70 = call i32 (...) @GetLastError()
  %71 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  %72 = call i64 @IsValidCodePage(i32 1251)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %147

74:                                               ; preds = %66
  %75 = call i32 @SetLastError(i32 -559038737)
  %76 = load i32*, i32** %2, align 8
  %77 = call i32 @WideCharToMultiByte(i32 1251, i32 0, i8* %7, i32 1, i8* %3, i32 1, i8* null, i32* %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp eq i32 %78, 1
  %80 = zext i1 %79 to i32
  %81 = load i32, i32* %5, align 4
  %82 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %81)
  %83 = load i8, i8* %3, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, -16
  %86 = zext i1 %85 to i32
  %87 = load i8, i8* %3, align 1
  %88 = sext i8 %87 to i32
  %89 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load i32*, i32** %2, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %101

92:                                               ; preds = %74
  %93 = load i32*, i32** %2, align 8
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @FALSE, align 4
  %96 = icmp eq i32 %94, %95
  %97 = zext i1 %96 to i32
  %98 = load i32*, i32** %2, align 8
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %92, %74
  %102 = call i32 (...) @GetLastError()
  %103 = icmp eq i32 %102, -559038737
  br i1 %103, label %110, label %104

104:                                              ; preds = %101
  %105 = call i32 (...) @GetLastError()
  %106 = icmp eq i32 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i64 @broken(i32 %107)
  %109 = icmp ne i64 %108, 0
  br label %110

110:                                              ; preds = %104, %101
  %111 = phi i1 [ true, %101 ], [ %109, %104 ]
  %112 = zext i1 %111 to i32
  %113 = call i32 (...) @GetLastError()
  %114 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  %115 = call i32 @SetLastError(i32 -559038737)
  %116 = load i32*, i32** %2, align 8
  %117 = call i32 @WideCharToMultiByte(i32 1251, i32 0, i8* %6, i32 1, i8* %3, i32 1, i8* null, i32* %116)
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* %5, align 4
  %119 = icmp eq i32 %118, 1
  %120 = zext i1 %119 to i32
  %121 = load i32, i32* %5, align 4
  %122 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %121)
  %123 = load i8, i8* %3, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 97
  %126 = zext i1 %125 to i32
  %127 = load i8, i8* %3, align 1
  %128 = sext i8 %127 to i32
  %129 = call i32 (i32, i8*, ...) @ok(i32 %126, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %128)
  %130 = load i32*, i32** %2, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %141

132:                                              ; preds = %110
  %133 = load i32*, i32** %2, align 8
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @FALSE, align 4
  %136 = icmp eq i32 %134, %135
  %137 = zext i1 %136 to i32
  %138 = load i32*, i32** %2, align 8
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (i32, i8*, ...) @ok(i32 %137, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %139)
  br label %141

141:                                              ; preds = %132, %110
  %142 = call i32 (...) @GetLastError()
  %143 = icmp eq i32 %142, -559038737
  %144 = zext i1 %143 to i32
  %145 = call i32 (...) @GetLastError()
  %146 = call i32 (i32, i8*, ...) @ok(i32 %144, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %145)
  br label %149

147:                                              ; preds = %66
  %148 = call i32 @skip(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %141
  %150 = call i32 @SetLastError(i32 -559038737)
  %151 = load i32*, i32** %2, align 8
  %152 = call i32 @WideCharToMultiByte(i32 1252, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_string_conversion.wcs, i64 0, i64 0), i32 -1, i8* %3, i32 1, i8* null, i32* %151)
  store i32 %152, i32* %5, align 4
  %153 = load i32, i32* %5, align 4
  %154 = icmp eq i32 %153, 0
  %155 = zext i1 %154 to i32
  %156 = load i32, i32* %5, align 4
  %157 = call i32 (i32, i8*, ...) @ok(i32 %155, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %156)
  %158 = load i8, i8* %3, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp eq i32 %159, 84
  %161 = zext i1 %160 to i32
  %162 = load i8, i8* %3, align 1
  %163 = sext i8 %162 to i32
  %164 = call i32 (i32, i8*, ...) @ok(i32 %161, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %163)
  %165 = load i32*, i32** %2, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %176

167:                                              ; preds = %149
  %168 = load i32*, i32** %2, align 8
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @FALSE, align 4
  %171 = icmp eq i32 %169, %170
  %172 = zext i1 %171 to i32
  %173 = load i32*, i32** %2, align 8
  %174 = load i32, i32* %173, align 4
  %175 = call i32 (i32, i8*, ...) @ok(i32 %172, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %174)
  br label %176

176:                                              ; preds = %167, %149
  %177 = call i32 (...) @GetLastError()
  %178 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %179 = icmp eq i32 %177, %178
  %180 = zext i1 %179 to i32
  %181 = call i32 (...) @GetLastError()
  %182 = call i32 (i32, i8*, ...) @ok(i32 %180, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %181)
  %183 = call i32 @SetLastError(i32 -559038737)
  %184 = getelementptr inbounds [15 x i8], [15 x i8]* %4, i64 0, i64 0
  %185 = load i32*, i32** %2, align 8
  %186 = call i32 @WideCharToMultiByte(i32 1252, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_string_conversion.wcs, i64 0, i64 0), i32 -1, i8* %184, i32 15, i8* null, i32* %185)
  store i32 %186, i32* %5, align 4
  %187 = load i32, i32* %5, align 4
  %188 = icmp eq i32 %187, 5
  %189 = zext i1 %188 to i32
  %190 = load i32, i32* %5, align 4
  %191 = call i32 (i32, i8*, ...) @ok(i32 %189, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %190)
  %192 = getelementptr inbounds [15 x i8], [15 x i8]* %4, i64 0, i64 0
  %193 = call i32 @strcmp(i8* %192, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %194 = icmp ne i32 %193, 0
  %195 = xor i1 %194, true
  %196 = zext i1 %195 to i32
  %197 = getelementptr inbounds [15 x i8], [15 x i8]* %4, i64 0, i64 0
  %198 = call i32 (i32, i8*, ...) @ok(i32 %196, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %197)
  %199 = load i32*, i32** %2, align 8
  %200 = icmp ne i32* %199, null
  br i1 %200, label %201, label %210

201:                                              ; preds = %176
  %202 = load i32*, i32** %2, align 8
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @TRUE, align 4
  %205 = icmp eq i32 %203, %204
  %206 = zext i1 %205 to i32
  %207 = load i32*, i32** %2, align 8
  %208 = load i32, i32* %207, align 4
  %209 = call i32 (i32, i8*, ...) @ok(i32 %206, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %208)
  br label %210

210:                                              ; preds = %201, %176
  %211 = call i32 (...) @GetLastError()
  %212 = icmp eq i32 %211, -559038737
  %213 = zext i1 %212 to i32
  %214 = call i32 (...) @GetLastError()
  %215 = call i32 (i32, i8*, ...) @ok(i32 %213, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %214)
  %216 = getelementptr inbounds [15 x i8], [15 x i8]* %4, i64 0, i64 0
  store i8 0, i8* %216, align 1
  %217 = call i32 @SetLastError(i32 -559038737)
  %218 = getelementptr inbounds [15 x i8], [15 x i8]* %4, i64 0, i64 0
  %219 = load i32*, i32** %2, align 8
  %220 = call i32 @WideCharToMultiByte(i32 1252, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_string_conversion.wcs, i64 0, i64 0), i32 3, i8* %218, i32 15, i8* null, i32* %219)
  store i32 %220, i32* %5, align 4
  %221 = load i32, i32* %5, align 4
  %222 = icmp eq i32 %221, 3
  %223 = zext i1 %222 to i32
  %224 = load i32, i32* %5, align 4
  %225 = call i32 (i32, i8*, ...) @ok(i32 %223, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %224)
  %226 = getelementptr inbounds [15 x i8], [15 x i8]* %4, i64 0, i64 0
  %227 = call i32 @strcmp(i8* %226, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %228 = icmp ne i32 %227, 0
  %229 = xor i1 %228, true
  %230 = zext i1 %229 to i32
  %231 = getelementptr inbounds [15 x i8], [15 x i8]* %4, i64 0, i64 0
  %232 = call i32 (i32, i8*, ...) @ok(i32 %230, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %231)
  %233 = load i32*, i32** %2, align 8
  %234 = icmp ne i32* %233, null
  br i1 %234, label %235, label %244

235:                                              ; preds = %210
  %236 = load i32*, i32** %2, align 8
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @TRUE, align 4
  %239 = icmp eq i32 %237, %238
  %240 = zext i1 %239 to i32
  %241 = load i32*, i32** %2, align 8
  %242 = load i32, i32* %241, align 4
  %243 = call i32 (i32, i8*, ...) @ok(i32 %240, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %242)
  br label %244

244:                                              ; preds = %235, %210
  %245 = call i32 (...) @GetLastError()
  %246 = icmp eq i32 %245, -559038737
  %247 = zext i1 %246 to i32
  %248 = call i32 (...) @GetLastError()
  %249 = call i32 (i32, i8*, ...) @ok(i32 %247, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %248)
  %250 = getelementptr inbounds [15 x i8], [15 x i8]* %4, i64 0, i64 0
  %251 = call i32 @ZeroMemory(i8* %250, i32 5)
  %252 = call i32 @SetLastError(i32 -559038737)
  %253 = getelementptr inbounds [15 x i8], [15 x i8]* %4, i64 0, i64 0
  %254 = load i32*, i32** %2, align 8
  %255 = call i32 @WideCharToMultiByte(i32 1252, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_string_conversion.wcs, i64 0, i64 0), i32 3, i8* %253, i32 15, i8* null, i32* %254)
  store i32 %255, i32* %5, align 4
  %256 = load i32, i32* %5, align 4
  %257 = icmp eq i32 %256, 3
  %258 = zext i1 %257 to i32
  %259 = load i32, i32* %5, align 4
  %260 = call i32 (i32, i8*, ...) @ok(i32 %258, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %259)
  %261 = getelementptr inbounds [15 x i8], [15 x i8]* %4, i64 0, i64 0
  %262 = call i32 @strcmp(i8* %261, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %263 = icmp ne i32 %262, 0
  %264 = xor i1 %263, true
  %265 = zext i1 %264 to i32
  %266 = getelementptr inbounds [15 x i8], [15 x i8]* %4, i64 0, i64 0
  %267 = call i32 (i32, i8*, ...) @ok(i32 %265, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %266)
  %268 = load i32*, i32** %2, align 8
  %269 = icmp ne i32* %268, null
  br i1 %269, label %270, label %279

270:                                              ; preds = %244
  %271 = load i32*, i32** %2, align 8
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @TRUE, align 4
  %274 = icmp eq i32 %272, %273
  %275 = zext i1 %274 to i32
  %276 = load i32*, i32** %2, align 8
  %277 = load i32, i32* %276, align 4
  %278 = call i32 (i32, i8*, ...) @ok(i32 %275, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %277)
  br label %279

279:                                              ; preds = %270, %244
  %280 = call i32 (...) @GetLastError()
  %281 = icmp eq i32 %280, -559038737
  %282 = zext i1 %281 to i32
  %283 = call i32 (...) @GetLastError()
  %284 = call i32 (i32, i8*, ...) @ok(i32 %282, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %283)
  %285 = getelementptr inbounds [15 x i8], [15 x i8]* %4, i64 0, i64 0
  %286 = load i32*, i32** %2, align 8
  %287 = call i32 @WideCharToMultiByte(i32 1252, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_string_conversion.dbwcs, i64 0, i64 0), i32 3, i8* %285, i32 15, i8* null, i32* %286)
  store i32 %287, i32* %5, align 4
  %288 = load i32, i32* %5, align 4
  %289 = icmp eq i32 %288, 3
  %290 = zext i1 %289 to i32
  %291 = load i32, i32* %5, align 4
  %292 = call i32 (i32, i8*, ...) @ok(i32 %290, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %291)
  %293 = getelementptr inbounds [15 x i8], [15 x i8]* %4, i64 0, i64 0
  %294 = call i32 @strcmp(i8* %293, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %295 = icmp ne i32 %294, 0
  %296 = xor i1 %295, true
  %297 = zext i1 %296 to i32
  %298 = getelementptr inbounds [15 x i8], [15 x i8]* %4, i64 0, i64 0
  %299 = call i32 (i32, i8*, ...) @ok(i32 %297, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %298)
  %300 = load i32*, i32** %2, align 8
  %301 = icmp ne i32* %300, null
  br i1 %301, label %302, label %311

302:                                              ; preds = %279
  %303 = load i32*, i32** %2, align 8
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* @TRUE, align 4
  %306 = icmp eq i32 %304, %305
  %307 = zext i1 %306 to i32
  %308 = load i32*, i32** %2, align 8
  %309 = load i32, i32* %308, align 4
  %310 = call i32 (i32, i8*, ...) @ok(i32 %307, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %309)
  br label %311

311:                                              ; preds = %302, %279
  %312 = load i32, i32* @WC_COMPOSITECHECK, align 4
  %313 = getelementptr inbounds [15 x i8], [15 x i8]* %4, i64 0, i64 0
  %314 = load i32*, i32** %2, align 8
  %315 = call i32 @WideCharToMultiByte(i32 936, i32 %312, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_string_conversion.dbwcs2, i64 0, i64 0), i32 -1, i8* %313, i32 15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_string_conversion.default_char, i64 0, i64 0), i32* %314)
  store i32 %315, i32* %5, align 4
  %316 = load i32, i32* %5, align 4
  %317 = icmp eq i32 %316, 10
  %318 = zext i1 %317 to i32
  %319 = load i32, i32* %5, align 4
  %320 = call i32 (i32, i8*, ...) @ok(i32 %318, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %319)
  %321 = getelementptr inbounds [15 x i8], [15 x i8]* %4, i64 0, i64 0
  %322 = call i32 @strcmp(i8* %321, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %323 = icmp ne i32 %322, 0
  %324 = xor i1 %323, true
  %325 = zext i1 %324 to i32
  %326 = getelementptr inbounds [15 x i8], [15 x i8]* %4, i64 0, i64 0
  %327 = call i32 (i32, i8*, ...) @ok(i32 %325, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %326)
  %328 = load i32*, i32** %2, align 8
  %329 = icmp ne i32* %328, null
  br i1 %329, label %330, label %339

330:                                              ; preds = %311
  %331 = load i32*, i32** %2, align 8
  %332 = load i32, i32* %331, align 4
  %333 = load i32, i32* @TRUE, align 4
  %334 = icmp eq i32 %332, %333
  %335 = zext i1 %334 to i32
  %336 = load i32*, i32** %2, align 8
  %337 = load i32, i32* %336, align 4
  %338 = call i32 (i32, i8*, ...) @ok(i32 %335, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %337)
  br label %339

339:                                              ; preds = %330, %311
  %340 = call i32 @SetLastError(i32 -559038737)
  %341 = load i32*, i32** %2, align 8
  %342 = call i32 @WideCharToMultiByte(i32 1252, i32 0, i8* %7, i32 1, i8* null, i32 0, i8* null, i32* %341)
  store i32 %342, i32* %5, align 4
  %343 = load i32, i32* %5, align 4
  %344 = icmp eq i32 %343, 1
  %345 = zext i1 %344 to i32
  %346 = load i32, i32* %5, align 4
  %347 = call i32 (i32, i8*, ...) @ok(i32 %345, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %346)
  %348 = load i32*, i32** %2, align 8
  %349 = icmp ne i32* %348, null
  br i1 %349, label %350, label %359

350:                                              ; preds = %339
  %351 = load i32*, i32** %2, align 8
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* @TRUE, align 4
  %354 = icmp eq i32 %352, %353
  %355 = zext i1 %354 to i32
  %356 = load i32*, i32** %2, align 8
  %357 = load i32, i32* %356, align 4
  %358 = call i32 (i32, i8*, ...) @ok(i32 %355, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %357)
  br label %359

359:                                              ; preds = %350, %339
  %360 = call i32 (...) @GetLastError()
  %361 = icmp eq i32 %360, -559038737
  %362 = zext i1 %361 to i32
  %363 = call i32 (...) @GetLastError()
  %364 = call i32 (i32, i8*, ...) @ok(i32 %362, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %363)
  %365 = call i32 @SetLastError(i32 -559038737)
  %366 = load i32*, i32** %2, align 8
  %367 = call i32 @WideCharToMultiByte(i32 1252, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_string_conversion.wcs, i64 0, i64 0), i32 -1, i8* null, i32 0, i8* null, i32* %366)
  store i32 %367, i32* %5, align 4
  %368 = load i32, i32* %5, align 4
  %369 = icmp eq i32 %368, 5
  %370 = zext i1 %369 to i32
  %371 = load i32, i32* %5, align 4
  %372 = call i32 (i32, i8*, ...) @ok(i32 %370, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %371)
  %373 = load i32*, i32** %2, align 8
  %374 = icmp ne i32* %373, null
  br i1 %374, label %375, label %384

375:                                              ; preds = %359
  %376 = load i32*, i32** %2, align 8
  %377 = load i32, i32* %376, align 4
  %378 = load i32, i32* @TRUE, align 4
  %379 = icmp eq i32 %377, %378
  %380 = zext i1 %379 to i32
  %381 = load i32*, i32** %2, align 8
  %382 = load i32, i32* %381, align 4
  %383 = call i32 (i32, i8*, ...) @ok(i32 %380, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %382)
  br label %384

384:                                              ; preds = %375, %359
  %385 = call i32 (...) @GetLastError()
  %386 = icmp eq i32 %385, -559038737
  %387 = zext i1 %386 to i32
  %388 = call i32 (...) @GetLastError()
  %389 = call i32 (i32, i8*, ...) @ok(i32 %387, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %388)
  %390 = call i64 @IsValidCodePage(i32 950)
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %394, label %392

392:                                              ; preds = %384
  %393 = call i32 @skip(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  br label %539

394:                                              ; preds = %384
  %395 = call i32 @SetLastError(i32 -559038737)
  %396 = getelementptr inbounds [15 x i8], [15 x i8]* %4, i64 0, i64 0
  %397 = load i32*, i32** %2, align 8
  %398 = call i32 @WideCharToMultiByte(i32 950, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_string_conversion.dbwcs, i64 0, i64 0), i32 -1, i8* %396, i32 15, i8* null, i32* %397)
  store i32 %398, i32* %5, align 4
  %399 = load i32, i32* %5, align 4
  %400 = icmp eq i32 %399, 5
  %401 = zext i1 %400 to i32
  %402 = load i32, i32* %5, align 4
  %403 = call i32 (i32, i8*, ...) @ok(i32 %401, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %402)
  %404 = getelementptr inbounds [15 x i8], [15 x i8]* %4, i64 0, i64 0
  %405 = call i32 @strcmp(i8* %404, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %406 = icmp ne i32 %405, 0
  %407 = xor i1 %406, true
  %408 = zext i1 %407 to i32
  %409 = getelementptr inbounds [15 x i8], [15 x i8]* %4, i64 0, i64 0
  %410 = call i32 (i32, i8*, ...) @ok(i32 %408, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %409)
  %411 = load i32*, i32** %2, align 8
  %412 = icmp ne i32* %411, null
  br i1 %412, label %413, label %422

413:                                              ; preds = %394
  %414 = load i32*, i32** %2, align 8
  %415 = load i32, i32* %414, align 4
  %416 = load i32, i32* @FALSE, align 4
  %417 = icmp eq i32 %415, %416
  %418 = zext i1 %417 to i32
  %419 = load i32*, i32** %2, align 8
  %420 = load i32, i32* %419, align 4
  %421 = call i32 (i32, i8*, ...) @ok(i32 %418, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %420)
  br label %422

422:                                              ; preds = %413, %394
  %423 = call i32 (...) @GetLastError()
  %424 = icmp eq i32 %423, -559038737
  %425 = zext i1 %424 to i32
  %426 = call i32 (...) @GetLastError()
  %427 = call i32 (i32, i8*, ...) @ok(i32 %425, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %426)
  %428 = call i32 @SetLastError(i32 -559038737)
  %429 = load i32*, i32** %2, align 8
  %430 = call i32 @WideCharToMultiByte(i32 950, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_string_conversion.dbwcs, i64 0, i64 0), i32 1, i8* %3, i32 1, i8* null, i32* %429)
  store i32 %430, i32* %5, align 4
  %431 = load i32, i32* %5, align 4
  %432 = icmp eq i32 %431, 0
  %433 = zext i1 %432 to i32
  %434 = load i32, i32* %5, align 4
  %435 = call i32 (i32, i8*, ...) @ok(i32 %433, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %434)
  %436 = load i32*, i32** %2, align 8
  %437 = icmp ne i32* %436, null
  br i1 %437, label %438, label %447

438:                                              ; preds = %422
  %439 = load i32*, i32** %2, align 8
  %440 = load i32, i32* %439, align 4
  %441 = load i32, i32* @FALSE, align 4
  %442 = icmp eq i32 %440, %441
  %443 = zext i1 %442 to i32
  %444 = load i32*, i32** %2, align 8
  %445 = load i32, i32* %444, align 4
  %446 = call i32 (i32, i8*, ...) @ok(i32 %443, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %445)
  br label %447

447:                                              ; preds = %438, %422
  %448 = call i32 (...) @GetLastError()
  %449 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %450 = icmp eq i32 %448, %449
  %451 = zext i1 %450 to i32
  %452 = call i32 (...) @GetLastError()
  %453 = call i32 (i32, i8*, ...) @ok(i32 %451, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %452)
  %454 = getelementptr inbounds [15 x i8], [15 x i8]* %4, i64 0, i64 0
  %455 = call i32 @ZeroMemory(i8* %454, i32 5)
  %456 = call i32 @SetLastError(i32 -559038737)
  %457 = getelementptr inbounds [15 x i8], [15 x i8]* %4, i64 0, i64 0
  %458 = load i32*, i32** %2, align 8
  %459 = call i32 @WideCharToMultiByte(i32 950, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_string_conversion.dbwcs, i64 0, i64 0), i32 1, i8* %457, i32 15, i8* null, i32* %458)
  store i32 %459, i32* %5, align 4
  %460 = load i32, i32* %5, align 4
  %461 = icmp eq i32 %460, 2
  %462 = zext i1 %461 to i32
  %463 = load i32, i32* %5, align 4
  %464 = call i32 (i32, i8*, ...) @ok(i32 %462, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %463)
  %465 = getelementptr inbounds [15 x i8], [15 x i8]* %4, i64 0, i64 0
  %466 = call i32 @strcmp(i8* %465, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %467 = icmp ne i32 %466, 0
  %468 = xor i1 %467, true
  %469 = zext i1 %468 to i32
  %470 = getelementptr inbounds [15 x i8], [15 x i8]* %4, i64 0, i64 0
  %471 = call i32 (i32, i8*, ...) @ok(i32 %469, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %470)
  %472 = load i32*, i32** %2, align 8
  %473 = icmp ne i32* %472, null
  br i1 %473, label %474, label %483

474:                                              ; preds = %447
  %475 = load i32*, i32** %2, align 8
  %476 = load i32, i32* %475, align 4
  %477 = load i32, i32* @FALSE, align 4
  %478 = icmp eq i32 %476, %477
  %479 = zext i1 %478 to i32
  %480 = load i32*, i32** %2, align 8
  %481 = load i32, i32* %480, align 4
  %482 = call i32 (i32, i8*, ...) @ok(i32 %479, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %481)
  br label %483

483:                                              ; preds = %474, %447
  %484 = call i32 (...) @GetLastError()
  %485 = icmp eq i32 %484, -559038737
  %486 = zext i1 %485 to i32
  %487 = call i32 (...) @GetLastError()
  %488 = call i32 (i32, i8*, ...) @ok(i32 %486, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %487)
  %489 = call i32 @SetLastError(i32 -559038737)
  %490 = load i32*, i32** %2, align 8
  %491 = call i32 @WideCharToMultiByte(i32 950, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_string_conversion.dbwcs, i64 0, i64 0), i32 1, i8* null, i32 0, i8* null, i32* %490)
  store i32 %491, i32* %5, align 4
  %492 = load i32, i32* %5, align 4
  %493 = icmp eq i32 %492, 2
  %494 = zext i1 %493 to i32
  %495 = load i32, i32* %5, align 4
  %496 = call i32 (i32, i8*, ...) @ok(i32 %494, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %495)
  %497 = load i32*, i32** %2, align 8
  %498 = icmp ne i32* %497, null
  br i1 %498, label %499, label %508

499:                                              ; preds = %483
  %500 = load i32*, i32** %2, align 8
  %501 = load i32, i32* %500, align 4
  %502 = load i32, i32* @FALSE, align 4
  %503 = icmp eq i32 %501, %502
  %504 = zext i1 %503 to i32
  %505 = load i32*, i32** %2, align 8
  %506 = load i32, i32* %505, align 4
  %507 = call i32 (i32, i8*, ...) @ok(i32 %504, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %506)
  br label %508

508:                                              ; preds = %499, %483
  %509 = call i32 (...) @GetLastError()
  %510 = icmp eq i32 %509, -559038737
  %511 = zext i1 %510 to i32
  %512 = call i32 (...) @GetLastError()
  %513 = call i32 (i32, i8*, ...) @ok(i32 %511, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %512)
  %514 = call i32 @SetLastError(i32 -559038737)
  %515 = load i32*, i32** %2, align 8
  %516 = call i32 @WideCharToMultiByte(i32 950, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_string_conversion.dbwcs, i64 0, i64 0), i32 -1, i8* null, i32 0, i8* null, i32* %515)
  store i32 %516, i32* %5, align 4
  %517 = load i32, i32* %5, align 4
  %518 = icmp eq i32 %517, 5
  %519 = zext i1 %518 to i32
  %520 = load i32, i32* %5, align 4
  %521 = call i32 (i32, i8*, ...) @ok(i32 %519, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %520)
  %522 = load i32*, i32** %2, align 8
  %523 = icmp ne i32* %522, null
  br i1 %523, label %524, label %533

524:                                              ; preds = %508
  %525 = load i32*, i32** %2, align 8
  %526 = load i32, i32* %525, align 4
  %527 = load i32, i32* @FALSE, align 4
  %528 = icmp eq i32 %526, %527
  %529 = zext i1 %528 to i32
  %530 = load i32*, i32** %2, align 8
  %531 = load i32, i32* %530, align 4
  %532 = call i32 (i32, i8*, ...) @ok(i32 %529, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %531)
  br label %533

533:                                              ; preds = %524, %508
  %534 = call i32 (...) @GetLastError()
  %535 = icmp eq i32 %534, -559038737
  %536 = zext i1 %535 to i32
  %537 = call i32 (...) @GetLastError()
  %538 = call i32 (i32, i8*, ...) @ok(i32 %536, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %537)
  br label %539

539:                                              ; preds = %533, %392
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i8*, i32, i8*, i32, i8*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @IsValidCodePage(i32) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @ZeroMemory(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

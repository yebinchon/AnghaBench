; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_clipboard.c_test_string_data_process.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_clipboard.c_test_string_data_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64*, i64* }

@.str = private unnamed_addr constant [8 x i8] c"gle %d\0A\00", align 1
@test_data = common dso_local global %struct.TYPE_2__* null, align 8
@CF_TEXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"%u: could not get data\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"%u: wrong size %u / %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"%u: wrong data %.*s\0A\00", align 1
@CF_UNICODETEXT = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"%u: wrong data %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"%u: got data for empty string\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"%u: text not available\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_string_data_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_string_data_process(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [12 x i8], align 1
  %8 = alloca [12 x i8], align 1
  store i32 %0, i32* %2, align 4
  %9 = call i32 @OpenClipboard(i32 0)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 (...) @GetLastError()
  %12 = call i32 (i32, i8*, i32, ...) @ok(i32 %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %127

22:                                               ; preds = %1
  %23 = load i32, i32* @CF_TEXT, align 4
  %24 = call i64 @GetClipboardData(i32 %23)
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %2, align 4
  %29 = call i32 (i32, i8*, i32, ...) @ok(i32 %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @GlobalSize(i64 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %32, %38
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %44 = load i32, i32* %2, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i32, i8*, i32, ...) @ok(i32 %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 %42, i32 %48)
  %50 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %52 = load i32, i32* %2, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i64*, i64** %55, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %58 = load i32, i32* %2, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @memcpy(i8* %50, i64* %56, i32 %62)
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %65 = load i32, i32* %2, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 %71
  store i8 0, i8* %72, align 1
  %73 = load i64, i64* %4, align 8
  %74 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 0
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @memcmp(i64 %73, i8* %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* %2, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load i64, i64* %4, align 8
  %83 = inttoptr i64 %82 to i8*
  %84 = call i32 (i32, i8*, i32, ...) @ok(i32 %79, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %80, i32 %81, i8* %83)
  %85 = load i32, i32* @CF_UNICODETEXT, align 4
  %86 = call i64 @GetClipboardData(i32 %85)
  store i64 %86, i64* %4, align 8
  %87 = load i64, i64* %4, align 8
  %88 = icmp ne i64 %87, 0
  %89 = zext i1 %88 to i32
  %90 = load i32, i32* %2, align 4
  %91 = call i32 (i32, i8*, i32, ...) @ok(i32 %89, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = load i64, i64* %4, align 8
  %93 = call i32 @GlobalSize(i64 %92)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* @CP_ACP, align 4
  %95 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %97 = load i32, i32* %2, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %103 = call i32 @MultiByteToWideChar(i32 %94, i32 0, i8* %95, i32 %101, i8* %102, i32 12)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 1
  %109 = icmp eq i64 %105, %108
  %110 = zext i1 %109 to i32
  %111 = load i32, i32* %2, align 4
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* %6, align 4
  %114 = call i32 (i32, i8*, i32, ...) @ok(i32 %110, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %111, i32 %112, i32 %113)
  %115 = load i64, i64* %4, align 8
  %116 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @memcmp(i64 %115, i8* %116, i32 %117)
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  %121 = zext i1 %120 to i32
  %122 = load i32, i32* %2, align 4
  %123 = load i64, i64* %4, align 8
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @wine_dbgstr_wn(i64 %123, i32 %124)
  %126 = call i32 (i32, i8*, i32, ...) @ok(i32 %121, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %122, i32 %125)
  br label %263

127:                                              ; preds = %1
  %128 = load i32, i32* @CF_UNICODETEXT, align 4
  %129 = call i64 @GetClipboardData(i32 %128)
  store i64 %129, i64* %4, align 8
  %130 = load i64, i64* %4, align 8
  %131 = icmp ne i64 %130, 0
  %132 = zext i1 %131 to i32
  %133 = load i32, i32* %2, align 4
  %134 = call i32 (i32, i8*, i32, ...) @ok(i32 %132, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %133)
  %135 = load i64, i64* %4, align 8
  %136 = call i32 @GlobalSize(i64 %135)
  store i32 %136, i32* %5, align 4
  %137 = load i32, i32* %5, align 4
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %139 = load i32, i32* %2, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp eq i32 %137, %143
  %145 = zext i1 %144 to i32
  %146 = load i32, i32* %2, align 4
  %147 = load i32, i32* %5, align 4
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %149 = load i32, i32* %2, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 (i32, i8*, i32, ...) @ok(i32 %145, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %146, i32 %147, i32 %153)
  %155 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %157 = load i32, i32* %2, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  %161 = load i64*, i64** %160, align 8
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %163 = load i32, i32* %2, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @memcpy(i8* %155, i64* %161, i32 %167)
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %170 = load i32, i32* %2, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = add nsw i32 %174, 1
  %176 = sext i32 %175 to i64
  %177 = udiv i64 %176, 1
  %178 = sub i64 %177, 1
  %179 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 %178
  store i8 0, i8* %179, align 1
  %180 = load i64, i64* %4, align 8
  %181 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %182 = load i32, i32* %5, align 4
  %183 = call i32 @memcmp(i64 %180, i8* %181, i32 %182)
  %184 = icmp ne i32 %183, 0
  %185 = xor i1 %184, true
  %186 = zext i1 %185 to i32
  %187 = load i32, i32* %2, align 4
  %188 = load i64, i64* %4, align 8
  %189 = load i32, i32* %5, align 4
  %190 = add nsw i32 %189, 1
  %191 = sext i32 %190 to i64
  %192 = udiv i64 %191, 1
  %193 = trunc i64 %192 to i32
  %194 = call i32 @wine_dbgstr_wn(i64 %188, i32 %193)
  %195 = call i32 (i32, i8*, i32, ...) @ok(i32 %186, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %187, i32 %194)
  %196 = load i32, i32* @CF_TEXT, align 4
  %197 = call i64 @GetClipboardData(i32 %196)
  store i64 %197, i64* %4, align 8
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %199 = load i32, i32* %2, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = sext i32 %203 to i64
  %205 = icmp uge i64 %204, 1
  br i1 %205, label %206, label %251

206:                                              ; preds = %127
  %207 = load i64, i64* %4, align 8
  %208 = icmp ne i64 %207, 0
  %209 = zext i1 %208 to i32
  %210 = load i32, i32* %2, align 4
  %211 = call i32 (i32, i8*, i32, ...) @ok(i32 %209, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %210)
  %212 = load i64, i64* %4, align 8
  %213 = call i32 @GlobalSize(i64 %212)
  store i32 %213, i32* %5, align 4
  %214 = load i32, i32* @CP_ACP, align 4
  %215 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %216 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %217 = load i32, i32* %2, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = sext i32 %221 to i64
  %223 = udiv i64 %222, 1
  %224 = trunc i64 %223 to i32
  %225 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 0
  %226 = call i32 @WideCharToMultiByte(i32 %214, i32 0, i8* %215, i32 %224, i8* %225, i32 12, i32* null, i32* null)
  store i32 %226, i32* %6, align 4
  %227 = load i32, i32* %6, align 4
  %228 = sub nsw i32 %227, 1
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 %229
  store i8 0, i8* %230, align 1
  %231 = load i32, i32* %5, align 4
  %232 = load i32, i32* %6, align 4
  %233 = icmp eq i32 %231, %232
  %234 = zext i1 %233 to i32
  %235 = load i32, i32* %2, align 4
  %236 = load i32, i32* %5, align 4
  %237 = load i32, i32* %6, align 4
  %238 = call i32 (i32, i8*, i32, ...) @ok(i32 %234, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %235, i32 %236, i32 %237)
  %239 = load i64, i64* %4, align 8
  %240 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 0
  %241 = load i32, i32* %5, align 4
  %242 = call i32 @memcmp(i64 %239, i8* %240, i32 %241)
  %243 = icmp ne i32 %242, 0
  %244 = xor i1 %243, true
  %245 = zext i1 %244 to i32
  %246 = load i32, i32* %2, align 4
  %247 = load i32, i32* %5, align 4
  %248 = load i64, i64* %4, align 8
  %249 = inttoptr i64 %248 to i8*
  %250 = call i32 (i32, i8*, i32, ...) @ok(i32 %245, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %246, i32 %247, i8* %249)
  br label %262

251:                                              ; preds = %127
  %252 = load i64, i64* %4, align 8
  %253 = icmp ne i64 %252, 0
  %254 = xor i1 %253, true
  %255 = zext i1 %254 to i32
  %256 = load i32, i32* %2, align 4
  %257 = call i32 (i32, i8*, i32, ...) @ok(i32 %255, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %256)
  %258 = load i32, i32* @CF_TEXT, align 4
  %259 = call i32 @IsClipboardFormatAvailable(i32 %258)
  %260 = load i32, i32* %2, align 4
  %261 = call i32 (i32, i8*, i32, ...) @ok(i32 %259, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %260)
  br label %262

262:                                              ; preds = %251, %206
  br label %263

263:                                              ; preds = %262, %22
  %264 = call i32 (...) @CloseClipboard()
  store i32 %264, i32* %3, align 4
  %265 = load i32, i32* %3, align 4
  %266 = call i32 (...) @GetLastError()
  %267 = call i32 (i32, i8*, i32, ...) @ok(i32 %265, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %266)
  ret void
}

declare dso_local i32 @OpenClipboard(i32) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @GetClipboardData(i32) #1

declare dso_local i32 @GlobalSize(i64) #1

declare dso_local i32 @memcpy(i8*, i64*, i32) #1

declare dso_local i32 @memcmp(i64, i8*, i32) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @wine_dbgstr_wn(i64, i32) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i8*, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @IsClipboardFormatAvailable(i32) #1

declare dso_local i32 @CloseClipboard(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

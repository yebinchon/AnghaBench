; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/kernel32/extr_ConsoleCP.c_test_cp932.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/kernel32/extr_ConsoleCP.c_test_cp932.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Codepage 932 not available\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"SetConsoleOutputCP failed with last error %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"GetConsoleScreenBufferInfo failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"csbi.dwSize.X:%d, csbi.dwSize.Y:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"count: %d\0A\00", align 1
@u0414 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"WriteConsoleW failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"ReadConsoleOutputCharacterW failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"len was: %ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"str[0] was: 0x%04X\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"str[1] was: 0x%04X\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"str[2] was: 0x%04X\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"SetConsoleCursorPosition failed\0A\00", align 1
@u9580 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [36 x i8] c"FillConsoleOutputCharacterW failed\0A\00", align 1
@ideograph_space = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [35 x i8] c"ReadConsoleOutputAttribute failed\0A\00", align 1
@ATTR = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [14 x i8] c"attr was: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"len was %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_cp932 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_cp932(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__, align 4
  %8 = alloca %struct.TYPE_12__, align 4
  %9 = alloca i32, align 4
  %10 = alloca [32 x i32], align 16
  %11 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %12 = call i32 @IsValidCodePage(i32 932)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %605

16:                                               ; preds = %1
  %17 = call i32 (...) @GetConsoleOutputCP()
  store i32 %17, i32* %4, align 4
  %18 = call i32 @SetLastError(i32 -559038737)
  %19 = call i32 @SetConsoleOutputCP(i32 932)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = call i32 (...) @GetLastError()
  %24 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  br label %605

25:                                               ; preds = %16
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @GetConsoleScreenBufferInfo(i32 %26, %struct.TYPE_12__* %8)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i8*, i32, ...) @trace(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %32, i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %39, 3
  %41 = sdiv i32 %40, 2
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 (i8*, i32, ...) @trace(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store i32 0, i32* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i32 0, i32* %45, align 4
  %46 = load i32, i32* %2, align 4
  %47 = bitcast %struct.TYPE_11__* %7 to i64*
  %48 = load i64, i64* %47, align 4
  %49 = call i32 @SetConsoleCursorPosition(i32 %46, i64 %48)
  %50 = load i32, i32* %2, align 4
  %51 = bitcast %struct.TYPE_11__* %7 to i64*
  %52 = load i64, i64* %51, align 4
  %53 = call i32 @okCURSOR(i32 %50, i64 %52)
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %75, %25
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %78

58:                                               ; preds = %54
  %59 = load i32, i32* %2, align 4
  %60 = load i32, i32* @u0414, align 4
  %61 = load i32, i32* @u0414, align 4
  %62 = call i32 @lstrlenW(i32 %61)
  %63 = call i32 @WriteConsoleW(i32 %59, i32 %60, i32 %62, i32* %6, i32* null)
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %3, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %58
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @u0414, align 4
  %69 = call i32 @lstrlenW(i32 %68)
  %70 = icmp eq i32 %67, %69
  br label %71

71:                                               ; preds = %66, %58
  %72 = phi i1 [ false, %58 ], [ %70, %66 ]
  %73 = zext i1 %72 to i32
  %74 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %54

78:                                               ; preds = %54
  %79 = load i32, i32* %2, align 4
  %80 = call i32 @GetConsoleScreenBufferInfo(i32 %79, %struct.TYPE_12__* %8)
  %81 = load i32, i32* %9, align 4
  %82 = mul nsw i32 %81, 2
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = srem i32 %83, %86
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to i8*
  %90 = ptrtoint i8* %89 to i32
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* %6, align 4
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = sdiv i32 %92, %95
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to i8*
  %99 = ptrtoint i8* %98 to i32
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* %2, align 4
  %102 = bitcast %struct.TYPE_11__* %7 to i64*
  %103 = load i64, i64* %102, align 4
  %104 = call i32 @okCURSOR(i32 %101, i64 %103)
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store i32 0, i32* %105, align 4
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i32 0, i32* %106, align 4
  %107 = load i32, i32* %2, align 4
  %108 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  %109 = bitcast %struct.TYPE_11__* %7 to i64*
  %110 = load i64, i64* %109, align 4
  %111 = call i32 @ReadConsoleOutputCharacterW(i32 %107, i32* %108, i32 12, i64 %110, i32* %6)
  store i32 %111, i32* %3, align 4
  %112 = load i32, i32* %3, align 4
  %113 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %114 = load i32, i32* %6, align 4
  %115 = icmp eq i32 %114, 3
  %116 = zext i1 %115 to i32
  %117 = load i32, i32* %6, align 4
  %118 = call i32 (i32, i8*, ...) @ok(i32 %116, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %117)
  %119 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  %120 = load i32, i32* %119, align 16
  %121 = icmp eq i32 %120, 1044
  %122 = zext i1 %121 to i32
  %123 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  %124 = load i32, i32* %123, align 16
  %125 = call i32 (i32, i8*, ...) @ok(i32 %122, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %124)
  %126 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %127, 1044
  %129 = zext i1 %128 to i32
  %130 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %131)
  %133 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 2
  %134 = load i32, i32* %133, align 8
  %135 = icmp eq i32 %134, 1044
  %136 = zext i1 %135 to i32
  %137 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %138)
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i32 1, i32* %140, align 4
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store i32 0, i32* %141, align 4
  %142 = load i32, i32* %2, align 4
  %143 = bitcast %struct.TYPE_11__* %7 to i64*
  %144 = load i64, i64* %143, align 4
  %145 = call i32 @SetConsoleCursorPosition(i32 %142, i64 %144)
  store i32 %145, i32* %3, align 4
  %146 = load i32, i32* %3, align 4
  %147 = call i32 (i32, i8*, ...) @ok(i32 %146, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  %148 = load i32, i32* %2, align 4
  %149 = bitcast %struct.TYPE_11__* %7 to i64*
  %150 = load i64, i64* %149, align 4
  %151 = call i32 @okCURSOR(i32 %148, i64 %150)
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store i32 0, i32* %152, align 4
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i32 0, i32* %153, align 4
  %154 = load i32, i32* %2, align 4
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = mul nsw i32 %157, %160
  %162 = bitcast %struct.TYPE_11__* %7 to i64*
  %163 = load i64, i64* %162, align 4
  %164 = call i32 @FillConsoleOutputCharacterW(i32 %154, i32 32, i32 %161, i64 %163, i32* %6)
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i32 1, i32* %165, align 4
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store i32 0, i32* %166, align 4
  %167 = load i32, i32* %2, align 4
  %168 = bitcast %struct.TYPE_11__* %7 to i64*
  %169 = load i64, i64* %168, align 4
  %170 = call i32 @SetConsoleCursorPosition(i32 %167, i64 %169)
  %171 = load i32, i32* %2, align 4
  %172 = bitcast %struct.TYPE_11__* %7 to i64*
  %173 = load i64, i64* %172, align 4
  %174 = call i32 @okCURSOR(i32 %171, i64 %173)
  store i32 0, i32* %5, align 4
  br label %175

175:                                              ; preds = %196, %78
  %176 = load i32, i32* %5, align 4
  %177 = load i32, i32* %9, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %199

179:                                              ; preds = %175
  %180 = load i32, i32* %2, align 4
  %181 = load i32, i32* @u0414, align 4
  %182 = load i32, i32* @u0414, align 4
  %183 = call i32 @lstrlenW(i32 %182)
  %184 = call i32 @WriteConsoleW(i32 %180, i32 %181, i32 %183, i32* %6, i32* null)
  store i32 %184, i32* %3, align 4
  %185 = load i32, i32* %3, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %179
  %188 = load i32, i32* %6, align 4
  %189 = load i32, i32* @u0414, align 4
  %190 = call i32 @lstrlenW(i32 %189)
  %191 = icmp eq i32 %188, %190
  br label %192

192:                                              ; preds = %187, %179
  %193 = phi i1 [ false, %179 ], [ %191, %187 ]
  %194 = zext i1 %193 to i32
  %195 = call i32 (i32, i8*, ...) @ok(i32 %194, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %196

196:                                              ; preds = %192
  %197 = load i32, i32* %5, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %5, align 4
  br label %175

199:                                              ; preds = %175
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %9, align 4
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = sub nsw i32 %206, 1
  %208 = sdiv i32 %207, 2
  %209 = sub nsw i32 %203, %208
  %210 = mul nsw i32 %209, 2
  %211 = add nsw i32 %202, %210
  store i32 %211, i32* %6, align 4
  %212 = load i32, i32* %6, align 4
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = srem i32 %212, %215
  %217 = sext i32 %216 to i64
  %218 = inttoptr i64 %217 to i8*
  %219 = ptrtoint i8* %218 to i32
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i32 %219, i32* %220, align 4
  %221 = load i32, i32* %6, align 4
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = sdiv i32 %221, %224
  %226 = sext i32 %225 to i64
  %227 = inttoptr i64 %226 to i8*
  %228 = ptrtoint i8* %227 to i32
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store i32 %228, i32* %229, align 4
  %230 = load i32, i32* %2, align 4
  %231 = bitcast %struct.TYPE_11__* %7 to i64*
  %232 = load i64, i64* %231, align 4
  %233 = call i32 @okCURSOR(i32 %230, i64 %232)
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i32 0, i32* %234, align 4
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store i32 0, i32* %235, align 4
  %236 = load i32, i32* %2, align 4
  %237 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  %238 = bitcast %struct.TYPE_11__* %7 to i64*
  %239 = load i64, i64* %238, align 4
  %240 = call i32 @ReadConsoleOutputCharacterW(i32 %236, i32* %237, i32 12, i64 %239, i32* %6)
  store i32 %240, i32* %3, align 4
  %241 = load i32, i32* %3, align 4
  %242 = call i32 (i32, i8*, ...) @ok(i32 %241, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %243 = load i32, i32* %6, align 4
  %244 = icmp eq i32 %243, 4
  %245 = zext i1 %244 to i32
  %246 = load i32, i32* %6, align 4
  %247 = call i32 (i32, i8*, ...) @ok(i32 %245, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %246)
  %248 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  %249 = load i32, i32* %248, align 16
  %250 = icmp eq i32 %249, 32
  %251 = zext i1 %250 to i32
  %252 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  %253 = load i32, i32* %252, align 16
  %254 = call i32 (i32, i8*, ...) @ok(i32 %251, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %253)
  %255 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 1
  %256 = load i32, i32* %255, align 4
  %257 = icmp eq i32 %256, 1044
  %258 = zext i1 %257 to i32
  %259 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 1
  %260 = load i32, i32* %259, align 4
  %261 = call i32 (i32, i8*, ...) @ok(i32 %258, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %260)
  %262 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 2
  %263 = load i32, i32* %262, align 8
  %264 = icmp eq i32 %263, 1044
  %265 = zext i1 %264 to i32
  %266 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 2
  %267 = load i32, i32* %266, align 8
  %268 = call i32 (i32, i8*, ...) @ok(i32 %265, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %267)
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store i32 0, i32* %269, align 4
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i32 0, i32* %270, align 4
  %271 = load i32, i32* %2, align 4
  %272 = bitcast %struct.TYPE_11__* %7 to i64*
  %273 = load i64, i64* %272, align 4
  %274 = call i32 @SetConsoleCursorPosition(i32 %271, i64 %273)
  %275 = load i32, i32* %2, align 4
  %276 = bitcast %struct.TYPE_11__* %7 to i64*
  %277 = load i64, i64* %276, align 4
  %278 = call i32 @okCURSOR(i32 %275, i64 %277)
  store i32 0, i32* %5, align 4
  br label %279

279:                                              ; preds = %300, %199
  %280 = load i32, i32* %5, align 4
  %281 = load i32, i32* %9, align 4
  %282 = icmp slt i32 %280, %281
  br i1 %282, label %283, label %303

283:                                              ; preds = %279
  %284 = load i32, i32* %2, align 4
  %285 = load i32, i32* @u9580, align 4
  %286 = load i32, i32* @u9580, align 4
  %287 = call i32 @lstrlenW(i32 %286)
  %288 = call i32 @WriteConsoleW(i32 %284, i32 %285, i32 %287, i32* %6, i32* null)
  store i32 %288, i32* %3, align 4
  %289 = load i32, i32* %3, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %296

291:                                              ; preds = %283
  %292 = load i32, i32* %6, align 4
  %293 = load i32, i32* @u9580, align 4
  %294 = call i32 @lstrlenW(i32 %293)
  %295 = icmp eq i32 %292, %294
  br label %296

296:                                              ; preds = %291, %283
  %297 = phi i1 [ false, %283 ], [ %295, %291 ]
  %298 = zext i1 %297 to i32
  %299 = call i32 (i32, i8*, ...) @ok(i32 %298, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %300

300:                                              ; preds = %296
  %301 = load i32, i32* %5, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %5, align 4
  br label %279

303:                                              ; preds = %279
  %304 = load i32, i32* %9, align 4
  %305 = mul nsw i32 %304, 2
  store i32 %305, i32* %6, align 4
  %306 = load i32, i32* %6, align 4
  %307 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = srem i32 %306, %309
  %311 = sext i32 %310 to i64
  %312 = inttoptr i64 %311 to i8*
  %313 = ptrtoint i8* %312 to i32
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i32 %313, i32* %314, align 4
  %315 = load i32, i32* %6, align 4
  %316 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = sdiv i32 %315, %318
  %320 = sext i32 %319 to i64
  %321 = inttoptr i64 %320 to i8*
  %322 = ptrtoint i8* %321 to i32
  %323 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store i32 %322, i32* %323, align 4
  %324 = load i32, i32* %2, align 4
  %325 = bitcast %struct.TYPE_11__* %7 to i64*
  %326 = load i64, i64* %325, align 4
  %327 = call i32 @okCURSOR(i32 %324, i64 %326)
  %328 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i32 1, i32* %328, align 4
  %329 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store i32 0, i32* %329, align 4
  %330 = load i32, i32* %2, align 4
  %331 = bitcast %struct.TYPE_11__* %7 to i64*
  %332 = load i64, i64* %331, align 4
  %333 = call i32 @SetConsoleCursorPosition(i32 %330, i64 %332)
  store i32 %333, i32* %3, align 4
  %334 = load i32, i32* %3, align 4
  %335 = call i32 (i32, i8*, ...) @ok(i32 %334, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  %336 = load i32, i32* %2, align 4
  %337 = bitcast %struct.TYPE_11__* %7 to i64*
  %338 = load i64, i64* %337, align 4
  %339 = call i32 @okCURSOR(i32 %336, i64 %338)
  %340 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store i32 0, i32* %340, align 4
  %341 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i32 0, i32* %341, align 4
  %342 = load i32, i32* %2, align 4
  %343 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  %346 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = mul nsw i32 %345, %348
  %350 = bitcast %struct.TYPE_11__* %7 to i64*
  %351 = load i64, i64* %350, align 4
  %352 = call i32 @FillConsoleOutputCharacterW(i32 %342, i32 32, i32 %349, i64 %351, i32* %6)
  store i32 %352, i32* %3, align 4
  %353 = load i32, i32* %3, align 4
  %354 = call i32 (i32, i8*, ...) @ok(i32 %353, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0))
  %355 = load i32, i32* %6, align 4
  %356 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = mul nsw i32 %358, %361
  %363 = icmp eq i32 %355, %362
  %364 = zext i1 %363 to i32
  %365 = load i32, i32* %6, align 4
  %366 = call i32 (i32, i8*, ...) @ok(i32 %364, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %365)
  %367 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i32 1, i32* %367, align 4
  %368 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store i32 0, i32* %368, align 4
  %369 = load i32, i32* %2, align 4
  %370 = bitcast %struct.TYPE_11__* %7 to i64*
  %371 = load i64, i64* %370, align 4
  %372 = call i32 @SetConsoleCursorPosition(i32 %369, i64 %371)
  %373 = load i32, i32* %2, align 4
  %374 = bitcast %struct.TYPE_11__* %7 to i64*
  %375 = load i64, i64* %374, align 4
  %376 = call i32 @okCURSOR(i32 %373, i64 %375)
  store i32 0, i32* %5, align 4
  br label %377

377:                                              ; preds = %398, %303
  %378 = load i32, i32* %5, align 4
  %379 = load i32, i32* %9, align 4
  %380 = icmp slt i32 %378, %379
  br i1 %380, label %381, label %401

381:                                              ; preds = %377
  %382 = load i32, i32* %2, align 4
  %383 = load i32, i32* @u9580, align 4
  %384 = load i32, i32* @u9580, align 4
  %385 = call i32 @lstrlenW(i32 %384)
  %386 = call i32 @WriteConsoleW(i32 %382, i32 %383, i32 %385, i32* %6, i32* null)
  store i32 %386, i32* %3, align 4
  %387 = load i32, i32* %3, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %394

389:                                              ; preds = %381
  %390 = load i32, i32* %6, align 4
  %391 = load i32, i32* @u9580, align 4
  %392 = call i32 @lstrlenW(i32 %391)
  %393 = icmp eq i32 %390, %392
  br label %394

394:                                              ; preds = %389, %381
  %395 = phi i1 [ false, %381 ], [ %393, %389 ]
  %396 = zext i1 %395 to i32
  %397 = call i32 (i32, i8*, ...) @ok(i32 %396, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %398

398:                                              ; preds = %394
  %399 = load i32, i32* %5, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %5, align 4
  br label %377

401:                                              ; preds = %377
  %402 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 4
  %405 = load i32, i32* %9, align 4
  %406 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %407 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 4
  %409 = sub nsw i32 %408, 1
  %410 = sdiv i32 %409, 2
  %411 = sub nsw i32 %405, %410
  %412 = mul nsw i32 %411, 2
  %413 = add nsw i32 %404, %412
  store i32 %413, i32* %6, align 4
  %414 = load i32, i32* %6, align 4
  %415 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %416 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 4
  %418 = srem i32 %414, %417
  %419 = sext i32 %418 to i64
  %420 = inttoptr i64 %419 to i8*
  %421 = ptrtoint i8* %420 to i32
  %422 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i32 %421, i32* %422, align 4
  %423 = load i32, i32* %6, align 4
  %424 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %425 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 4
  %427 = sdiv i32 %423, %426
  %428 = sext i32 %427 to i64
  %429 = inttoptr i64 %428 to i8*
  %430 = ptrtoint i8* %429 to i32
  %431 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store i32 %430, i32* %431, align 4
  %432 = load i32, i32* %2, align 4
  %433 = bitcast %struct.TYPE_11__* %7 to i64*
  %434 = load i64, i64* %433, align 4
  %435 = call i32 @okCURSOR(i32 %432, i64 %434)
  %436 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store i32 0, i32* %436, align 4
  %437 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i32 0, i32* %437, align 4
  %438 = load i32, i32* %2, align 4
  %439 = load i32, i32* @ideograph_space, align 4
  %440 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %441 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 4
  %443 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %444 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %443, i32 0, i32 1
  %445 = load i32, i32* %444, align 4
  %446 = mul nsw i32 %442, %445
  %447 = bitcast %struct.TYPE_11__* %7 to i64*
  %448 = load i64, i64* %447, align 4
  %449 = call i32 @FillConsoleOutputCharacterW(i32 %438, i32 %439, i32 %446, i64 %448, i32* %6)
  store i32 %449, i32* %3, align 4
  %450 = load i32, i32* %3, align 4
  %451 = call i32 (i32, i8*, ...) @ok(i32 %450, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0))
  %452 = load i32, i32* %6, align 4
  %453 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %454 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %453, i32 0, i32 0
  %455 = load i32, i32* %454, align 4
  %456 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %457 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %456, i32 0, i32 1
  %458 = load i32, i32* %457, align 4
  %459 = mul nsw i32 %455, %458
  %460 = icmp eq i32 %452, %459
  %461 = zext i1 %460 to i32
  %462 = load i32, i32* %6, align 4
  %463 = call i32 (i32, i8*, ...) @ok(i32 %461, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %462)
  %464 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store i32 0, i32* %464, align 4
  %465 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i32 0, i32* %465, align 4
  %466 = load i32, i32* %2, align 4
  %467 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  %468 = bitcast %struct.TYPE_11__* %7 to i64*
  %469 = load i64, i64* %468, align 4
  %470 = call i32 @ReadConsoleOutputCharacterW(i32 %466, i32* %467, i32 12, i64 %469, i32* %6)
  store i32 %470, i32* %3, align 4
  %471 = load i32, i32* %3, align 4
  %472 = call i32 (i32, i8*, ...) @ok(i32 %471, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %473 = load i32, i32* %6, align 4
  %474 = icmp eq i32 %473, 3
  %475 = zext i1 %474 to i32
  %476 = load i32, i32* %6, align 4
  %477 = call i32 (i32, i8*, ...) @ok(i32 %475, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %476)
  %478 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  %479 = load i32, i32* %478, align 16
  %480 = load i32, i32* @ideograph_space, align 4
  %481 = icmp eq i32 %479, %480
  %482 = zext i1 %481 to i32
  %483 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  %484 = load i32, i32* %483, align 16
  %485 = call i32 (i32, i8*, ...) @ok(i32 %482, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %484)
  %486 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 1
  %487 = load i32, i32* %486, align 4
  %488 = load i32, i32* @ideograph_space, align 4
  %489 = icmp eq i32 %487, %488
  %490 = zext i1 %489 to i32
  %491 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 1
  %492 = load i32, i32* %491, align 4
  %493 = call i32 (i32, i8*, ...) @ok(i32 %490, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %492)
  %494 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 2
  %495 = load i32, i32* %494, align 8
  %496 = load i32, i32* @ideograph_space, align 4
  %497 = icmp eq i32 %495, %496
  %498 = zext i1 %497 to i32
  %499 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 2
  %500 = load i32, i32* %499, align 8
  %501 = call i32 (i32, i8*, ...) @ok(i32 %498, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %500)
  %502 = load i32, i32* %2, align 4
  %503 = bitcast %struct.TYPE_11__* %7 to i64*
  %504 = load i64, i64* %503, align 4
  %505 = call i32 @ReadConsoleOutputAttribute(i32 %502, i32* %11, i32 1, i64 %504, i32* %6)
  store i32 %505, i32* %3, align 4
  %506 = load i32, i32* %3, align 4
  %507 = call i32 (i32, i8*, ...) @ok(i32 %506, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  %508 = load i32, i32* %11, align 4
  %509 = load i32, i32* @ATTR, align 4
  %510 = icmp eq i32 %508, %509
  %511 = zext i1 %510 to i32
  %512 = load i32, i32* %11, align 4
  %513 = call i32 (i32, i8*, ...) @ok(i32 %511, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i32 %512)
  %514 = load i32, i32* %6, align 4
  %515 = icmp eq i32 %514, 1
  %516 = zext i1 %515 to i32
  %517 = load i32, i32* %6, align 4
  %518 = call i32 (i32, i8*, ...) @ok(i32 %516, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32 %517)
  %519 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i32 1, i32* %519, align 4
  %520 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store i32 0, i32* %520, align 4
  %521 = load i32, i32* %2, align 4
  %522 = bitcast %struct.TYPE_11__* %7 to i64*
  %523 = load i64, i64* %522, align 4
  %524 = call i32 @SetConsoleCursorPosition(i32 %521, i64 %523)
  %525 = load i32, i32* %2, align 4
  %526 = bitcast %struct.TYPE_11__* %7 to i64*
  %527 = load i64, i64* %526, align 4
  %528 = call i32 @okCURSOR(i32 %525, i64 %527)
  %529 = load i32, i32* %2, align 4
  %530 = load i32, i32* @u9580, align 4
  %531 = load i32, i32* @u9580, align 4
  %532 = call i32 @lstrlenW(i32 %531)
  %533 = call i32 @WriteConsoleW(i32 %529, i32 %530, i32 %532, i32* %6, i32* null)
  store i32 %533, i32* %3, align 4
  %534 = load i32, i32* %3, align 4
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %536, label %541

536:                                              ; preds = %401
  %537 = load i32, i32* %6, align 4
  %538 = load i32, i32* @u9580, align 4
  %539 = call i32 @lstrlenW(i32 %538)
  %540 = icmp eq i32 %537, %539
  br label %541

541:                                              ; preds = %536, %401
  %542 = phi i1 [ false, %401 ], [ %540, %536 ]
  %543 = zext i1 %542 to i32
  %544 = call i32 (i32, i8*, ...) @ok(i32 %543, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %545 = load i32, i32* %2, align 4
  %546 = bitcast %struct.TYPE_11__* %7 to i64*
  %547 = load i64, i64* %546, align 4
  %548 = call i32 @ReadConsoleOutputAttribute(i32 %545, i32* %11, i32 1, i64 %547, i32* %6)
  store i32 %548, i32* %3, align 4
  %549 = load i32, i32* %3, align 4
  %550 = call i32 (i32, i8*, ...) @ok(i32 %549, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  %551 = load i32, i32* %11, align 4
  %552 = load i32, i32* @ATTR, align 4
  %553 = icmp eq i32 %551, %552
  %554 = zext i1 %553 to i32
  %555 = load i32, i32* %11, align 4
  %556 = call i32 (i32, i8*, ...) @ok(i32 %554, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i32 %555)
  %557 = load i32, i32* %6, align 4
  %558 = icmp eq i32 %557, 1
  %559 = zext i1 %558 to i32
  %560 = load i32, i32* %6, align 4
  %561 = call i32 (i32, i8*, ...) @ok(i32 %559, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32 %560)
  %562 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i32 3, i32* %562, align 4
  %563 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store i32 0, i32* %563, align 4
  %564 = load i32, i32* %2, align 4
  %565 = bitcast %struct.TYPE_11__* %7 to i64*
  %566 = load i64, i64* %565, align 4
  %567 = call i32 @okCURSOR(i32 %564, i64 %566)
  %568 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store i32 0, i32* %568, align 4
  %569 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i32 0, i32* %569, align 4
  %570 = load i32, i32* %2, align 4
  %571 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  %572 = bitcast %struct.TYPE_11__* %7 to i64*
  %573 = load i64, i64* %572, align 4
  %574 = call i32 @ReadConsoleOutputCharacterW(i32 %570, i32* %571, i32 12, i64 %573, i32* %6)
  store i32 %574, i32* %3, align 4
  %575 = load i32, i32* %3, align 4
  %576 = call i32 (i32, i8*, ...) @ok(i32 %575, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %577 = load i32, i32* %6, align 4
  %578 = icmp eq i32 %577, 4
  %579 = zext i1 %578 to i32
  %580 = load i32, i32* %6, align 4
  %581 = call i32 (i32, i8*, ...) @ok(i32 %579, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %580)
  %582 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  %583 = load i32, i32* %582, align 16
  %584 = icmp eq i32 %583, 32
  %585 = zext i1 %584 to i32
  %586 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  %587 = load i32, i32* %586, align 16
  %588 = call i32 (i32, i8*, ...) @ok(i32 %585, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %587)
  %589 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 1
  %590 = load i32, i32* %589, align 4
  %591 = icmp eq i32 %590, 38272
  %592 = zext i1 %591 to i32
  %593 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 1
  %594 = load i32, i32* %593, align 4
  %595 = call i32 (i32, i8*, ...) @ok(i32 %592, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %594)
  %596 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 2
  %597 = load i32, i32* %596, align 8
  %598 = icmp eq i32 %597, 32
  %599 = zext i1 %598 to i32
  %600 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 2
  %601 = load i32, i32* %600, align 8
  %602 = call i32 (i32, i8*, ...) @ok(i32 %599, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %601)
  %603 = load i32, i32* %4, align 4
  %604 = call i32 @SetConsoleOutputCP(i32 %603)
  br label %605

605:                                              ; preds = %541, %22, %14
  ret void
}

declare dso_local i32 @IsValidCodePage(i32) #1

declare dso_local i32 @skip(i8*, ...) #1

declare dso_local i32 @GetConsoleOutputCP(...) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @SetConsoleOutputCP(i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @GetConsoleScreenBufferInfo(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @trace(i8*, i32, ...) #1

declare dso_local i32 @SetConsoleCursorPosition(i32, i64) #1

declare dso_local i32 @okCURSOR(i32, i64) #1

declare dso_local i32 @WriteConsoleW(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @lstrlenW(i32) #1

declare dso_local i32 @ReadConsoleOutputCharacterW(i32, i32*, i32, i64, i32*) #1

declare dso_local i32 @FillConsoleOutputCharacterW(i32, i32, i32, i64, i32*) #1

declare dso_local i32 @ReadConsoleOutputAttribute(i32, i32*, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_button.c_test_note.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_button.c_test_note.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_note.test_w = private unnamed_addr constant [5 x i8] c"test\00", align 1
@__const.test_note.tes_w = private unnamed_addr constant [4 x i8] c"tes\00", align 1
@__const.test_note.deadbeef_w = private unnamed_addr constant [9 x i8] c"deadbeef\00", align 1
@BS_COMMANDLINK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Expect hwnd not null\0A\00", align 1
@BCM_GETNOTE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"BCM_GETNOTE message is unavailable. Skipping note tests\0A\00", align 1
@BS_PUSHBUTTON = common dso_local global i64 0, align 8
@BS_DEFCOMMANDLINK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Expect BCM_GETNOTE return false\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Expect note: %s, got: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Got: %d\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"Expect last error: 0x%08x, got: 0x%08x\0A\00", align 1
@BCM_GETNOTELENGTH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Expect note length: %d, got: %d\0A\00", align 1
@BCM_SETNOTE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"Expect BCM_SETNOTE return true\0A\00", align 1
@NO_ERROR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"Expect BCM_GETNOTE return true\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"Expect BCM_SETNOTE return false\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Expect note length 0\0A\00", align 1
@ERROR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_note to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_note() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca [5 x i8], align 1
  %4 = alloca [4 x i8], align 1
  %5 = alloca [9 x i8], align 1
  %6 = alloca [10 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = bitcast [5 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.test_note.test_w, i32 0, i32 0), i64 5, i1 false)
  %11 = bitcast [4 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.test_note.tes_w, i32 0, i32 0), i64 4, i1 false)
  %12 = bitcast [9 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.test_note.deadbeef_w, i32 0, i32 0), i64 9, i1 false)
  %13 = load i64, i64* @BS_COMMANDLINK, align 8
  %14 = call i32* @create_button(i64 %13, i32* null)
  store i32* %14, i32** %1, align 8
  %15 = load i32*, i32** %1, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @SetLastError(i32 -559038737)
  %20 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %21 = call i32 @ARRAY_SIZE(i8* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32*, i32** %1, align 8
  %23 = load i32, i32* @BCM_GETNOTE, align 4
  %24 = ptrtoint i32* %7 to i32
  %25 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %26 = ptrtoint i8* %25 to i32
  %27 = call i32 @SendMessageA(i32* %22, i32 %23, i32 %24, i32 %26)
  store i32 %27, i32* %2, align 4
  %28 = call i32 (...) @GetLastError()
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %2, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %0
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, -559038737
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = call i32 @win_skip(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32*, i32** %1, align 8
  %37 = call i32 @DestroyWindow(i32* %36)
  br label %415

38:                                               ; preds = %31, %0
  %39 = load i32*, i32** %1, align 8
  %40 = call i32 @DestroyWindow(i32* %39)
  %41 = load i64, i64* @BS_PUSHBUTTON, align 8
  store i64 %41, i64* %9, align 8
  br label %42

42:                                               ; preds = %412, %38
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* @BS_DEFCOMMANDLINK, align 8
  %45 = icmp sle i64 %43, %44
  br i1 %45, label %46, label %415

46:                                               ; preds = %42
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* @BS_DEFCOMMANDLINK, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* @BS_COMMANDLINK, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %380

54:                                               ; preds = %50, %46
  %55 = load i64, i64* %9, align 8
  %56 = call i32* @create_button(i64 %55, i32* null)
  store i32* %56, i32** %1, align 8
  %57 = load i32*, i32** %1, align 8
  %58 = icmp ne i32* %57, null
  %59 = zext i1 %58 to i32
  %60 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %61 = call i32 @SetLastError(i32 -559038737)
  %62 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %63 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 0
  %64 = call i32 @lstrcpyW(i8* %62, i8* %63)
  %65 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %66 = call i32 @ARRAY_SIZE(i8* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32*, i32** %1, align 8
  %68 = load i32, i32* @BCM_GETNOTE, align 4
  %69 = ptrtoint i32* %7 to i32
  %70 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %71 = ptrtoint i8* %70 to i32
  %72 = call i32 @SendMessageA(i32* %67, i32 %68, i32 %69, i32 %71)
  store i32 %72, i32* %2, align 4
  %73 = call i32 (...) @GetLastError()
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %2, align 4
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %79 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %80 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 0
  %81 = call i32 @lstrcmpW(i8* %79, i8* %80)
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 0
  %86 = call i32 @wine_dbgstr_w(i8* %85)
  %87 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %88 = call i32 @wine_dbgstr_w(i8* %87)
  %89 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %86, i32 %88)
  %90 = load i32, i32* %7, align 4
  %91 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %92 = call i32 @ARRAY_SIZE(i8* %91)
  %93 = icmp eq i32 %90, %92
  %94 = zext i1 %93 to i32
  %95 = load i32, i32* %7, align 4
  %96 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %99 = icmp eq i32 %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %101, i32 %102)
  %104 = load i32*, i32** %1, align 8
  %105 = load i32, i32* @BCM_GETNOTELENGTH, align 4
  %106 = call i32 @SendMessageA(i32* %104, i32 %105, i32 0, i32 0)
  store i32 %106, i32* %2, align 4
  %107 = load i32, i32* %2, align 4
  %108 = icmp eq i32 %107, 0
  %109 = zext i1 %108 to i32
  %110 = load i32, i32* %2, align 4
  %111 = call i32 (i32, i8*, ...) @ok(i32 %109, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 0, i32 %110)
  %112 = call i32 @SetLastError(i32 -559038737)
  %113 = load i32*, i32** %1, align 8
  %114 = load i32, i32* @BCM_SETNOTE, align 4
  %115 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %116 = ptrtoint i8* %115 to i32
  %117 = call i32 @SendMessageA(i32* %113, i32 %114, i32 0, i32 %116)
  store i32 %117, i32* %2, align 4
  %118 = load i32, i32* %2, align 4
  %119 = call i32 (i32, i8*, ...) @ok(i32 %118, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %120 = call i32 (...) @GetLastError()
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* @NO_ERROR, align 4
  %123 = icmp eq i32 %121, %122
  %124 = zext i1 %123 to i32
  %125 = load i32, i32* @NO_ERROR, align 4
  %126 = load i32, i32* %8, align 4
  %127 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %125, i32 %126)
  %128 = call i32 @SetLastError(i32 -559038737)
  %129 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %130 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 0
  %131 = call i32 @lstrcpyW(i8* %129, i8* %130)
  %132 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %133 = call i32 @ARRAY_SIZE(i8* %132)
  store i32 %133, i32* %7, align 4
  %134 = load i32*, i32** %1, align 8
  %135 = load i32, i32* @BCM_GETNOTE, align 4
  %136 = ptrtoint i32* %7 to i32
  %137 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %138 = ptrtoint i8* %137 to i32
  %139 = call i32 @SendMessageA(i32* %134, i32 %135, i32 %136, i32 %138)
  store i32 %139, i32* %2, align 4
  %140 = load i32, i32* %2, align 4
  %141 = call i32 (i32, i8*, ...) @ok(i32 %140, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %142 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %143 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %144 = call i32 @lstrcmpW(i8* %142, i8* %143)
  %145 = icmp ne i32 %144, 0
  %146 = xor i1 %145, true
  %147 = zext i1 %146 to i32
  %148 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %149 = call i32 @wine_dbgstr_w(i8* %148)
  %150 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %151 = call i32 @wine_dbgstr_w(i8* %150)
  %152 = call i32 (i32, i8*, ...) @ok(i32 %147, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %149, i32 %151)
  %153 = load i32, i32* %7, align 4
  %154 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %155 = call i32 @ARRAY_SIZE(i8* %154)
  %156 = icmp eq i32 %153, %155
  %157 = zext i1 %156 to i32
  %158 = load i32, i32* %7, align 4
  %159 = call i32 (i32, i8*, ...) @ok(i32 %157, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %158)
  %160 = call i32 (...) @GetLastError()
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* @NO_ERROR, align 4
  %163 = icmp eq i32 %161, %162
  %164 = zext i1 %163 to i32
  %165 = load i32, i32* @NO_ERROR, align 4
  %166 = load i32, i32* %8, align 4
  %167 = call i32 (i32, i8*, ...) @ok(i32 %164, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %165, i32 %166)
  %168 = load i32*, i32** %1, align 8
  %169 = load i32, i32* @BCM_GETNOTELENGTH, align 4
  %170 = call i32 @SendMessageA(i32* %168, i32 %169, i32 0, i32 0)
  store i32 %170, i32* %2, align 4
  %171 = load i32, i32* %2, align 4
  %172 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %173 = call i32 @ARRAY_SIZE(i8* %172)
  %174 = sub nsw i32 %173, 1
  %175 = icmp eq i32 %171, %174
  %176 = zext i1 %175 to i32
  %177 = load i32, i32* %2, align 4
  %178 = call i32 (i32, i8*, ...) @ok(i32 %176, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %177)
  %179 = call i32 @SetLastError(i32 -559038737)
  %180 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %181 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 0
  %182 = call i32 @lstrcpyW(i8* %180, i8* %181)
  %183 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %184 = call i32 @ARRAY_SIZE(i8* %183)
  %185 = sub nsw i32 %184, 1
  store i32 %185, i32* %7, align 4
  %186 = load i32*, i32** %1, align 8
  %187 = load i32, i32* @BCM_GETNOTE, align 4
  %188 = ptrtoint i32* %7 to i32
  %189 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %190 = ptrtoint i8* %189 to i32
  %191 = call i32 @SendMessageA(i32* %186, i32 %187, i32 %188, i32 %190)
  store i32 %191, i32* %2, align 4
  %192 = load i32, i32* %2, align 4
  %193 = icmp ne i32 %192, 0
  %194 = xor i1 %193, true
  %195 = zext i1 %194 to i32
  %196 = call i32 (i32, i8*, ...) @ok(i32 %195, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %197 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %198 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %199 = call i32 @lstrcmpW(i8* %197, i8* %198)
  %200 = icmp ne i32 %199, 0
  %201 = xor i1 %200, true
  %202 = zext i1 %201 to i32
  %203 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %204 = call i32 @wine_dbgstr_w(i8* %203)
  %205 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %206 = call i32 @wine_dbgstr_w(i8* %205)
  %207 = call i32 (i32, i8*, ...) @ok(i32 %202, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %204, i32 %206)
  %208 = load i32, i32* %7, align 4
  %209 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %210 = call i32 @ARRAY_SIZE(i8* %209)
  %211 = icmp eq i32 %208, %210
  %212 = zext i1 %211 to i32
  %213 = load i32, i32* %7, align 4
  %214 = call i32 (i32, i8*, ...) @ok(i32 %212, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %213)
  %215 = call i32 (...) @GetLastError()
  store i32 %215, i32* %8, align 4
  %216 = load i32, i32* %8, align 4
  %217 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %218 = icmp eq i32 %216, %217
  %219 = zext i1 %218 to i32
  %220 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %221 = load i32, i32* %8, align 4
  %222 = call i32 (i32, i8*, ...) @ok(i32 %219, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %220, i32 %221)
  %223 = call i32 @SetLastError(i32 -559038737)
  %224 = load i32*, i32** %1, align 8
  %225 = load i32, i32* @BCM_SETNOTE, align 4
  %226 = call i32 @SendMessageA(i32* %224, i32 %225, i32 0, i32 0)
  store i32 %226, i32* %2, align 4
  %227 = load i32, i32* %2, align 4
  %228 = call i32 (i32, i8*, ...) @ok(i32 %227, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %229 = call i32 (...) @GetLastError()
  store i32 %229, i32* %8, align 4
  %230 = load i32, i32* %8, align 4
  %231 = load i32, i32* @NO_ERROR, align 4
  %232 = icmp eq i32 %230, %231
  %233 = zext i1 %232 to i32
  %234 = load i32, i32* @NO_ERROR, align 4
  %235 = load i32, i32* %8, align 4
  %236 = call i32 (i32, i8*, ...) @ok(i32 %233, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %234, i32 %235)
  %237 = call i32 @SetLastError(i32 -559038737)
  %238 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %239 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 0
  %240 = call i32 @lstrcpyW(i8* %238, i8* %239)
  %241 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %242 = call i32 @ARRAY_SIZE(i8* %241)
  store i32 %242, i32* %7, align 4
  %243 = load i32*, i32** %1, align 8
  %244 = load i32, i32* @BCM_GETNOTE, align 4
  %245 = ptrtoint i32* %7 to i32
  %246 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %247 = ptrtoint i8* %246 to i32
  %248 = call i32 @SendMessageA(i32* %243, i32 %244, i32 %245, i32 %247)
  store i32 %248, i32* %2, align 4
  %249 = load i32, i32* %2, align 4
  %250 = call i32 (i32, i8*, ...) @ok(i32 %249, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %251 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %252 = call i64 @lstrlenW(i8* %251)
  %253 = icmp eq i64 %252, 0
  %254 = zext i1 %253 to i32
  %255 = call i32 (i32, i8*, ...) @ok(i32 %254, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %256 = load i32, i32* %7, align 4
  %257 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %258 = call i32 @ARRAY_SIZE(i8* %257)
  %259 = icmp eq i32 %256, %258
  %260 = zext i1 %259 to i32
  %261 = load i32, i32* %7, align 4
  %262 = call i32 (i32, i8*, ...) @ok(i32 %260, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %261)
  %263 = call i32 (...) @GetLastError()
  store i32 %263, i32* %8, align 4
  %264 = load i32, i32* %8, align 4
  %265 = load i32, i32* @NO_ERROR, align 4
  %266 = icmp eq i32 %264, %265
  %267 = zext i1 %266 to i32
  %268 = load i32, i32* @NO_ERROR, align 4
  %269 = load i32, i32* %8, align 4
  %270 = call i32 (i32, i8*, ...) @ok(i32 %267, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %268, i32 %269)
  %271 = load i32*, i32** %1, align 8
  %272 = load i32, i32* @BCM_GETNOTELENGTH, align 4
  %273 = call i32 @SendMessageA(i32* %271, i32 %272, i32 0, i32 0)
  store i32 %273, i32* %2, align 4
  %274 = load i32, i32* %2, align 4
  %275 = icmp eq i32 %274, 0
  %276 = zext i1 %275 to i32
  %277 = load i32, i32* %2, align 4
  %278 = call i32 (i32, i8*, ...) @ok(i32 %276, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 0, i32 %277)
  %279 = call i32 @SetLastError(i32 -559038737)
  %280 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %281 = call i32 @ARRAY_SIZE(i8* %280)
  store i32 %281, i32* %7, align 4
  %282 = load i32*, i32** %1, align 8
  %283 = load i32, i32* @BCM_GETNOTE, align 4
  %284 = ptrtoint i32* %7 to i32
  %285 = call i32 @SendMessageA(i32* %282, i32 %283, i32 %284, i32 0)
  store i32 %285, i32* %2, align 4
  %286 = load i32, i32* %2, align 4
  %287 = icmp ne i32 %286, 0
  %288 = xor i1 %287, true
  %289 = zext i1 %288 to i32
  %290 = call i32 (i32, i8*, ...) @ok(i32 %289, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %291 = load i32, i32* %7, align 4
  %292 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %293 = call i32 @ARRAY_SIZE(i8* %292)
  %294 = icmp eq i32 %291, %293
  %295 = zext i1 %294 to i32
  %296 = load i32, i32* %7, align 4
  %297 = call i32 (i32, i8*, ...) @ok(i32 %295, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %296)
  %298 = call i32 (...) @GetLastError()
  store i32 %298, i32* %8, align 4
  %299 = load i32, i32* %8, align 4
  %300 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %301 = icmp eq i32 %299, %300
  %302 = zext i1 %301 to i32
  %303 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %304 = load i32, i32* %8, align 4
  %305 = call i32 (i32, i8*, ...) @ok(i32 %302, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %303, i32 %304)
  %306 = call i32 @SetLastError(i32 -559038737)
  %307 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %308 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 0
  %309 = call i32 @lstrcpyW(i8* %307, i8* %308)
  %310 = load i32*, i32** %1, align 8
  %311 = load i32, i32* @BCM_GETNOTE, align 4
  %312 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %313 = ptrtoint i8* %312 to i32
  %314 = call i32 @SendMessageA(i32* %310, i32 %311, i32 0, i32 %313)
  store i32 %314, i32* %2, align 4
  %315 = load i32, i32* %2, align 4
  %316 = icmp ne i32 %315, 0
  %317 = xor i1 %316, true
  %318 = zext i1 %317 to i32
  %319 = call i32 (i32, i8*, ...) @ok(i32 %318, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %320 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %321 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 0
  %322 = call i32 @lstrcmpW(i8* %320, i8* %321)
  %323 = icmp ne i32 %322, 0
  %324 = xor i1 %323, true
  %325 = zext i1 %324 to i32
  %326 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 0
  %327 = call i32 @wine_dbgstr_w(i8* %326)
  %328 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %329 = call i32 @wine_dbgstr_w(i8* %328)
  %330 = call i32 (i32, i8*, ...) @ok(i32 %325, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %327, i32 %329)
  %331 = call i32 (...) @GetLastError()
  store i32 %331, i32* %8, align 4
  %332 = load i32, i32* %8, align 4
  %333 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %334 = icmp eq i32 %332, %333
  %335 = zext i1 %334 to i32
  %336 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %337 = load i32, i32* %8, align 4
  %338 = call i32 (i32, i8*, ...) @ok(i32 %335, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %336, i32 %337)
  %339 = call i32 @SetLastError(i32 -559038737)
  store i32 0, i32* %7, align 4
  %340 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %341 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 0
  %342 = call i32 @lstrcpyW(i8* %340, i8* %341)
  %343 = load i32*, i32** %1, align 8
  %344 = load i32, i32* @BCM_GETNOTE, align 4
  %345 = ptrtoint i32* %7 to i32
  %346 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %347 = ptrtoint i8* %346 to i32
  %348 = call i32 @SendMessageA(i32* %343, i32 %344, i32 %345, i32 %347)
  store i32 %348, i32* %2, align 4
  %349 = load i32, i32* %2, align 4
  %350 = icmp ne i32 %349, 0
  %351 = xor i1 %350, true
  %352 = zext i1 %351 to i32
  %353 = call i32 (i32, i8*, ...) @ok(i32 %352, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %354 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %355 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 0
  %356 = call i32 @lstrcmpW(i8* %354, i8* %355)
  %357 = icmp ne i32 %356, 0
  %358 = xor i1 %357, true
  %359 = zext i1 %358 to i32
  %360 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 0
  %361 = call i32 @wine_dbgstr_w(i8* %360)
  %362 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %363 = call i32 @wine_dbgstr_w(i8* %362)
  %364 = call i32 (i32, i8*, ...) @ok(i32 %359, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %361, i32 %363)
  %365 = load i32, i32* %7, align 4
  %366 = icmp eq i32 %365, 1
  %367 = zext i1 %366 to i32
  %368 = load i32, i32* %7, align 4
  %369 = call i32 (i32, i8*, ...) @ok(i32 %367, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %368)
  %370 = call i32 (...) @GetLastError()
  store i32 %370, i32* %8, align 4
  %371 = load i32, i32* %8, align 4
  %372 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %373 = icmp eq i32 %371, %372
  %374 = zext i1 %373 to i32
  %375 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %376 = load i32, i32* %8, align 4
  %377 = call i32 (i32, i8*, ...) @ok(i32 %374, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %375, i32 %376)
  %378 = load i32*, i32** %1, align 8
  %379 = call i32 @DestroyWindow(i32* %378)
  br label %411

380:                                              ; preds = %50
  %381 = load i64, i64* %9, align 8
  %382 = call i32* @create_button(i64 %381, i32* null)
  store i32* %382, i32** %1, align 8
  %383 = load i32*, i32** %1, align 8
  %384 = icmp ne i32* %383, null
  %385 = zext i1 %384 to i32
  %386 = call i32 (i32, i8*, ...) @ok(i32 %385, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %387 = call i32 @SetLastError(i32 -559038737)
  %388 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %389 = call i32 @ARRAY_SIZE(i8* %388)
  store i32 %389, i32* %7, align 4
  %390 = load i32*, i32** %1, align 8
  %391 = load i32, i32* @BCM_GETNOTE, align 4
  %392 = ptrtoint i32* %7 to i32
  %393 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %394 = ptrtoint i8* %393 to i32
  %395 = call i32 @SendMessageA(i32* %390, i32 %391, i32 %392, i32 %394)
  store i32 %395, i32* %2, align 4
  %396 = load i32, i32* %2, align 4
  %397 = icmp ne i32 %396, 0
  %398 = xor i1 %397, true
  %399 = zext i1 %398 to i32
  %400 = call i32 (i32, i8*, ...) @ok(i32 %399, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %401 = call i32 (...) @GetLastError()
  store i32 %401, i32* %8, align 4
  %402 = load i32, i32* %8, align 4
  %403 = load i32, i32* @ERROR_NOT_SUPPORTED, align 4
  %404 = icmp eq i32 %402, %403
  %405 = zext i1 %404 to i32
  %406 = load i32, i32* @ERROR_NOT_SUPPORTED, align 4
  %407 = load i32, i32* %8, align 4
  %408 = call i32 (i32, i8*, ...) @ok(i32 %405, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %406, i32 %407)
  %409 = load i32*, i32** %1, align 8
  %410 = call i32 @DestroyWindow(i32* %409)
  br label %411

411:                                              ; preds = %380, %54
  br label %412

412:                                              ; preds = %411
  %413 = load i64, i64* %9, align 8
  %414 = add nsw i64 %413, 1
  store i64 %414, i64* %9, align 8
  br label %42

415:                                              ; preds = %34, %42
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @create_button(i64, i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @ARRAY_SIZE(i8*) #2

declare dso_local i32 @SendMessageA(i32*, i32, i32, i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i32 @DestroyWindow(i32*) #2

declare dso_local i32 @lstrcpyW(i8*, i8*) #2

declare dso_local i32 @lstrcmpW(i8*, i8*) #2

declare dso_local i32 @wine_dbgstr_w(i8*) #2

declare dso_local i64 @lstrlenW(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

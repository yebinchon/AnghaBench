; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/jscript/extr_run.c_test_IActiveScriptError.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/jscript/extr_run.c_test_IActiveScriptError.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32* }

@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"IActiveScriptError_GetSourcePosition -- hres: expected S_OK, got 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [80 x i8] c"IActiveScriptError_GetSourcePosition -- source_context: expected 0, got 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"IActiveScriptError_GetSourcePosition -- line_number: expected %d, got %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [76 x i8] c"IActiveScriptError_GetSourcePosition -- char_position: expected %d, got %d\0A\00", align 1
@E_POINTER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [78 x i8] c"IActiveScriptError_GetSourceLineText -- hres: expected E_POINTER, got 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c"IActiveScriptError_GetSourceLineText -- hres: expected S_OK, got 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"IActiveScriptError_GetSourceLineText -- expected %s, got %s\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [63 x i8] c"IActiveScriptError_GetSourceLineText -- expected NULL, got %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [77 x i8] c"IActiveScriptError_GetExceptionInfo -- hres: expected E_POINTER, got 0x%08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [72 x i8] c"IActiveScriptError_GetExceptionInfo -- hres: expected S_OK, got 0x%08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [76 x i8] c"IActiveScriptError_GetExceptionInfo -- excep.wCode: expected 0, got 0x%08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [76 x i8] c"IActiveScriptError_GetExceptionInfo -- excep.wReserved: expected 0, got %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"Non-english UI (test with hardcoded strings)\0A\00", align 1
@.str.13 = private unnamed_addr constant [91 x i8] c"IActiveScriptError_GetExceptionInfo -- excep.bstrSource is not valid: expected %s, got %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [83 x i8] c"IActiveScriptError_GetExceptionInfo -- excep.bstrDescription is not valid: got %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [82 x i8] c"IActiveScriptError_GetExceptionInfo -- excep.bstrHelpFile: expected NULL, got %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [80 x i8] c"IActiveScriptError_GetExceptionInfo -- excep.dwHelpContext: expected 0, got %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [80 x i8] c"IActiveScriptError_GetExceptionInfo -- excep.pvReserved: expected NULL, got %p\0A\00", align 1
@.str.18 = private unnamed_addr constant [87 x i8] c"IActiveScriptError_GetExceptionInfo -- excep.pfnDeferredFillIn: expected NULL, got %p\0A\00", align 1
@.str.19 = private unnamed_addr constant [81 x i8] c"IActiveScriptError_GetExceptionInfo -- excep.scode: expected 0x%08x, got 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32*, i32*, i32*)* @test_IActiveScriptError to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_IActiveScriptError(i32* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @IActiveScriptError_GetSourcePosition(i32* %21, i32* null, i32* null, i32* null)
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %15, align 4
  %24 = load i32, i32* @S_OK, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %15, align 4
  %28 = call i32 (i32, i8*, i32, ...) @ok(i32 %26, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i32 -559038737, i32* %16, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @IActiveScriptError_GetSourcePosition(i32* %29, i32* %16, i32* null, i32* null)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* @S_OK, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %15, align 4
  %36 = call i32 (i32, i8*, i32, ...) @ok(i32 %34, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %16, align 4
  %38 = icmp eq i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %16, align 4
  %41 = call i32 (i32, i8*, i32, ...) @ok(i32 %39, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  store i32 -559038737, i32* %17, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @IActiveScriptError_GetSourcePosition(i32* %42, i32* null, i32* %17, i32* null)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* @S_OK, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %15, align 4
  %49 = call i32 (i32, i8*, i32, ...) @ok(i32 %47, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %17, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %17, align 4
  %56 = call i32 (i32, i8*, i32, ...) @ok(i32 %53, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 %55)
  store i32 -559038737, i32* %18, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @IActiveScriptError_GetSourcePosition(i32* %57, i32* null, i32* null, i32* %18)
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* @S_OK, align 4
  %61 = icmp eq i32 %59, %60
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %15, align 4
  %64 = call i32 (i32, i8*, i32, ...) @ok(i32 %62, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %18, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp eq i32 %65, %66
  %68 = zext i1 %67 to i32
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %18, align 4
  %71 = call i32 (i32, i8*, i32, ...) @ok(i32 %68, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0), i32 %69, i32 %70)
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @IActiveScriptError_GetSourceLineText(i32* %72, i32** null)
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* @E_POINTER, align 4
  %76 = icmp eq i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %15, align 4
  %79 = call i32 (i32, i8*, i32, ...) @ok(i32 %77, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  store i32* null, i32** %19, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @IActiveScriptError_GetSourceLineText(i32* %80, i32** %19)
  store i32 %81, i32* %15, align 4
  %82 = load i32*, i32** %14, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %107

84:                                               ; preds = %7
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* @S_OK, align 4
  %87 = icmp eq i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = load i32, i32* %15, align 4
  %90 = call i32 (i32, i8*, i32, ...) @ok(i32 %88, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i64 0, i64 0), i32 %89)
  %91 = load i32*, i32** %19, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %84
  %94 = load i32*, i32** %19, align 8
  %95 = load i32*, i32** %14, align 8
  %96 = call i32 @lstrcmpW(i32* %94, i32* %95)
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  br label %99

99:                                               ; preds = %93, %84
  %100 = phi i1 [ false, %84 ], [ %98, %93 ]
  %101 = zext i1 %100 to i32
  %102 = load i32*, i32** %14, align 8
  %103 = call i32 @wine_dbgstr_w(i32* %102)
  %104 = load i32*, i32** %19, align 8
  %105 = call i32 @wine_dbgstr_w(i32* %104)
  %106 = call i32 (i32, i8*, i32, ...) @ok(i32 %101, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0), i32 %103, i32 %105)
  br label %120

107:                                              ; preds = %7
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* @E_FAIL, align 4
  %110 = icmp eq i32 %108, %109
  %111 = zext i1 %110 to i32
  %112 = load i32, i32* %15, align 4
  %113 = call i32 (i32, i8*, i32, ...) @ok(i32 %111, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i64 0, i64 0), i32 %112)
  %114 = load i32*, i32** %19, align 8
  %115 = icmp eq i32* %114, null
  %116 = zext i1 %115 to i32
  %117 = load i32*, i32** %19, align 8
  %118 = call i32 @wine_dbgstr_w(i32* %117)
  %119 = call i32 (i32, i8*, i32, ...) @ok(i32 %116, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %107, %99
  %121 = load i32*, i32** %19, align 8
  %122 = call i32 @SysFreeString(i32* %121)
  %123 = load i32*, i32** %8, align 8
  %124 = call i32 @IActiveScriptError_GetExceptionInfo(i32* %123, %struct.TYPE_3__* null)
  store i32 %124, i32* %15, align 4
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* @E_POINTER, align 4
  %127 = icmp eq i32 %125, %126
  %128 = zext i1 %127 to i32
  %129 = load i32, i32* %15, align 4
  %130 = call i32 (i32, i8*, i32, ...) @ok(i32 %128, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.8, i64 0, i64 0), i32 %129)
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 57005, i32* %131, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i32 57005, i32* %132, align 4
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 6
  store i32* inttoptr (i64 3735928559 to i32*), i32** %133, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 5
  store i32* inttoptr (i64 3735928559 to i32*), i32** %134, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 4
  store i32* inttoptr (i64 3735928559 to i32*), i32** %135, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  store i32 -559038737, i32* %136, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 8
  store i32* inttoptr (i64 3735928559 to i32*), i32** %137, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 7
  store i32* inttoptr (i64 3735928559 to i32*), i32** %138, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  store i32 -559038737, i32* %139, align 4
  %140 = load i32*, i32** %8, align 8
  %141 = call i32 @IActiveScriptError_GetExceptionInfo(i32* %140, %struct.TYPE_3__* %20)
  store i32 %141, i32* %15, align 4
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* @S_OK, align 4
  %144 = icmp eq i32 %142, %143
  %145 = zext i1 %144 to i32
  %146 = load i32, i32* %15, align 4
  %147 = call i32 (i32, i8*, i32, ...) @ok(i32 %145, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.9, i64 0, i64 0), i32 %146)
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp eq i32 %149, 0
  %151 = zext i1 %150 to i32
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 (i32, i8*, i32, ...) @ok(i32 %151, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.10, i64 0, i64 0), i32 %153)
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp eq i32 %156, 0
  %158 = zext i1 %157 to i32
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 (i32, i8*, i32, ...) @ok(i32 %158, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.11, i64 0, i64 0), i32 %160)
  %162 = call i32 (...) @is_lang_english()
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %120
  %165 = call i32 @skip(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0))
  br label %203

166:                                              ; preds = %120
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 6
  %168 = load i32*, i32** %167, align 8
  %169 = icmp ne i32* %168, null
  br i1 %169, label %170, label %177

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 6
  %172 = load i32*, i32** %171, align 8
  %173 = load i32*, i32** %12, align 8
  %174 = call i32 @lstrcmpW(i32* %172, i32* %173)
  %175 = icmp ne i32 %174, 0
  %176 = xor i1 %175, true
  br label %177

177:                                              ; preds = %170, %166
  %178 = phi i1 [ false, %166 ], [ %176, %170 ]
  %179 = zext i1 %178 to i32
  %180 = load i32*, i32** %12, align 8
  %181 = call i32 @wine_dbgstr_w(i32* %180)
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 6
  %183 = load i32*, i32** %182, align 8
  %184 = call i32 @wine_dbgstr_w(i32* %183)
  %185 = call i32 (i32, i8*, i32, ...) @ok(i32 %179, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.13, i64 0, i64 0), i32 %181, i32 %184)
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 5
  %187 = load i32*, i32** %186, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %189, label %196

189:                                              ; preds = %177
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 5
  %191 = load i32*, i32** %190, align 8
  %192 = load i32*, i32** %13, align 8
  %193 = call i32 @lstrcmpW(i32* %191, i32* %192)
  %194 = icmp ne i32 %193, 0
  %195 = xor i1 %194, true
  br label %196

196:                                              ; preds = %189, %177
  %197 = phi i1 [ false, %177 ], [ %195, %189 ]
  %198 = zext i1 %197 to i32
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 5
  %200 = load i32*, i32** %199, align 8
  %201 = call i32 @wine_dbgstr_w(i32* %200)
  %202 = call i32 (i32, i8*, i32, ...) @ok(i32 %198, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.14, i64 0, i64 0), i32 %201)
  br label %203

203:                                              ; preds = %196, %164
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 4
  %205 = load i32*, i32** %204, align 8
  %206 = icmp eq i32* %205, null
  %207 = zext i1 %206 to i32
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 4
  %209 = load i32*, i32** %208, align 8
  %210 = call i32 @wine_dbgstr_w(i32* %209)
  %211 = call i32 (i32, i8*, i32, ...) @ok(i32 %207, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.15, i64 0, i64 0), i32 %210)
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = icmp eq i32 %213, 0
  %215 = zext i1 %214 to i32
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = call i32 (i32, i8*, i32, ...) @ok(i32 %215, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.16, i64 0, i64 0), i32 %217)
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 8
  %220 = load i32*, i32** %219, align 8
  %221 = icmp eq i32* %220, null
  %222 = zext i1 %221 to i32
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 8
  %224 = load i32*, i32** %223, align 8
  %225 = ptrtoint i32* %224 to i32
  %226 = call i32 (i32, i8*, i32, ...) @ok(i32 %222, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.17, i64 0, i64 0), i32 %225)
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 7
  %228 = load i32*, i32** %227, align 8
  %229 = icmp eq i32* %228, null
  %230 = zext i1 %229 to i32
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 7
  %232 = load i32*, i32** %231, align 8
  %233 = ptrtoint i32* %232 to i32
  %234 = call i32 (i32, i8*, i32, ...) @ok(i32 %230, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.18, i64 0, i64 0), i32 %233)
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %9, align 4
  %238 = icmp eq i32 %236, %237
  %239 = zext i1 %238 to i32
  %240 = load i32, i32* %9, align 4
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = call i32 (i32, i8*, i32, ...) @ok(i32 %239, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.19, i64 0, i64 0), i32 %240, i32 %242)
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 6
  %245 = load i32*, i32** %244, align 8
  %246 = call i32 @SysFreeString(i32* %245)
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 5
  %248 = load i32*, i32** %247, align 8
  %249 = call i32 @SysFreeString(i32* %248)
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 4
  %251 = load i32*, i32** %250, align 8
  %252 = call i32 @SysFreeString(i32* %251)
  ret void
}

declare dso_local i32 @IActiveScriptError_GetSourcePosition(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @IActiveScriptError_GetSourceLineText(i32*, i32**) #1

declare dso_local i32 @lstrcmpW(i32*, i32*) #1

declare dso_local i32 @wine_dbgstr_w(i32*) #1

declare dso_local i32 @SysFreeString(i32*) #1

declare dso_local i32 @IActiveScriptError_GetExceptionInfo(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @is_lang_english(...) #1

declare dso_local i32 @skip(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

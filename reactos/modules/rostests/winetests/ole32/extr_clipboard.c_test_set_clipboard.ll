; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_clipboard.c_test_set_clipboard.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_clipboard.c_test_set_clipboard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"stream format\00", align 1
@cf_stream = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"storage format\00", align 1
@cf_storage = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"global format\00", align 1
@cf_global = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"another format\00", align 1
@cf_another = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"one more format\00", align 1
@cf_onemore = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"data1\00", align 1
@S_OK = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [39 x i8] c"Failed to create data1 object: 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"data2\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Failed to create data2 object: 0x%08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"Failed to create complex data object: 0x%08x\0A\00", align 1
@CO_E_NOTINITIALIZED = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [79 x i8] c"OleSetClipboard should have failed with CO_E_NOTINITIALIZED instead of 0x%08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"OleSetClipboard failed with 0x%08x\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"OleInitialize failed with error 0x%08x\0A\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"failed to set clipboard to data1, hr = 0x%08x\0A\00", align 1
@.str.14 = private unnamed_addr constant [53 x i8] c"expected current clipboard to be data1, hr = 0x%08x\0A\00", align 1
@S_FALSE = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [59 x i8] c"did not expect current clipboard to be data2, hr = 0x%08x\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"expect S_FALSE, hr = 0x%08x\0A\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"failed to set clipboard to data2, hr = 0x%08x\0A\00", align 1
@.str.18 = private unnamed_addr constant [59 x i8] c"did not expect current clipboard to be data1, hr = 0x%08x\0A\00", align 1
@.str.19 = private unnamed_addr constant [53 x i8] c"expected current clipboard to be data2, hr = 0x%08x\0A\00", align 1
@GMEM_DDESHARE = common dso_local global i32 0, align 4
@GMEM_MOVEABLE = common dso_local global i32 0, align 4
@GMEM_ZEROINIT = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [25 x i8] c"got fixed block %p / %p\0A\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"OpenClipboard failed\0A\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"got %p / %p\0A\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"CloseClipboard failed\0A\00", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"failed to flush clipboard, hr = 0x%08x\0A\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"failed to clear clipboard, hr = 0x%08x\0A\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"setting complex\0A\00", align 1
@.str.28 = private unnamed_addr constant [54 x i8] c"failed to set clipboard to complex data, hr = 0x%08x\0A\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"expected data1 ref=0, got %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"expected data2 ref=0, got %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [34 x i8] c"expected data_cmpl ref=0, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_set_clipboard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_set_clipboard() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = call i8* @RegisterClipboardFormatA(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** @cf_stream, align 8
  %10 = call i8* @RegisterClipboardFormatA(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i8* %10, i8** @cf_storage, align 8
  %11 = call i8* @RegisterClipboardFormatA(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i8* %11, i8** @cf_global, align 8
  %12 = call i8* @RegisterClipboardFormatA(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i8* %12, i8** @cf_another, align 8
  %13 = call i8* @RegisterClipboardFormatA(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i8* %13, i8** @cf_onemore, align 8
  %14 = call i8* @DataObjectImpl_CreateText(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32** %3)
  store i8* %14, i8** %1, align 8
  %15 = load i8*, i8** %1, align 8
  %16 = load i8*, i8** @S_OK, align 8
  %17 = icmp eq i8* %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i8*, i8** %1, align 8
  %20 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* %19)
  %21 = load i8*, i8** %1, align 8
  %22 = call i64 @FAILED(i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %0
  br label %318

25:                                               ; preds = %0
  %26 = call i8* @DataObjectImpl_CreateText(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32** %4)
  store i8* %26, i8** %1, align 8
  %27 = load i8*, i8** %1, align 8
  %28 = load i8*, i8** @S_OK, align 8
  %29 = icmp eq i8* %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i8*, i8** %1, align 8
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i8* %31)
  %33 = load i8*, i8** %1, align 8
  %34 = call i64 @FAILED(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %318

37:                                               ; preds = %25
  %38 = call i8* @DataObjectImpl_CreateComplex(i32** %5)
  store i8* %38, i8** %1, align 8
  %39 = load i8*, i8** %1, align 8
  %40 = load i8*, i8** @S_OK, align 8
  %41 = icmp eq i8* %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i8*, i8** %1, align 8
  %44 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i8* %43)
  %45 = load i8*, i8** %1, align 8
  %46 = call i64 @FAILED(i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %318

49:                                               ; preds = %37
  %50 = load i32*, i32** %3, align 8
  %51 = call i8* @OleSetClipboard(i32* %50)
  store i8* %51, i8** %1, align 8
  %52 = load i8*, i8** %1, align 8
  %53 = load i8*, i8** @CO_E_NOTINITIALIZED, align 8
  %54 = icmp eq i8* %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i8*, i8** %1, align 8
  %57 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.10, i64 0, i64 0), i8* %56)
  %58 = call i32 @CoInitialize(i32* null)
  %59 = load i32*, i32** %3, align 8
  %60 = call i8* @OleSetClipboard(i32* %59)
  store i8* %60, i8** %1, align 8
  %61 = load i8*, i8** %1, align 8
  %62 = load i8*, i8** @CO_E_NOTINITIALIZED, align 8
  %63 = icmp eq i8* %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i8*, i8** %1, align 8
  %66 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i8* %65)
  %67 = call i32 (...) @CoUninitialize()
  %68 = call i8* @OleInitialize(i32* null)
  store i8* %68, i8** %1, align 8
  %69 = load i8*, i8** %1, align 8
  %70 = load i8*, i8** @S_OK, align 8
  %71 = icmp eq i8* %69, %70
  %72 = zext i1 %71 to i32
  %73 = load i8*, i8** %1, align 8
  %74 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0), i8* %73)
  %75 = load i32*, i32** %3, align 8
  %76 = call i8* @OleSetClipboard(i32* %75)
  store i8* %76, i8** %1, align 8
  %77 = load i8*, i8** %1, align 8
  %78 = load i8*, i8** @S_OK, align 8
  %79 = icmp eq i8* %77, %78
  %80 = zext i1 %79 to i32
  %81 = load i8*, i8** %1, align 8
  %82 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0), i8* %81)
  %83 = load i32*, i32** %3, align 8
  %84 = call i32 @test_cf_dataobject(i32* %83)
  %85 = load i32*, i32** %3, align 8
  %86 = call i8* @OleIsCurrentClipboard(i32* %85)
  store i8* %86, i8** %1, align 8
  %87 = load i8*, i8** %1, align 8
  %88 = load i8*, i8** @S_OK, align 8
  %89 = icmp eq i8* %87, %88
  %90 = zext i1 %89 to i32
  %91 = load i8*, i8** %1, align 8
  %92 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.14, i64 0, i64 0), i8* %91)
  %93 = load i32*, i32** %4, align 8
  %94 = call i8* @OleIsCurrentClipboard(i32* %93)
  store i8* %94, i8** %1, align 8
  %95 = load i8*, i8** %1, align 8
  %96 = load i8*, i8** @S_FALSE, align 8
  %97 = icmp eq i8* %95, %96
  %98 = zext i1 %97 to i32
  %99 = load i8*, i8** %1, align 8
  %100 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.15, i64 0, i64 0), i8* %99)
  %101 = call i8* @OleIsCurrentClipboard(i32* null)
  store i8* %101, i8** %1, align 8
  %102 = load i8*, i8** %1, align 8
  %103 = load i8*, i8** @S_FALSE, align 8
  %104 = icmp eq i8* %102, %103
  %105 = zext i1 %104 to i32
  %106 = load i8*, i8** %1, align 8
  %107 = call i32 (i32, i8*, ...) @ok(i32 %105, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i8* %106)
  %108 = call i32 (...) @test_get_clipboard()
  %109 = load i32*, i32** %4, align 8
  %110 = call i8* @OleSetClipboard(i32* %109)
  store i8* %110, i8** %1, align 8
  %111 = load i8*, i8** %1, align 8
  %112 = load i8*, i8** @S_OK, align 8
  %113 = icmp eq i8* %111, %112
  %114 = zext i1 %113 to i32
  %115 = load i8*, i8** %1, align 8
  %116 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.17, i64 0, i64 0), i8* %115)
  %117 = load i32*, i32** %3, align 8
  %118 = call i8* @OleIsCurrentClipboard(i32* %117)
  store i8* %118, i8** %1, align 8
  %119 = load i8*, i8** %1, align 8
  %120 = load i8*, i8** @S_FALSE, align 8
  %121 = icmp eq i8* %119, %120
  %122 = zext i1 %121 to i32
  %123 = load i8*, i8** %1, align 8
  %124 = call i32 (i32, i8*, ...) @ok(i32 %122, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.18, i64 0, i64 0), i8* %123)
  %125 = load i32*, i32** %4, align 8
  %126 = call i8* @OleIsCurrentClipboard(i32* %125)
  store i8* %126, i8** %1, align 8
  %127 = load i8*, i8** %1, align 8
  %128 = load i8*, i8** @S_OK, align 8
  %129 = icmp eq i8* %127, %128
  %130 = zext i1 %129 to i32
  %131 = load i8*, i8** %1, align 8
  %132 = call i32 (i32, i8*, ...) @ok(i32 %130, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.19, i64 0, i64 0), i8* %131)
  %133 = call i8* @OleIsCurrentClipboard(i32* null)
  store i8* %133, i8** %1, align 8
  %134 = load i8*, i8** %1, align 8
  %135 = load i8*, i8** @S_FALSE, align 8
  %136 = icmp eq i8* %134, %135
  %137 = zext i1 %136 to i32
  %138 = load i8*, i8** %1, align 8
  %139 = call i32 (i32, i8*, ...) @ok(i32 %137, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i8* %138)
  %140 = load i32, i32* @GMEM_DDESHARE, align 4
  %141 = load i32, i32* @GMEM_MOVEABLE, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @GMEM_ZEROINIT, align 4
  %144 = or i32 %142, %143
  %145 = call i8* @GlobalAlloc(i32 %144, i32 10)
  store i8* %145, i8** %6, align 8
  %146 = load i8*, i8** %6, align 8
  %147 = call i8* @GlobalLock(i8* %146)
  store i8* %147, i8** %8, align 8
  %148 = load i8*, i8** %8, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %150, label %154

150:                                              ; preds = %49
  %151 = load i8*, i8** %8, align 8
  %152 = load i8*, i8** %6, align 8
  %153 = icmp ne i8* %151, %152
  br label %154

154:                                              ; preds = %150, %49
  %155 = phi i1 [ false, %49 ], [ %153, %150 ]
  %156 = zext i1 %155 to i32
  %157 = load i8*, i8** %8, align 8
  %158 = load i8*, i8** %6, align 8
  %159 = call i32 (i32, i8*, ...) @ok(i32 %156, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0), i8* %157, i8* %158)
  %160 = load i8*, i8** %6, align 8
  %161 = call i32 @GlobalUnlock(i8* %160)
  %162 = call i32 @OpenClipboard(i32* null)
  %163 = call i32 (i32, i8*, ...) @ok(i32 %162, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0))
  %164 = load i8*, i8** @cf_onemore, align 8
  %165 = load i8*, i8** %6, align 8
  %166 = call i8* @SetClipboardData(i8* %164, i8* %165)
  store i8* %166, i8** %7, align 8
  %167 = load i8*, i8** %7, align 8
  %168 = load i8*, i8** %6, align 8
  %169 = icmp eq i8* %167, %168
  %170 = zext i1 %169 to i32
  %171 = load i8*, i8** %7, align 8
  %172 = call i32 (i32, i8*, ...) @ok(i32 %170, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i8* %171)
  %173 = load i8*, i8** @cf_onemore, align 8
  %174 = call i8* @GetClipboardData(i8* %173)
  store i8* %174, i8** %7, align 8
  %175 = load i8*, i8** %7, align 8
  %176 = load i8*, i8** %6, align 8
  %177 = icmp eq i8* %175, %176
  %178 = zext i1 %177 to i32
  %179 = load i8*, i8** %7, align 8
  %180 = load i8*, i8** %6, align 8
  %181 = call i32 (i32, i8*, ...) @ok(i32 %178, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i8* %179, i8* %180)
  %182 = load i8*, i8** %7, align 8
  %183 = call i8* @GlobalLock(i8* %182)
  store i8* %183, i8** %8, align 8
  %184 = load i8*, i8** %8, align 8
  %185 = icmp ne i8* %184, null
  br i1 %185, label %186, label %190

186:                                              ; preds = %154
  %187 = load i8*, i8** %8, align 8
  %188 = load i8*, i8** %7, align 8
  %189 = icmp ne i8* %187, %188
  br label %190

190:                                              ; preds = %186, %154
  %191 = phi i1 [ false, %154 ], [ %189, %186 ]
  %192 = zext i1 %191 to i32
  %193 = load i8*, i8** %8, align 8
  %194 = load i8*, i8** %7, align 8
  %195 = call i32 (i32, i8*, ...) @ok(i32 %192, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0), i8* %193, i8* %194)
  %196 = load i8*, i8** %6, align 8
  %197 = call i32 @GlobalUnlock(i8* %196)
  %198 = call i32 (...) @CloseClipboard()
  %199 = call i32 (i32, i8*, ...) @ok(i32 %198, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0))
  %200 = call i8* (...) @OleFlushClipboard()
  store i8* %200, i8** %1, align 8
  %201 = load i8*, i8** %1, align 8
  %202 = load i8*, i8** @S_OK, align 8
  %203 = icmp eq i8* %201, %202
  %204 = zext i1 %203 to i32
  %205 = load i8*, i8** %1, align 8
  %206 = call i32 (i32, i8*, ...) @ok(i32 %204, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i64 0, i64 0), i8* %205)
  %207 = load i32*, i32** %3, align 8
  %208 = call i8* @OleIsCurrentClipboard(i32* %207)
  store i8* %208, i8** %1, align 8
  %209 = load i8*, i8** %1, align 8
  %210 = load i8*, i8** @S_FALSE, align 8
  %211 = icmp eq i8* %209, %210
  %212 = zext i1 %211 to i32
  %213 = load i8*, i8** %1, align 8
  %214 = call i32 (i32, i8*, ...) @ok(i32 %212, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.18, i64 0, i64 0), i8* %213)
  %215 = load i32*, i32** %4, align 8
  %216 = call i8* @OleIsCurrentClipboard(i32* %215)
  store i8* %216, i8** %1, align 8
  %217 = load i8*, i8** %1, align 8
  %218 = load i8*, i8** @S_FALSE, align 8
  %219 = icmp eq i8* %217, %218
  %220 = zext i1 %219 to i32
  %221 = load i8*, i8** %1, align 8
  %222 = call i32 (i32, i8*, ...) @ok(i32 %220, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.15, i64 0, i64 0), i8* %221)
  %223 = call i8* @OleIsCurrentClipboard(i32* null)
  store i8* %223, i8** %1, align 8
  %224 = load i8*, i8** %1, align 8
  %225 = load i8*, i8** @S_FALSE, align 8
  %226 = icmp eq i8* %224, %225
  %227 = zext i1 %226 to i32
  %228 = load i8*, i8** %1, align 8
  %229 = call i32 (i32, i8*, ...) @ok(i32 %227, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i8* %228)
  %230 = call i32 @OpenClipboard(i32* null)
  %231 = call i32 (i32, i8*, ...) @ok(i32 %230, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0))
  %232 = load i8*, i8** @cf_onemore, align 8
  %233 = call i8* @GetClipboardData(i8* %232)
  store i8* %233, i8** %7, align 8
  %234 = load i8*, i8** %7, align 8
  %235 = load i8*, i8** %6, align 8
  %236 = icmp eq i8* %234, %235
  %237 = zext i1 %236 to i32
  %238 = load i8*, i8** %7, align 8
  %239 = call i32 (i32, i8*, ...) @ok(i32 %237, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i8* %238)
  %240 = load i8*, i8** %7, align 8
  %241 = call i8* @GlobalLock(i8* %240)
  store i8* %241, i8** %8, align 8
  %242 = load i8*, i8** %8, align 8
  %243 = icmp ne i8* %242, null
  br i1 %243, label %244, label %248

244:                                              ; preds = %190
  %245 = load i8*, i8** %8, align 8
  %246 = load i8*, i8** %7, align 8
  %247 = icmp ne i8* %245, %246
  br label %248

248:                                              ; preds = %244, %190
  %249 = phi i1 [ false, %190 ], [ %247, %244 ]
  %250 = zext i1 %249 to i32
  %251 = load i8*, i8** %8, align 8
  %252 = load i8*, i8** %7, align 8
  %253 = call i32 (i32, i8*, ...) @ok(i32 %250, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0), i8* %251, i8* %252)
  %254 = load i8*, i8** %6, align 8
  %255 = call i32 @GlobalUnlock(i8* %254)
  %256 = call i32 (...) @CloseClipboard()
  %257 = call i32 (i32, i8*, ...) @ok(i32 %256, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0))
  %258 = call i32 @test_cf_dataobject(i32* null)
  %259 = call i8* @OleSetClipboard(i32* null)
  %260 = load i8*, i8** @S_OK, align 8
  %261 = icmp eq i8* %259, %260
  %262 = zext i1 %261 to i32
  %263 = load i8*, i8** %1, align 8
  %264 = call i32 (i32, i8*, ...) @ok(i32 %262, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0), i8* %263)
  %265 = call i32 @OpenClipboard(i32* null)
  %266 = load i8*, i8** @cf_onemore, align 8
  %267 = call i8* @GetClipboardData(i8* %266)
  store i8* %267, i8** %7, align 8
  %268 = load i8*, i8** %7, align 8
  %269 = icmp eq i8* %268, null
  %270 = zext i1 %269 to i32
  %271 = load i8*, i8** %7, align 8
  %272 = call i32 (i32, i8*, ...) @ok(i32 %270, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i8* %271)
  %273 = call i32 (...) @CloseClipboard()
  %274 = call i32 @trace(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i64 0, i64 0))
  %275 = load i32*, i32** %5, align 8
  %276 = call i8* @OleSetClipboard(i32* %275)
  store i8* %276, i8** %1, align 8
  %277 = load i8*, i8** %1, align 8
  %278 = load i8*, i8** @S_OK, align 8
  %279 = icmp eq i8* %277, %278
  %280 = zext i1 %279 to i32
  %281 = load i8*, i8** %1, align 8
  %282 = call i32 (i32, i8*, ...) @ok(i32 %280, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.28, i64 0, i64 0), i8* %281)
  %283 = call i32 (...) @test_complex_get_clipboard()
  %284 = load i32*, i32** %5, align 8
  %285 = call i32 @test_cf_dataobject(i32* %284)
  %286 = load i32*, i32** %5, align 8
  %287 = call i32 @test_enum_fmtetc(i32* %286)
  %288 = call i8* @OleSetClipboard(i32* null)
  %289 = load i8*, i8** @S_OK, align 8
  %290 = icmp eq i8* %288, %289
  %291 = zext i1 %290 to i32
  %292 = load i8*, i8** %1, align 8
  %293 = call i32 (i32, i8*, ...) @ok(i32 %291, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0), i8* %292)
  %294 = call i32 (...) @test_no_cf_dataobject()
  %295 = call i32 @test_enum_fmtetc(i32* null)
  %296 = load i32*, i32** %3, align 8
  %297 = call i8* @IDataObject_Release(i32* %296)
  store i8* %297, i8** %2, align 8
  %298 = load i8*, i8** %2, align 8
  %299 = icmp eq i8* %298, null
  %300 = zext i1 %299 to i32
  %301 = load i8*, i8** %2, align 8
  %302 = call i32 (i32, i8*, ...) @ok(i32 %300, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i64 0, i64 0), i8* %301)
  %303 = load i32*, i32** %4, align 8
  %304 = call i8* @IDataObject_Release(i32* %303)
  store i8* %304, i8** %2, align 8
  %305 = load i8*, i8** %2, align 8
  %306 = icmp eq i8* %305, null
  %307 = zext i1 %306 to i32
  %308 = load i8*, i8** %2, align 8
  %309 = call i32 (i32, i8*, ...) @ok(i32 %307, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.30, i64 0, i64 0), i8* %308)
  %310 = load i32*, i32** %5, align 8
  %311 = call i8* @IDataObject_Release(i32* %310)
  store i8* %311, i8** %2, align 8
  %312 = load i8*, i8** %2, align 8
  %313 = icmp eq i8* %312, null
  %314 = zext i1 %313 to i32
  %315 = load i8*, i8** %2, align 8
  %316 = call i32 (i32, i8*, ...) @ok(i32 %314, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.31, i64 0, i64 0), i8* %315)
  %317 = call i32 (...) @OleUninitialize()
  br label %318

318:                                              ; preds = %248, %48, %36, %24
  ret void
}

declare dso_local i8* @RegisterClipboardFormatA(i8*) #1

declare dso_local i8* @DataObjectImpl_CreateText(i8*, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @FAILED(i8*) #1

declare dso_local i8* @DataObjectImpl_CreateComplex(i32**) #1

declare dso_local i8* @OleSetClipboard(i32*) #1

declare dso_local i32 @CoInitialize(i32*) #1

declare dso_local i32 @CoUninitialize(...) #1

declare dso_local i8* @OleInitialize(i32*) #1

declare dso_local i32 @test_cf_dataobject(i32*) #1

declare dso_local i8* @OleIsCurrentClipboard(i32*) #1

declare dso_local i32 @test_get_clipboard(...) #1

declare dso_local i8* @GlobalAlloc(i32, i32) #1

declare dso_local i8* @GlobalLock(i8*) #1

declare dso_local i32 @GlobalUnlock(i8*) #1

declare dso_local i32 @OpenClipboard(i32*) #1

declare dso_local i8* @SetClipboardData(i8*, i8*) #1

declare dso_local i8* @GetClipboardData(i8*) #1

declare dso_local i32 @CloseClipboard(...) #1

declare dso_local i8* @OleFlushClipboard(...) #1

declare dso_local i32 @trace(i8*) #1

declare dso_local i32 @test_complex_get_clipboard(...) #1

declare dso_local i32 @test_enum_fmtetc(i32*) #1

declare dso_local i32 @test_no_cf_dataobject(...) #1

declare dso_local i8* @IDataObject_Release(i32*) #1

declare dso_local i32 @OleUninitialize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

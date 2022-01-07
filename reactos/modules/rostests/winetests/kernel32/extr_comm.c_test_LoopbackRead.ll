; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_comm.c_test_LoopbackRead.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_comm.c_test_LoopbackRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_8__ = type { i32 }

@__const.test_LoopbackRead.tbuf = private unnamed_addr constant [18 x i8] c"test_LoopbackRead\00", align 16
@loopback_txd_rxd = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Starting test_LoopbackRead\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"GetCommState failed\0A\00", align 1
@FASTBAUD = common dso_local global i32 0, align 4
@NOPARITY = common dso_local global i8* null, align 8
@RTS_CONTROL_ENABLE = common dso_local global i8* null, align 8
@DTR_CONTROL_ENABLE = common dso_local global i8* null, align 8
@ONESTOPBIT = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"SetCommState failed\0A\00", align 1
@TIMEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"SetCommTimeouts failed\0A\00", align 1
@EV_TXEMPTY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"SetCommMask failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"WriteFile failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"WriteFile %d bytes written\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"WaitCommEvent failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"WaitCommEvent: Unexpected EvtMask 0x%08x, expected 0x%08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"Write %d ms WaitCommEvent EV_TXEMPTY %d ms\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Readfile failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"ReadFile read %d bytes, expected \22%s\22\0A\00", align 1
@EV_RXCHAR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [24 x i8] c"WaitCommEventEV_RXCHAR\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"ReadFile read %d bytes\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"Readfile for %d chars took %d ms\0A\00", align 1
@TIMEDELTA = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [46 x i8] c"Timedout Wait took %d ms, expected around %d\0A\00", align 1
@SLOWBAUD = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [46 x i8] c"Plain Read for %d char at %d baud took %d ms\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_LoopbackRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_LoopbackRead() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_7__, align 8
  %3 = alloca %struct.TYPE_8__, align 4
  %4 = alloca [32 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [18 x i8], align 16
  store i32 0, i32* %11, align 4
  %15 = bitcast [18 x i8]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 getelementptr inbounds ([18 x i8], [18 x i8]* @__const.test_LoopbackRead.tbuf, i32 0, i32 0), i64 18, i1 false)
  %16 = load i32, i32* @loopback_txd_rxd, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %0
  br label %227

19:                                               ; preds = %0
  %20 = load i32, i32* @FALSE, align 4
  %21 = call i64 @test_OpenComm(i32 %20)
  store i64 %21, i64* %1, align 8
  %22 = load i64, i64* %1, align 8
  %23 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %227

26:                                               ; preds = %19
  %27 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %28 = load i64, i64* %1, align 8
  %29 = call i32 @GetCommState(i64 %28, %struct.TYPE_7__* %2)
  %30 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @FASTBAUD, align 4
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  store i32 8, i32* %33, align 4
  %34 = load i8*, i8** @NOPARITY, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 5
  store i8* %34, i8** %35, align 8
  %36 = load i8*, i8** @RTS_CONTROL_ENABLE, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 4
  store i8* %36, i8** %37, align 8
  %38 = load i8*, i8** @DTR_CONTROL_ENABLE, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 3
  store i8* %38, i8** %39, align 8
  %40 = load i8*, i8** @ONESTOPBIT, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  store i8* %40, i8** %41, align 8
  %42 = load i64, i64* %1, align 8
  %43 = call i32 @SetCommState(i64 %42, %struct.TYPE_7__* %2)
  %44 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %45 = call i32 @ZeroMemory(%struct.TYPE_8__* %3, i32 4)
  %46 = load i32, i32* @TIMEOUT, align 4
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = load i64, i64* %1, align 8
  %49 = call i32 @SetCommTimeouts(i64 %48, %struct.TYPE_8__* %3)
  %50 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %51 = load i64, i64* %1, align 8
  %52 = load i32, i32* @EV_TXEMPTY, align 4
  %53 = call i32 @SetCommMask(i64 %51, i32 %52)
  %54 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %55 = call i32 (...) @GetTickCount()
  store i32 %55, i32* %5, align 4
  %56 = load i64, i64* %1, align 8
  %57 = getelementptr inbounds [18 x i8], [18 x i8]* %14, i64 0, i64 0
  %58 = call i32 @WriteFile(i64 %56, i8* %57, i32 18, i32* %10, i32* null)
  %59 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %60 = call i32 (...) @GetTickCount()
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = icmp eq i64 %62, 18
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %10, align 4
  %66 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %5, align 4
  %69 = sub nsw i32 %67, %68
  store i32 %69, i32* %7, align 4
  %70 = load i64, i64* %1, align 8
  %71 = call i32 @WaitCommEvent(i64 %70, i32* %11, i32* null)
  %72 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %73 = call i32 (...) @GetTickCount()
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @EV_TXEMPTY, align 4
  %76 = icmp eq i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @EV_TXEMPTY, align 4
  %80 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i64 0, i64 0), i32 %78, i32 %79)
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %6, align 4
  %84 = sub nsw i32 %82, %83
  %85 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i32 %81, i32 %84)
  store i32 0, i32* %8, align 4
  %86 = load i64, i64* %1, align 8
  %87 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %88 = call i32 @ReadFile(i64 %86, i8* %87, i32 32, i32* %8, i32* null)
  %89 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = icmp eq i64 %91, 18
  %93 = zext i1 %92 to i32
  %94 = load i32, i32* %8, align 4
  %95 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %96 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), i32 %94, i8* %95)
  %97 = load i64, i64* %1, align 8
  %98 = call i32 @GetCommState(i64 %97, %struct.TYPE_7__* %2)
  %99 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  store i32 9600, i32* %100, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  store i32 8, i32* %101, align 4
  %102 = load i8*, i8** @NOPARITY, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 5
  store i8* %102, i8** %103, align 8
  %104 = load i8*, i8** @RTS_CONTROL_ENABLE, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 4
  store i8* %104, i8** %105, align 8
  %106 = load i8*, i8** @DTR_CONTROL_ENABLE, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 3
  store i8* %106, i8** %107, align 8
  %108 = load i8*, i8** @ONESTOPBIT, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  store i8* %108, i8** %109, align 8
  %110 = load i64, i64* %1, align 8
  %111 = call i32 @SetCommState(i64 %110, %struct.TYPE_7__* %2)
  %112 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %113 = load i64, i64* %1, align 8
  %114 = load i32, i32* @EV_RXCHAR, align 4
  %115 = call i32 @SetCommMask(i64 %113, i32 %114)
  %116 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %117 = load i64, i64* %1, align 8
  %118 = getelementptr inbounds [18 x i8], [18 x i8]* %14, i64 0, i64 0
  %119 = call i32 @WriteFile(i64 %117, i8* %118, i32 18, i32* %10, i32* null)
  %120 = call i32 (i32, i8*, ...) @ok(i32 %119, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = icmp eq i64 %122, 18
  %124 = zext i1 %123 to i32
  %125 = load i32, i32* %10, align 4
  %126 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %125)
  %127 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  %128 = load i64, i64* %1, align 8
  %129 = call i32 @WaitCommEvent(i64 %128, i32* %11, i32* null)
  %130 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* @EV_RXCHAR, align 4
  %133 = icmp eq i32 %131, %132
  %134 = zext i1 %133 to i32
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* @EV_RXCHAR, align 4
  %137 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i64 0, i64 0), i32 %135, i32 %136)
  %138 = call i32 (...) @GetTickCount()
  store i32 %138, i32* %5, align 4
  %139 = load i64, i64* %1, align 8
  %140 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %141 = call i32 @ReadFile(i64 %139, i8* %140, i32 32, i32* %8, i32* null)
  store i32 %141, i32* %13, align 4
  %142 = call i32 (...) @GetTickCount()
  store i32 %142, i32* %6, align 4
  %143 = load i32, i32* %13, align 4
  %144 = call i32 (i32, i8*, ...) @ok(i32 %143, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = icmp eq i64 %146, 18
  %148 = zext i1 %147 to i32
  %149 = load i32, i32* %8, align 4
  %150 = call i32 (i32, i8*, ...) @ok(i32 %148, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32 %149)
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* %5, align 4
  %153 = sub nsw i32 %151, %152
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* %7, align 4
  %156 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i32 %154, i32 %155)
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* @TIMEOUT, align 4
  %159 = load i32, i32* @TIMEDELTA, align 4
  %160 = sub nsw i32 %158, %159
  %161 = icmp sgt i32 %157, %160
  br i1 %161, label %162, label %168

162:                                              ; preds = %26
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* @TIMEOUT, align 4
  %165 = load i32, i32* @TIMEDELTA, align 4
  %166 = add nsw i32 %164, %165
  %167 = icmp slt i32 %163, %166
  br label %168

168:                                              ; preds = %162, %26
  %169 = phi i1 [ false, %26 ], [ %167, %162 ]
  %170 = zext i1 %169 to i32
  %171 = load i32, i32* %7, align 4
  %172 = load i32, i32* @TIMEOUT, align 4
  %173 = call i32 (i32, i8*, ...) @ok(i32 %170, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0), i32 %171, i32 %172)
  %174 = load i32, i32* @SLOWBAUD, align 4
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  store i32 %174, i32* %175, align 8
  %176 = load i64, i64* %1, align 8
  %177 = call i32 @SetCommState(i64 %176, %struct.TYPE_7__* %2)
  %178 = call i32 (i32, i8*, ...) @ok(i32 %177, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %179 = load i64, i64* %1, align 8
  %180 = getelementptr inbounds [18 x i8], [18 x i8]* %14, i64 0, i64 0
  %181 = call i32 @WriteFile(i64 %179, i8* %180, i32 18, i32* %10, i32* null)
  %182 = call i32 (i32, i8*, ...) @ok(i32 %181, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %183 = call i32 (...) @GetTickCount()
  store i32 %183, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %184

184:                                              ; preds = %209, %168
  %185 = load i64, i64* %1, align 8
  %186 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %187 = load i32, i32* %8, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %186, i64 %188
  %190 = load i32, i32* %8, align 4
  %191 = sext i32 %190 to i64
  %192 = sub i64 32, %191
  %193 = trunc i64 %192 to i32
  %194 = call i32 @ReadFile(i64 %185, i8* %189, i32 %193, i32* %9, i32* null)
  store i32 %194, i32* %13, align 4
  %195 = load i32, i32* %13, align 4
  %196 = call i32 (i32, i8*, ...) @ok(i32 %195, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %197 = load i32, i32* %9, align 4
  %198 = load i32, i32* %8, align 4
  %199 = add nsw i32 %198, %197
  store i32 %199, i32* %8, align 4
  %200 = load i32, i32* %12, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %12, align 4
  br label %202

202:                                              ; preds = %184
  %203 = load i32, i32* %8, align 4
  %204 = sext i32 %203 to i64
  %205 = icmp ult i64 %204, 18
  br i1 %205, label %206, label %209

206:                                              ; preds = %202
  %207 = load i32, i32* %12, align 4
  %208 = icmp slt i32 %207, 10
  br label %209

209:                                              ; preds = %206, %202
  %210 = phi i1 [ false, %202 ], [ %208, %206 ]
  br i1 %210, label %184, label %211

211:                                              ; preds = %209
  %212 = call i32 (...) @GetTickCount()
  store i32 %212, i32* %6, align 4
  %213 = load i32, i32* %8, align 4
  %214 = sext i32 %213 to i64
  %215 = icmp eq i64 %214, 18
  %216 = zext i1 %215 to i32
  %217 = load i32, i32* %8, align 4
  %218 = call i32 (i32, i8*, ...) @ok(i32 %216, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32 %217)
  %219 = load i32, i32* %8, align 4
  %220 = load i32, i32* @SLOWBAUD, align 4
  %221 = load i32, i32* %6, align 4
  %222 = load i32, i32* %5, align 4
  %223 = sub nsw i32 %221, %222
  %224 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.16, i64 0, i64 0), i32 %219, i32 %220, i32 %223)
  %225 = load i64, i64* %1, align 8
  %226 = call i32 @CloseHandle(i64 %225)
  br label %227

227:                                              ; preds = %211, %25, %18
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @test_OpenComm(i32) #2

declare dso_local i32 @trace(i8*, ...) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @GetCommState(i64, %struct.TYPE_7__*) #2

declare dso_local i32 @SetCommState(i64, %struct.TYPE_7__*) #2

declare dso_local i32 @ZeroMemory(%struct.TYPE_8__*, i32) #2

declare dso_local i32 @SetCommTimeouts(i64, %struct.TYPE_8__*) #2

declare dso_local i32 @SetCommMask(i64, i32) #2

declare dso_local i32 @GetTickCount(...) #2

declare dso_local i32 @WriteFile(i64, i8*, i32, i32*, i32*) #2

declare dso_local i32 @WaitCommEvent(i64, i32*, i32*) #2

declare dso_local i32 @ReadFile(i64, i8*, i32, i32*, i32*) #2

declare dso_local i32 @CloseHandle(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

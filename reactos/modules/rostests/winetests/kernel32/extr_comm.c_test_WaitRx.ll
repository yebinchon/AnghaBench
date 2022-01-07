; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_comm.c_test_WaitRx.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_comm.c_test_WaitRx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@loopback_txd_rxd = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@EV_RXCHAR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"SetCommMask failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"CreateEvent failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"CreateEvent res %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Success 0x%08x err %d evtmask 0x%08x\0A\00", align 1
@ERROR_IO_PENDING = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"overlapped WaitCommEvent failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"overlapped WaitCommEvent returned.\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"overlapped WriteFile failed, err %d\0A\00", align 1
@TIMEOUT = common dso_local global i32 0, align 4
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [39 x i8] c"WaitForSingleObjectEx, res %d, err %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Write after Wait res 0x%08x err %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"wait hComPortEvent, res 0x%08x, err %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"Success 0x%08x err %d evtmask 0x%08x diff1 %d, diff2 %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"Detect  EV_RXCHAR: 0x%08x, expected 0x%08x\0A\00", align 1
@TIMEDELTA = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [40 x i8] c"Unexpected time %d, expected around %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_WaitRx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_WaitRx() #0 {
  %1 = alloca %struct.TYPE_6__, align 8
  %2 = alloca %struct.TYPE_6__, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = load i64, i64* @FALSE, align 8
  store i64 %16, i64* %10, align 8
  store i64 0, i64* %15, align 8
  %17 = load i32, i32* @loopback_txd_rxd, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %0
  br label %198

20:                                               ; preds = %0
  %21 = load i32, i32* @TRUE, align 4
  %22 = call i64 @test_OpenComm(i32 %21)
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %198

27:                                               ; preds = %20
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @EV_RXCHAR, align 8
  %30 = call i32 @SetCommMask(i64 %28, i64 %29)
  %31 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @TRUE, align 4
  %33 = load i64, i64* @FALSE, align 8
  %34 = call i64 @CreateEventW(i32* null, i32 %32, i64 %33, i32* null)
  store i64 %34, i64* %4, align 8
  %35 = load i64, i64* %4, align 8
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %39 = call i32 @ZeroMemory(%struct.TYPE_6__* %1, i32 8)
  %40 = load i64, i64* %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  store i64 %40, i64* %41, align 8
  %42 = load i32, i32* @TRUE, align 4
  %43 = load i64, i64* @FALSE, align 8
  %44 = call i64 @CreateEventW(i32* null, i32 %42, i64 %43, i32* null)
  store i64 %44, i64* %5, align 8
  %45 = load i64, i64* %5, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = icmp ne i8* %46, null
  %48 = zext i1 %47 to i32
  %49 = call i64 (...) @GetLastError()
  %50 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %49)
  %51 = call i32 @ZeroMemory(%struct.TYPE_6__* %2, i32 8)
  %52 = load i64, i64* %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  store i64 %52, i64* %53, align 8
  %54 = call i64 (...) @GetTickCount()
  store i64 %54, i64* %6, align 8
  %55 = load i64, i64* %3, align 8
  %56 = call i64 @WaitCommEvent(i64 %55, i64* %15, %struct.TYPE_6__* %1)
  store i64 %56, i64* %10, align 8
  %57 = call i64 (...) @GetLastError()
  store i64 %57, i64* %12, align 8
  %58 = call i64 (...) @GetTickCount()
  store i64 %58, i64* %7, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %12, align 8
  %61 = load i64, i64* %15, align 8
  %62 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %59, i64 %60, i64 %61)
  %63 = load i64, i64* %10, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %27
  %66 = load i64, i64* %12, align 8
  %67 = load i64, i64* @ERROR_IO_PENDING, align 8
  %68 = icmp eq i64 %66, %67
  br label %69

69:                                               ; preds = %65, %27
  %70 = phi i1 [ true, %27 ], [ %68, %65 ]
  %71 = zext i1 %70 to i32
  %72 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %73 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %74 = load i64, i64* %3, align 8
  %75 = call i64 @WriteFile(i64 %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 1, i64* %14, %struct.TYPE_6__* %2)
  store i64 %75, i64* %11, align 8
  %76 = call i64 (...) @GetLastError()
  store i64 %76, i64* %13, align 8
  %77 = load i64, i64* %11, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %69
  %80 = load i64, i64* %13, align 8
  %81 = load i64, i64* @ERROR_IO_PENDING, align 8
  %82 = icmp eq i64 %80, %81
  br label %83

83:                                               ; preds = %79, %69
  %84 = phi i1 [ true, %69 ], [ %82, %79 ]
  %85 = zext i1 %84 to i32
  %86 = load i64, i64* %13, align 8
  %87 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i64 %86)
  %88 = load i64, i64* %11, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %107, label %90

90:                                               ; preds = %83
  %91 = load i64, i64* %13, align 8
  %92 = load i64, i64* @ERROR_IO_PENDING, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %107

94:                                               ; preds = %90
  %95 = load i64, i64* %5, align 8
  %96 = load i32, i32* @TIMEOUT, align 4
  %97 = load i32, i32* @TRUE, align 4
  %98 = call i64 @WaitForSingleObjectEx(i64 %95, i32 %96, i32 %97)
  store i64 %98, i64* %11, align 8
  %99 = call i64 (...) @GetLastError()
  store i64 %99, i64* %13, align 8
  %100 = load i64, i64* %11, align 8
  %101 = load i64, i64* @WAIT_OBJECT_0, align 8
  %102 = icmp eq i64 %100, %101
  %103 = zext i1 %102 to i32
  %104 = load i64, i64* %11, align 8
  %105 = load i64, i64* %13, align 8
  %106 = call i32 (i32, i8*, ...) @ok(i32 %103, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i64 %104, i64 %105)
  br label %107

107:                                              ; preds = %94, %90, %83
  %108 = load i32, i32* @TIMEOUT, align 4
  %109 = ashr i32 %108, 1
  %110 = call i32 @Sleep(i32 %109)
  %111 = load i64, i64* %3, align 8
  %112 = load i64, i64* @FALSE, align 8
  %113 = call i64 @GetOverlappedResult(i64 %111, %struct.TYPE_6__* %2, i64* %14, i64 %112)
  store i64 %113, i64* %11, align 8
  %114 = call i64 (...) @GetLastError()
  store i64 %114, i64* %13, align 8
  %115 = load i64, i64* %11, align 8
  %116 = load i64, i64* %13, align 8
  %117 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i64 %115, i64 %116)
  %118 = load i64, i64* %11, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %107
  %121 = load i64, i64* %14, align 8
  %122 = icmp eq i64 %121, 1
  br label %123

123:                                              ; preds = %120, %107
  %124 = phi i1 [ false, %107 ], [ %122, %120 ]
  %125 = zext i1 %124 to i32
  %126 = load i64, i64* %11, align 8
  %127 = load i64, i64* %13, align 8
  %128 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i64 %126, i64 %127)
  %129 = load i64, i64* %10, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %148, label %131

131:                                              ; preds = %123
  %132 = load i64, i64* %12, align 8
  %133 = load i64, i64* @ERROR_IO_PENDING, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %148

135:                                              ; preds = %131
  %136 = load i64, i64* %4, align 8
  %137 = load i32, i32* @TIMEOUT, align 4
  %138 = load i32, i32* @TRUE, align 4
  %139 = call i64 @WaitForSingleObjectEx(i64 %136, i32 %137, i32 %138)
  store i64 %139, i64* %10, align 8
  %140 = call i64 (...) @GetLastError()
  store i64 %140, i64* %12, align 8
  %141 = load i64, i64* %10, align 8
  %142 = load i64, i64* @WAIT_OBJECT_0, align 8
  %143 = icmp eq i64 %141, %142
  %144 = zext i1 %143 to i32
  %145 = load i64, i64* %10, align 8
  %146 = load i64, i64* %12, align 8
  %147 = call i32 (i32, i8*, ...) @ok(i32 %144, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i64 %145, i64 %146)
  br label %148

148:                                              ; preds = %135, %131, %123
  %149 = load i64, i64* %3, align 8
  %150 = load i64, i64* @FALSE, align 8
  %151 = call i64 @GetOverlappedResult(i64 %149, %struct.TYPE_6__* %1, i64* %14, i64 %150)
  store i64 %151, i64* %10, align 8
  %152 = call i64 (...) @GetLastError()
  store i64 %152, i64* %12, align 8
  %153 = call i64 (...) @GetTickCount()
  store i64 %153, i64* %8, align 8
  %154 = load i64, i64* %10, align 8
  %155 = load i64, i64* %12, align 8
  %156 = load i64, i64* %15, align 8
  %157 = load i64, i64* %7, align 8
  %158 = load i64, i64* %6, align 8
  %159 = sub nsw i64 %157, %158
  %160 = load i64, i64* %8, align 8
  %161 = load i64, i64* %6, align 8
  %162 = sub nsw i64 %160, %161
  %163 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.11, i64 0, i64 0), i64 %154, i64 %155, i64 %156, i64 %159, i64 %162)
  %164 = load i64, i64* %15, align 8
  %165 = load i64, i64* @EV_RXCHAR, align 8
  %166 = and i64 %164, %165
  %167 = trunc i64 %166 to i32
  %168 = load i64, i64* %15, align 8
  %169 = load i64, i64* @EV_RXCHAR, align 8
  %170 = call i32 (i32, i8*, ...) @ok(i32 %167, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0), i64 %168, i64 %169)
  %171 = load i64, i64* %8, align 8
  %172 = load i64, i64* %6, align 8
  %173 = sub nsw i64 %171, %172
  store i64 %173, i64* %9, align 8
  %174 = load i64, i64* %9, align 8
  %175 = load i32, i32* @TIMEOUT, align 4
  %176 = ashr i32 %175, 1
  %177 = load i32, i32* @TIMEDELTA, align 4
  %178 = sub nsw i32 %176, %177
  %179 = sext i32 %178 to i64
  %180 = icmp sgt i64 %174, %179
  br i1 %180, label %181, label %189

181:                                              ; preds = %148
  %182 = load i64, i64* %9, align 8
  %183 = load i32, i32* @TIMEOUT, align 4
  %184 = ashr i32 %183, 1
  %185 = load i32, i32* @TIMEDELTA, align 4
  %186 = add nsw i32 %184, %185
  %187 = sext i32 %186 to i64
  %188 = icmp slt i64 %182, %187
  br label %189

189:                                              ; preds = %181, %148
  %190 = phi i1 [ false, %148 ], [ %188, %181 ]
  %191 = zext i1 %190 to i32
  %192 = load i64, i64* %9, align 8
  %193 = load i32, i32* @TIMEOUT, align 4
  %194 = ashr i32 %193, 1
  %195 = call i32 (i32, i8*, ...) @ok(i32 %191, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0), i64 %192, i32 %194)
  %196 = load i64, i64* %3, align 8
  %197 = call i32 @CloseHandle(i64 %196)
  br label %198

198:                                              ; preds = %189, %26, %19
  ret void
}

declare dso_local i64 @test_OpenComm(i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @SetCommMask(i64, i64) #1

declare dso_local i64 @CreateEventW(i32*, i32, i64, i32*) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @GetTickCount(...) #1

declare dso_local i64 @WaitCommEvent(i64, i64*, %struct.TYPE_6__*) #1

declare dso_local i32 @trace(i8*, ...) #1

declare dso_local i64 @WriteFile(i64, i8*, i32, i64*, %struct.TYPE_6__*) #1

declare dso_local i64 @WaitForSingleObjectEx(i64, i32, i32) #1

declare dso_local i32 @Sleep(i32) #1

declare dso_local i64 @GetOverlappedResult(i64, %struct.TYPE_6__*, i64*, i64) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

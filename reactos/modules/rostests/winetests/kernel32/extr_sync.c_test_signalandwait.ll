; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_sync.c_test_signalandwait.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_sync.c_test_signalandwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WAIT_FAILED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"should fail\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to create event flags\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"should succeed\0A\00", align 1
@WAIT_TIMEOUT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"event was signalled\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"failed to clear event[1]\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"should timeout\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"failed to create semaphore\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@FILE_FLAG_DELETE_ON_CLOSE = common dso_local global i32 0, align 4
@ERROR_INVALID_HANDLE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [36 x i8] c"should return invalid handle error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_signalandwait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_signalandwait() #0 {
  %1 = alloca i64, align 8
  %2 = alloca [2 x i32*], align 16
  %3 = alloca [2 x i32*], align 16
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = call i64 @SignalObjectAndWait(i32* null, i32* null, i32 0, i64 0)
  store i64 %6, i64* %1, align 8
  %7 = load i64, i64* %1, align 8
  %8 = load i64, i64* @WAIT_FAILED, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %12 = call i32* @CreateEventW(i32* null, i32 0, i32 0, i32* null)
  %13 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 0
  store i32* %12, i32** %13, align 16
  %14 = call i32* @CreateEventW(i32* null, i32 1, i32 1, i32* null)
  %15 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 1
  store i32* %14, i32** %15, align 8
  %16 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 0
  %17 = load i32*, i32** %16, align 16
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %0
  %20 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br label %23

23:                                               ; preds = %19, %0
  %24 = phi i1 [ false, %0 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %27 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 0
  %28 = load i32*, i32** %27, align 16
  %29 = load i64, i64* @FALSE, align 8
  %30 = call i64 @SignalObjectAndWait(i32* %28, i32* null, i32 0, i64 %29)
  store i64 %30, i64* %1, align 8
  %31 = load i64, i64* %1, align 8
  %32 = load i64, i64* @WAIT_FAILED, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %36 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 0
  %37 = load i32*, i32** %36, align 16
  %38 = load i64, i64* @FALSE, align 8
  %39 = call i64 @SignalObjectAndWait(i32* null, i32* %37, i32 0, i64 %38)
  store i64 %39, i64* %1, align 8
  %40 = load i64, i64* %1, align 8
  %41 = load i64, i64* @WAIT_FAILED, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %45 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 0
  %46 = load i32*, i32** %45, align 16
  %47 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @FALSE, align 8
  %50 = call i64 @SignalObjectAndWait(i32* %46, i32* %48, i32 0, i64 %49)
  store i64 %50, i64* %1, align 8
  %51 = load i64, i64* %1, align 8
  %52 = load i64, i64* @WAIT_OBJECT_0, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @ok(i32 %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %71, %23
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %57, 10000
  br i1 %58, label %59, label %74

59:                                               ; preds = %56
  %60 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 0
  %61 = load i32*, i32** %60, align 16
  %62 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 0
  %63 = load i32*, i32** %62, align 16
  %64 = load i64, i64* @FALSE, align 8
  %65 = call i64 @SignalObjectAndWait(i32* %61, i32* %63, i32 0, i64 %64)
  store i64 %65, i64* %1, align 8
  %66 = load i64, i64* %1, align 8
  %67 = load i64, i64* @WAIT_OBJECT_0, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @ok(i32 %69, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %71

71:                                               ; preds = %59
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %56

74:                                               ; preds = %56
  %75 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 0
  %76 = load i32*, i32** %75, align 16
  %77 = call i64 @WaitForSingleObject(i32* %76, i32 0)
  store i64 %77, i64* %1, align 8
  %78 = load i64, i64* %1, align 8
  %79 = load i64, i64* @WAIT_TIMEOUT, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @ok(i32 %81, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %83 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 0
  %84 = load i32*, i32** %83, align 16
  %85 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 0
  %86 = load i32*, i32** %85, align 16
  %87 = load i64, i64* @FALSE, align 8
  %88 = call i64 @SignalObjectAndWait(i32* %84, i32* %86, i32 0, i64 %87)
  store i64 %88, i64* %1, align 8
  %89 = load i64, i64* %1, align 8
  %90 = load i64, i64* @WAIT_OBJECT_0, align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @ok(i32 %92, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %94 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 1
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @ResetEvent(i32* %95)
  %97 = call i32 @ok(i32 %96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %98 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 0
  %99 = load i32*, i32** %98, align 16
  %100 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* @FALSE, align 8
  %103 = call i64 @SignalObjectAndWait(i32* %99, i32* %101, i32 0, i64 %102)
  store i64 %103, i64* %1, align 8
  %104 = load i64, i64* %1, align 8
  %105 = load i64, i64* @WAIT_TIMEOUT, align 8
  %106 = icmp eq i64 %104, %105
  %107 = zext i1 %106 to i32
  %108 = call i32 @ok(i32 %107, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %109 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 0
  %110 = load i32*, i32** %109, align 16
  %111 = call i32 @CloseHandle(i32* %110)
  %112 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 1
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @CloseHandle(i32* %113)
  %115 = call i32* @CreateSemaphoreW(i32* null, i32 0, i32 1, i32* null)
  %116 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 0
  store i32* %115, i32** %116, align 16
  %117 = call i32* @CreateSemaphoreW(i32* null, i32 1, i32 1, i32* null)
  %118 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 1
  store i32* %117, i32** %118, align 8
  %119 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 0
  %120 = load i32*, i32** %119, align 16
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %126

122:                                              ; preds = %74
  %123 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 1
  %124 = load i32*, i32** %123, align 8
  %125 = icmp ne i32* %124, null
  br label %126

126:                                              ; preds = %122, %74
  %127 = phi i1 [ false, %74 ], [ %125, %122 ]
  %128 = zext i1 %127 to i32
  %129 = call i32 @ok(i32 %128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %130 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 0
  %131 = load i32*, i32** %130, align 16
  %132 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 1
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* @FALSE, align 8
  %135 = call i64 @SignalObjectAndWait(i32* %131, i32* %133, i32 0, i64 %134)
  store i64 %135, i64* %1, align 8
  %136 = load i64, i64* %1, align 8
  %137 = load i64, i64* @WAIT_OBJECT_0, align 8
  %138 = icmp eq i64 %136, %137
  %139 = zext i1 %138 to i32
  %140 = call i32 @ok(i32 %139, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %141 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 0
  %142 = load i32*, i32** %141, align 16
  %143 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 1
  %144 = load i32*, i32** %143, align 8
  %145 = load i64, i64* @FALSE, align 8
  %146 = call i64 @SignalObjectAndWait(i32* %142, i32* %144, i32 0, i64 %145)
  store i64 %146, i64* %1, align 8
  %147 = load i64, i64* %1, align 8
  %148 = load i64, i64* @WAIT_FAILED, align 8
  %149 = icmp eq i64 %147, %148
  %150 = zext i1 %149 to i32
  %151 = call i32 @ok(i32 %150, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %152 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 0
  %153 = load i32*, i32** %152, align 16
  %154 = call i64 @ReleaseSemaphore(i32* %153, i32 1, i32* null)
  store i64 %154, i64* %1, align 8
  %155 = load i64, i64* %1, align 8
  %156 = load i64, i64* @FALSE, align 8
  %157 = icmp eq i64 %155, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 @ok(i32 %158, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %160 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 1
  %161 = load i32*, i32** %160, align 8
  %162 = call i64 @ReleaseSemaphore(i32* %161, i32 1, i32* null)
  store i64 %162, i64* %1, align 8
  %163 = load i64, i64* %1, align 8
  %164 = load i64, i64* @TRUE, align 8
  %165 = icmp eq i64 %163, %164
  %166 = zext i1 %165 to i32
  %167 = call i32 @ok(i32 %166, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %168 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 0
  %169 = load i32*, i32** %168, align 16
  %170 = call i32 @CloseHandle(i32* %169)
  %171 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 1
  %172 = load i32*, i32** %171, align 8
  %173 = call i32 @CloseHandle(i32* %172)
  %174 = load i32, i32* @GENERIC_READ, align 4
  %175 = load i32, i32* @GENERIC_WRITE, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* @CREATE_ALWAYS, align 4
  %178 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %179 = load i32, i32* @FILE_FLAG_DELETE_ON_CLOSE, align 4
  %180 = or i32 %178, %179
  %181 = call i32* @CreateFileA(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 %176, i32 0, i32* null, i32 %177, i32 %180, i32* null)
  store i32* %181, i32** %4, align 8
  %182 = load i32*, i32** %4, align 8
  %183 = load i32*, i32** %4, align 8
  %184 = load i64, i64* @FALSE, align 8
  %185 = call i64 @SignalObjectAndWait(i32* %182, i32* %183, i32 0, i64 %184)
  store i64 %185, i64* %1, align 8
  %186 = load i64, i64* %1, align 8
  %187 = load i64, i64* @WAIT_FAILED, align 8
  %188 = icmp eq i64 %186, %187
  %189 = zext i1 %188 to i32
  %190 = call i32 @ok(i32 %189, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %191 = load i64, i64* @ERROR_INVALID_HANDLE, align 8
  %192 = call i64 (...) @GetLastError()
  %193 = icmp eq i64 %191, %192
  %194 = zext i1 %193 to i32
  %195 = call i32 @ok(i32 %194, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  %196 = load i32*, i32** %4, align 8
  %197 = call i32 @CloseHandle(i32* %196)
  ret void
}

declare dso_local i64 @SignalObjectAndWait(i32*, i32*, i32, i64) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32* @CreateEventW(i32*, i32, i32, i32*) #1

declare dso_local i64 @WaitForSingleObject(i32*, i32) #1

declare dso_local i32 @ResetEvent(i32*) #1

declare dso_local i32 @CloseHandle(i32*) #1

declare dso_local i32* @CreateSemaphoreW(i32*, i32, i32, i32*) #1

declare dso_local i64 @ReleaseSemaphore(i32*, i32, i32*) #1

declare dso_local i32* @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i64 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

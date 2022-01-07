; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_eventlog.c_test_info.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_eventlog.c_test_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Expected failure\0A\00", align 1
@ERROR_INVALID_LEVEL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Expected ERROR_INVALID_LEVEL, got %d\0A\00", align 1
@EVENTLOG_FULL_INFO = common dso_local global i32 0, align 4
@ERROR_INVALID_HANDLE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"Expected ERROR_INVALID_HANDLE, got %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Application\00", align 1
@RPC_X_NULL_REF_POINTER = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"Expected RPC_X_NULL_REF_POINTER, got %d\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [44 x i8] c"Expected ERROR_INSUFFICIENT_BUFFER, got %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"Expected sizeof(EVENTLOG_FULL_INFORMATION), got %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Expected no change to the dwFull member\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Expected success\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"Expected 0 (not full) or 1 (full), got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_info() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [8 x i32], align 16
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %7 = bitcast i32* %6 to i8*
  %8 = bitcast i8* %7 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %5, align 8
  %9 = call i32 @SetLastError(i32 -559038737)
  %10 = call i32 @pGetEventLogInformation(i32* null, i32 1, %struct.TYPE_3__* null, i32 0, i32* null)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 (...) @GetLastError()
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* @ERROR_INVALID_LEVEL, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 (...) @GetLastError()
  %22 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = call i32 @SetLastError(i32 -559038737)
  %24 = load i32, i32* @EVENTLOG_FULL_INFO, align 4
  %25 = call i32 @pGetEventLogInformation(i32* null, i32 %24, %struct.TYPE_3__* null, i32 0, i32* null)
  store i32 %25, i32* %2, align 4
  %26 = load i32, i32* %2, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 (...) @GetLastError()
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* @ERROR_INVALID_HANDLE, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 (...) @GetLastError()
  %37 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = call i32* @OpenEventLogA(i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32* %38, i32** %1, align 8
  %39 = call i32 @SetLastError(i32 -559038737)
  %40 = load i32*, i32** %1, align 8
  %41 = load i32, i32* @EVENTLOG_FULL_INFO, align 4
  %42 = call i32 @pGetEventLogInformation(i32* %40, i32 %41, %struct.TYPE_3__* null, i32 0, i32* null)
  store i32 %42, i32* %2, align 4
  %43 = load i32, i32* %2, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %48 = call i32 (...) @GetLastError()
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* @RPC_X_NULL_REF_POINTER, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 (...) @GetLastError()
  %54 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  %55 = call i32 @SetLastError(i32 -559038737)
  %56 = load i32*, i32** %1, align 8
  %57 = load i32, i32* @EVENTLOG_FULL_INFO, align 4
  %58 = call i32 @pGetEventLogInformation(i32* %56, i32 %57, %struct.TYPE_3__* null, i32 0, i32* %3)
  store i32 %58, i32* %2, align 4
  %59 = load i32, i32* %2, align 4
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %64 = call i32 (...) @GetLastError()
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* @RPC_X_NULL_REF_POINTER, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 (...) @GetLastError()
  %70 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  %71 = call i32 @SetLastError(i32 -559038737)
  %72 = load i32*, i32** %1, align 8
  %73 = load i32, i32* @EVENTLOG_FULL_INFO, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %75 = call i32 @pGetEventLogInformation(i32* %72, i32 %73, %struct.TYPE_3__* %74, i32 0, i32* null)
  store i32 %75, i32* %2, align 4
  %76 = load i32, i32* %2, align 4
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %81 = call i32 (...) @GetLastError()
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* @RPC_X_NULL_REF_POINTER, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 (...) @GetLastError()
  %87 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %86)
  %88 = call i32 @SetLastError(i32 -559038737)
  store i32 -559038737, i32* %3, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  store i32 -559038737, i32* %90, align 4
  %91 = load i32*, i32** %1, align 8
  %92 = load i32, i32* @EVENTLOG_FULL_INFO, align 4
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %94 = call i32 @pGetEventLogInformation(i32* %91, i32 %92, %struct.TYPE_3__* %93, i32 0, i32* %3)
  store i32 %94, i32* %2, align 4
  %95 = load i32, i32* %2, align 4
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %100 = call i32 (...) @GetLastError()
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %103 = icmp eq i64 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 (...) @GetLastError()
  %106 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = icmp eq i64 %108, 4
  %110 = zext i1 %109 to i32
  %111 = load i32, i32* %3, align 4
  %112 = call i32 (i32, i8*, ...) @ok(i32 %110, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %111)
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, -559038737
  %117 = zext i1 %116 to i32
  %118 = call i32 (i32, i8*, ...) @ok(i32 %117, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  store i32 -559038737, i32* %120, align 4
  store i32 32, i32* %3, align 4
  %121 = load i32*, i32** %1, align 8
  %122 = load i32, i32* @EVENTLOG_FULL_INFO, align 4
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %124 = load i32, i32* %3, align 4
  %125 = call i32 @pGetEventLogInformation(i32* %121, i32 %122, %struct.TYPE_3__* %123, i32 %124, i32* %3)
  store i32 %125, i32* %2, align 4
  %126 = load i32, i32* %2, align 4
  %127 = call i32 (i32, i8*, ...) @ok(i32 %126, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %128 = load i32, i32* %3, align 4
  %129 = sext i32 %128 to i64
  %130 = icmp eq i64 %129, 4
  %131 = zext i1 %130 to i32
  %132 = load i32, i32* %3, align 4
  %133 = call i32 (i32, i8*, ...) @ok(i32 %131, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %132)
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %0
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 1
  br label %143

143:                                              ; preds = %138, %0
  %144 = phi i1 [ true, %0 ], [ %142, %138 ]
  %145 = zext i1 %144 to i32
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 (i32, i8*, ...) @ok(i32 %145, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i32 %148)
  %150 = load i32*, i32** %1, align 8
  %151 = call i32 @CloseEventLog(i32* %150)
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @pGetEventLogInformation(i32*, i32, %struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32* @OpenEventLogA(i32*, i8*) #1

declare dso_local i32 @CloseEventLog(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/netapi32/extr_apibuf.c_run_apibuf_tests.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/netapi32/extr_apibuf.c_run_apibuf_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NERR_Success = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"Reserved memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Got size\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"The size is correct\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Reallocated\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Freed\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"Error for NULL pointer\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Reallocate with OldBuffer = NULL failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"No memory got allocated\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"NetApiBufferFree failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Memory not reserved\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Not freed\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"Pointer not cleared\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"The size of the 0-length buffer\0A\00", align 1
@.str.13 = private unnamed_addr constant [74 x i8] c"returned %d with 0x%x (expected ERROR_INVALID_PARAMETER with 0xdeadbeef)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @run_apibuf_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_apibuf_tests() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = call i64 @pNetApiBufferAllocate(i32 1024, i32** %1)
  %5 = load i64, i64* @NERR_Success, align 8
  %6 = icmp eq i64 %4, %5
  %7 = zext i1 %6 to i32
  %8 = call i32 (i32, i8*, ...) @ok(i32 %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %9 = load i32*, i32** %1, align 8
  %10 = call i64 @pNetApiBufferSize(i32* %9, i32* %2)
  %11 = load i64, i64* @NERR_Success, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* %2, align 4
  %16 = icmp sge i32 %15, 1024
  %17 = zext i1 %16 to i32
  %18 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %19 = load i32*, i32** %1, align 8
  %20 = call i64 @pNetApiBufferReallocate(i32* %19, i32 1500, i32** %1)
  %21 = load i64, i64* @NERR_Success, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %25 = load i32*, i32** %1, align 8
  %26 = call i64 @pNetApiBufferSize(i32* %25, i32* %2)
  %27 = load i64, i64* @NERR_Success, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* %2, align 4
  %32 = icmp sge i32 %31, 1500
  %33 = zext i1 %32 to i32
  %34 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32*, i32** %1, align 8
  %36 = call i64 @pNetApiBufferFree(i32* %35)
  %37 = load i64, i64* @NERR_Success, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %41 = call i64 @pNetApiBufferSize(i32* null, i32* %2)
  %42 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %46 = call i64 @pNetApiBufferReallocate(i32* null, i32 1500, i32** %1)
  %47 = load i64, i64* @NERR_Success, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %51 = load i32*, i32** %1, align 8
  %52 = icmp ne i32* %51, null
  %53 = zext i1 %52 to i32
  %54 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %55 = load i32*, i32** %1, align 8
  %56 = call i64 @pNetApiBufferFree(i32* %55)
  %57 = load i64, i64* @NERR_Success, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %61 = call i64 @pNetApiBufferAllocate(i32 1024, i32** %1)
  %62 = load i64, i64* @NERR_Success, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %66 = load i32*, i32** %1, align 8
  %67 = call i64 @pNetApiBufferReallocate(i32* %66, i32 0, i32** %1)
  %68 = load i64, i64* @NERR_Success, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %72 = load i32*, i32** %1, align 8
  %73 = icmp eq i32* %72, null
  %74 = zext i1 %73 to i32
  %75 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %76 = call i64 @pNetApiBufferAllocate(i32 0, i32** %1)
  %77 = load i64, i64* @NERR_Success, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %81 = load i32*, i32** %1, align 8
  %82 = call i64 @pNetApiBufferSize(i32* %81, i32* %2)
  %83 = load i64, i64* @NERR_Success, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i32, i32* %2, align 4
  %88 = icmp ult i32 %87, -1
  %89 = zext i1 %88 to i32
  %90 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0))
  %91 = load i32*, i32** %1, align 8
  %92 = call i64 @pNetApiBufferFree(i32* %91)
  %93 = load i64, i64* @NERR_Success, align 8
  %94 = icmp eq i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %97 = call i32 @SetLastError(i32 -559038737)
  %98 = call i64 @pNetApiBufferAllocate(i32 0, i32** null)
  store i64 %98, i64* %3, align 8
  %99 = load i64, i64* %3, align 8
  %100 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %0
  %103 = call i32 (...) @GetLastError()
  %104 = icmp eq i32 %103, -559038737
  br label %105

105:                                              ; preds = %102, %0
  %106 = phi i1 [ false, %0 ], [ %104, %102 ]
  %107 = zext i1 %106 to i32
  %108 = load i64, i64* %3, align 8
  %109 = call i32 (...) @GetLastError()
  %110 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.13, i64 0, i64 0), i64 %108, i32 %109)
  %111 = call i32 @SetLastError(i32 -559038737)
  %112 = call i64 @pNetApiBufferAllocate(i32 1024, i32** null)
  store i64 %112, i64* %3, align 8
  %113 = load i64, i64* %3, align 8
  %114 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %105
  %117 = call i32 (...) @GetLastError()
  %118 = icmp eq i32 %117, -559038737
  br label %119

119:                                              ; preds = %116, %105
  %120 = phi i1 [ false, %105 ], [ %118, %116 ]
  %121 = zext i1 %120 to i32
  %122 = load i64, i64* %3, align 8
  %123 = call i32 (...) @GetLastError()
  %124 = call i32 (i32, i8*, ...) @ok(i32 %121, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.13, i64 0, i64 0), i64 %122, i32 %123)
  ret void
}

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @pNetApiBufferAllocate(i32, i32**) #1

declare dso_local i64 @pNetApiBufferSize(i32*, i32*) #1

declare dso_local i64 @pNetApiBufferReallocate(i32*, i32, i32**) #1

declare dso_local i64 @pNetApiBufferFree(i32*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

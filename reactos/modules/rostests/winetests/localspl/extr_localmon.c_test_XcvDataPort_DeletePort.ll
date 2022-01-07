; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/localspl/extr_localmon.c_test_XcvDataPort_DeletePort.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/localspl/extr_localmon.c_test_XcvDataPort_DeletePort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hXcv = common dso_local global i32 0, align 4
@cmd_DeletePortW = common dso_local global i32 0, align 4
@tempfileW = common dso_local global i64 0, align 8
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [70 x i8] c"returned %d with %u (expected ERROR_SUCCESS or ERROR_FILE_NOT_FOUND)\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"returned %d with %u (expected ERROR_FILE_NOT_FOUND)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_XcvDataPort_DeletePort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_XcvDataPort_DeletePort() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 3735928559, i64* %2, align 8
  %3 = call i32 @SetLastError(i32 -559038737)
  %4 = load i32, i32* @hXcv, align 4
  %5 = load i32, i32* @cmd_DeletePortW, align 4
  %6 = load i64, i64* @tempfileW, align 8
  %7 = trunc i64 %6 to i32
  %8 = load i64, i64* @tempfileW, align 8
  %9 = call i32 @lstrlenW(i64 %8)
  %10 = add nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = trunc i64 %12 to i32
  %14 = call i64 @pXcvDataPort(i32 %4, i32 %5, i32 %7, i32 %13, i32* null, i32 0, i64* %2)
  store i64 %14, i64* %1, align 8
  %15 = load i64, i64* %1, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %0
  %18 = load i64, i64* %1, align 8
  %19 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %20 = icmp eq i64 %18, %19
  br label %21

21:                                               ; preds = %17, %0
  %22 = phi i1 [ true, %0 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = load i64, i64* %1, align 8
  %25 = call i32 (...) @GetLastError()
  %26 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i64 %24, i32 %25)
  store i64 3735928559, i64* %2, align 8
  %27 = call i32 @SetLastError(i32 -559038737)
  %28 = load i32, i32* @hXcv, align 4
  %29 = load i32, i32* @cmd_DeletePortW, align 4
  %30 = load i64, i64* @tempfileW, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i64, i64* @tempfileW, align 8
  %33 = call i32 @lstrlenW(i64 %32)
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = trunc i64 %36 to i32
  %38 = call i64 @pXcvDataPort(i32 %28, i32 %29, i32 %31, i32 %37, i32* null, i32 0, i64* %2)
  store i64 %38, i64* %1, align 8
  %39 = load i64, i64* %1, align 8
  %40 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i64, i64* %1, align 8
  %44 = call i32 (...) @GetLastError()
  %45 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %43, i32 %44)
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @pXcvDataPort(i32, i32, i32, i32, i32*, i32, i64*) #1

declare dso_local i32 @lstrlenW(i64) #1

declare dso_local i32 @ok(i32, i8*, i64, i32) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_msg.c_check_param.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_msg.c_check_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OSS_LIMITED = common dso_local global i64 0, align 8
@CRYPT_E_INVALID_MSG_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"%s: CryptMsgGetParam failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"parameter %d not supported, skipping tests\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"%s: expected size %d, got %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"%s: unexpected data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32*, i32)* @check_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_param(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 -559038737, i32* %11, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @CryptMsgGetParam(i32 %14, i32 %15, i32 0, i32* null, i32* %11)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %5
  %20 = call i64 (...) @GetLastError()
  %21 = load i64, i64* @OSS_LIMITED, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = call i64 (...) @GetLastError()
  %25 = load i64, i64* @CRYPT_E_INVALID_MSG_TYPE, align 8
  %26 = icmp eq i64 %24, %25
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i1 [ true, %19 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = call i64 @broken(i32 %29)
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %27, %5
  %33 = phi i1 [ true, %5 ], [ %31, %27 ]
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %6, align 4
  %36 = call i64 (...) @GetLastError()
  %37 = call i32 (i32, i8*, i32, ...) @ok(i32 %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %35, i64 %36)
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @win_skip(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %83

43:                                               ; preds = %32
  %44 = call i32 (...) @GetProcessHeap()
  %45 = load i32, i32* %11, align 4
  %46 = call i32* @HeapAlloc(i32 %44, i32 0, i32 %45)
  store i32* %46, i32** %12, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32*, i32** %12, align 8
  %50 = call i32 @CryptMsgGetParam(i32 %47, i32 %48, i32 0, i32* %49, i32* %11)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i64 (...) @GetLastError()
  %54 = call i32 (i32, i8*, i32, ...) @ok(i32 %51, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %52, i64 %53)
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 (i32, i8*, i32, ...) @ok(i32 %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %59, i32 %60, i32 %61)
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %43
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load i32*, i32** %12, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @memcmp(i32* %70, i32* %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* %6, align 4
  %78 = call i32 (i32, i8*, i32, ...) @ok(i32 %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %69, %66, %43
  %80 = call i32 (...) @GetProcessHeap()
  %81 = load i32*, i32** %12, align 8
  %82 = call i32 @HeapFree(i32 %80, i32 0, i32* %81)
  br label %83

83:                                               ; preds = %79, %40
  ret void
}

declare dso_local i32 @CryptMsgGetParam(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @win_skip(i8*, i32) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

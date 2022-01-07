; ModuleID = '/home/carl/AnghaBench/redis/src/extr_blocked.c_getTimeoutFromObjectOrReply.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_blocked.c_getTimeoutFromObjectOrReply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNIT_SECONDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"timeout is not an float or out of range\00", align 1
@C_OK = common dso_local global i64 0, align 8
@C_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"timeout is not an integer or out of range\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"timeout is negative\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getTimeoutFromObjectOrReply(i32* %0, i32* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca x86_fp80, align 16
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @UNIT_SECONDS, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %4
  %16 = load i32*, i32** %6, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i64 @getLongDoubleFromObjectOrReply(i32* %16, i32* %17, x86_fp80* %11, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %19 = load i64, i64* @C_OK, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @C_ERR, align 4
  store i32 %22, i32* %5, align 4
  br label %55

23:                                               ; preds = %15
  %24 = load x86_fp80, x86_fp80* %11, align 16
  %25 = fmul x86_fp80 %24, 0xK4008FA00000000000000
  %26 = fptosi x86_fp80 %25 to i64
  store i64 %26, i64* %10, align 8
  br label %36

27:                                               ; preds = %4
  %28 = load i32*, i32** %6, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i64 @getLongLongFromObjectOrReply(i32* %28, i32* %29, i64* %10, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i64, i64* @C_OK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @C_ERR, align 4
  store i32 %34, i32* %5, align 4
  br label %55

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %23
  %37 = load i64, i64* %10, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @addReplyError(i32* %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* @C_ERR, align 4
  store i32 %42, i32* %5, align 4
  br label %55

43:                                               ; preds = %36
  %44 = load i64, i64* %10, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = call i64 (...) @mstime()
  %48 = load i64, i64* %10, align 8
  %49 = add nsw i64 %48, %47
  store i64 %49, i64* %10, align 8
  br label %50

50:                                               ; preds = %46, %43
  %51 = load i64, i64* %10, align 8
  %52 = load i64*, i64** %8, align 8
  store i64 %51, i64* %52, align 8
  %53 = load i64, i64* @C_OK, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %50, %39, %33, %21
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i64 @getLongDoubleFromObjectOrReply(i32*, i32*, x86_fp80*, i8*) #1

declare dso_local i64 @getLongLongFromObjectOrReply(i32*, i32*, i64*, i8*) #1

declare dso_local i32 @addReplyError(i32*, i8*) #1

declare dso_local i64 @mstime(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

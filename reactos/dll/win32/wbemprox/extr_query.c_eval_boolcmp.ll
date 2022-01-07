; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_query.c_eval_boolcmp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_query.c_eval_boolcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@eval_boolcmp.trueW = internal constant [5 x i8] c"True\00", align 1
@CIM_STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"unhandled operator %u\0A\00", align 1
@WBEM_E_INVALID_QUERY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32, i64, i64, i32*)* @eval_boolcmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eval_boolcmp(i64 %0, i32 %1, i32 %2, i64 %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store i64 %0, i64* %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %14 = load i64, i64* %11, align 8
  %15 = load i64, i64* @CIM_STRING, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %6
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @strcmpiW(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @eval_boolcmp.trueW, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 -1, i32 0
  store i32 %25, i32* %9, align 4
  br label %40

26:                                               ; preds = %6
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* @CIM_STRING, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @strcmpiW(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @eval_boolcmp.trueW, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 -1, i32 0
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %30, %26
  br label %40

40:                                               ; preds = %39, %17
  %41 = load i64, i64* %8, align 8
  switch i64 %41, label %54 [
    i64 129, label %42
    i64 128, label %48
  ]

42:                                               ; preds = %40
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i32*, i32** %13, align 8
  store i32 %46, i32* %47, align 4
  br label %58

48:                                               ; preds = %40
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i32*, i32** %13, align 8
  store i32 %52, i32* %53, align 4
  br label %58

54:                                               ; preds = %40
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %55)
  %57 = load i32, i32* @WBEM_E_INVALID_QUERY, align 4
  store i32 %57, i32* %7, align 4
  br label %60

58:                                               ; preds = %48, %42
  %59 = load i32, i32* @S_OK, align 4
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %58, %54
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local i32 @strcmpiW(i8*, i8*) #1

declare dso_local i32 @ERR(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

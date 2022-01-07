; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_query.c_eval_strcmp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_query.c_eval_strcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unhandled operator %u\0A\00", align 1
@WBEM_E_INVALID_QUERY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, i32*)* @eval_strcmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eval_strcmp(i32 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load i32*, i32** %8, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12, %4
  %16 = load i32*, i32** %9, align 8
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* @S_OK, align 4
  store i32 %17, i32* %5, align 4
  br label %72

18:                                               ; preds = %12
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %66 [
    i32 134, label %20
    i32 132, label %28
    i32 129, label %35
    i32 131, label %42
    i32 133, label %49
    i32 128, label %56
    i32 130, label %61
  ]

20:                                               ; preds = %18
  %21 = load i32*, i32** %7, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @strcmpW(i32* %21, i32* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = load i32*, i32** %9, align 8
  store i32 %26, i32* %27, align 4
  br label %70

28:                                               ; preds = %18
  %29 = load i32*, i32** %7, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @strcmpW(i32* %29, i32* %30)
  %32 = icmp sgt i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = load i32*, i32** %9, align 8
  store i32 %33, i32* %34, align 4
  br label %70

35:                                               ; preds = %18
  %36 = load i32*, i32** %7, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @strcmpW(i32* %36, i32* %37)
  %39 = icmp slt i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = load i32*, i32** %9, align 8
  store i32 %40, i32* %41, align 4
  br label %70

42:                                               ; preds = %18
  %43 = load i32*, i32** %7, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @strcmpW(i32* %43, i32* %44)
  %46 = icmp sle i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = load i32*, i32** %9, align 8
  store i32 %47, i32* %48, align 4
  br label %70

49:                                               ; preds = %18
  %50 = load i32*, i32** %7, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @strcmpW(i32* %50, i32* %51)
  %53 = icmp sge i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = load i32*, i32** %9, align 8
  store i32 %54, i32* %55, align 4
  br label %70

56:                                               ; preds = %18
  %57 = load i32*, i32** %7, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @strcmpW(i32* %57, i32* %58)
  %60 = load i32*, i32** %9, align 8
  store i32 %59, i32* %60, align 4
  br label %70

61:                                               ; preds = %18
  %62 = load i32*, i32** %7, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @eval_like(i32* %62, i32* %63)
  %65 = load i32*, i32** %9, align 8
  store i32 %64, i32* %65, align 4
  br label %70

66:                                               ; preds = %18
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @WBEM_E_INVALID_QUERY, align 4
  store i32 %69, i32* %5, align 4
  br label %72

70:                                               ; preds = %61, %56, %49, %42, %35, %28, %20
  %71 = load i32, i32* @S_OK, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %70, %66, %15
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @strcmpW(i32*, i32*) #1

declare dso_local i32 @eval_like(i32*, i32*) #1

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_where.c_INT_evaluate_unary.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_where.c_INT_evaluate_unary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex_expr = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Unknown operator %d\0A\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64*, %struct.complex_expr*, i32*, i32*)* @INT_evaluate_unary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @INT_evaluate_unary(i32* %0, i64* %1, %struct.complex_expr* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.complex_expr*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i64* %1, i64** %8, align 8
  store %struct.complex_expr* %2, %struct.complex_expr** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.complex_expr*, %struct.complex_expr** %9, align 8
  %15 = getelementptr inbounds %struct.complex_expr, %struct.complex_expr* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64*, i64** %8, align 8
  %20 = call i64 @expr_fetch_value(i32* %18, i64* %19, i64* %13)
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %12, align 8
  %22 = load i64, i64* @ERROR_SUCCESS, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i64, i64* %12, align 8
  store i64 %25, i64* %6, align 8
  br label %48

26:                                               ; preds = %5
  %27 = load %struct.complex_expr*, %struct.complex_expr** %9, align 8
  %28 = getelementptr inbounds %struct.complex_expr, %struct.complex_expr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %40 [
    i32 129, label %30
    i32 128, label %36
  ]

30:                                               ; preds = %26
  %31 = load i64, i64* %13, align 8
  %32 = icmp ne i64 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = load i32*, i32** %10, align 8
  store i32 %34, i32* %35, align 4
  br label %46

36:                                               ; preds = %26
  %37 = load i64, i64* %13, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i32*, i32** %10, align 8
  store i32 %38, i32* %39, align 4
  br label %46

40:                                               ; preds = %26
  %41 = load %struct.complex_expr*, %struct.complex_expr** %9, align 8
  %42 = getelementptr inbounds %struct.complex_expr, %struct.complex_expr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %45, i64* %6, align 8
  br label %48

46:                                               ; preds = %36, %30
  %47 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %47, i64* %6, align 8
  br label %48

48:                                               ; preds = %46, %40, %24
  %49 = load i64, i64* %6, align 8
  ret i64 %49
}

declare dso_local i64 @expr_fetch_value(i32*, i64*, i64*) #1

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

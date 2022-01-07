; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_window.c_nth_valueStepFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_window.c_nth_valueStepFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NthValueCtx = type { double, i32 }

@.str = private unnamed_addr constant [56 x i8] c"second argument to nth_value must be a positive integer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @nth_valueStepFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nth_valueStepFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.NthValueCtx*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i64 @sqlite3_aggregate_context(i32* %10, i32 16)
  %12 = inttoptr i64 %11 to %struct.NthValueCtx*
  store %struct.NthValueCtx* %12, %struct.NthValueCtx** %7, align 8
  %13 = load %struct.NthValueCtx*, %struct.NthValueCtx** %7, align 8
  %14 = icmp ne %struct.NthValueCtx* %13, null
  br i1 %14, label %15, label %67

15:                                               ; preds = %3
  %16 = load i32**, i32*** %6, align 8
  %17 = getelementptr inbounds i32*, i32** %16, i64 1
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @sqlite3_value_numeric_type(i32* %18)
  switch i32 %19, label %36 [
    i32 128, label %20
    i32 129, label %25
  ]

20:                                               ; preds = %15
  %21 = load i32**, i32*** %6, align 8
  %22 = getelementptr inbounds i32*, i32** %21, i64 1
  %23 = load i32*, i32** %22, align 8
  %24 = call double @sqlite3_value_int64(i32* %23)
  store double %24, double* %8, align 8
  br label %37

25:                                               ; preds = %15
  %26 = load i32**, i32*** %6, align 8
  %27 = getelementptr inbounds i32*, i32** %26, i64 1
  %28 = load i32*, i32** %27, align 8
  %29 = call double @sqlite3_value_double(i32* %28)
  store double %29, double* %9, align 8
  %30 = load double, double* %9, align 8
  %31 = load double, double* %9, align 8
  %32 = fcmp une double %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %73

34:                                               ; preds = %25
  %35 = load double, double* %9, align 8
  store double %35, double* %8, align 8
  br label %37

36:                                               ; preds = %15
  br label %73

37:                                               ; preds = %34, %20
  %38 = load double, double* %8, align 8
  %39 = fcmp ole double %38, 0.000000e+00
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %73

41:                                               ; preds = %37
  %42 = load %struct.NthValueCtx*, %struct.NthValueCtx** %7, align 8
  %43 = getelementptr inbounds %struct.NthValueCtx, %struct.NthValueCtx* %42, i32 0, i32 0
  %44 = load double, double* %43, align 8
  %45 = fadd double %44, 1.000000e+00
  store double %45, double* %43, align 8
  %46 = load double, double* %8, align 8
  %47 = load %struct.NthValueCtx*, %struct.NthValueCtx** %7, align 8
  %48 = getelementptr inbounds %struct.NthValueCtx, %struct.NthValueCtx* %47, i32 0, i32 0
  %49 = load double, double* %48, align 8
  %50 = fcmp oeq double %46, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %41
  %52 = load i32**, i32*** %6, align 8
  %53 = getelementptr inbounds i32*, i32** %52, i64 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @sqlite3_value_dup(i32* %54)
  %56 = load %struct.NthValueCtx*, %struct.NthValueCtx** %7, align 8
  %57 = getelementptr inbounds %struct.NthValueCtx, %struct.NthValueCtx* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load %struct.NthValueCtx*, %struct.NthValueCtx** %7, align 8
  %59 = getelementptr inbounds %struct.NthValueCtx, %struct.NthValueCtx* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %51
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @sqlite3_result_error_nomem(i32* %63)
  br label %65

65:                                               ; preds = %62, %51
  br label %66

66:                                               ; preds = %65, %41
  br label %67

67:                                               ; preds = %66, %3
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @UNUSED_PARAMETER(i32 %68)
  %70 = load i32**, i32*** %6, align 8
  %71 = ptrtoint i32** %70 to i32
  %72 = call i32 @UNUSED_PARAMETER(i32 %71)
  br label %76

73:                                               ; preds = %40, %36, %33
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @sqlite3_result_error(i32* %74, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 -1)
  br label %76

76:                                               ; preds = %73, %67
  ret void
}

declare dso_local i64 @sqlite3_aggregate_context(i32*, i32) #1

declare dso_local i32 @sqlite3_value_numeric_type(i32*) #1

declare dso_local double @sqlite3_value_int64(i32*) #1

declare dso_local double @sqlite3_value_double(i32*) #1

declare dso_local i32 @sqlite3_value_dup(i32*) #1

declare dso_local i32 @sqlite3_result_error_nomem(i32*) #1

declare dso_local i32 @UNUSED_PARAMETER(i32) #1

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/streem/src/extr_graph.c_show_bar.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_graph.c_show_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bar_data = type { double*, double, double }

@.str = private unnamed_addr constant [6 x i8] c"\1B[7m \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"\1B[0m_\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"\1B[0m \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bar_data*, i32, i32)* @show_bar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_bar(%struct.bar_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bar_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  store %struct.bar_data* %0, %struct.bar_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.bar_data*, %struct.bar_data** %4, align 8
  %10 = getelementptr inbounds %struct.bar_data, %struct.bar_data* %9, i32 0, i32 0
  %11 = load double*, double** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds double, double* %11, i64 %13
  %15 = load double, double* %14, align 8
  %16 = load %struct.bar_data*, %struct.bar_data** %4, align 8
  %17 = getelementptr inbounds %struct.bar_data, %struct.bar_data* %16, i32 0, i32 1
  %18 = load double, double* %17, align 8
  %19 = fdiv double %15, %18
  %20 = load %struct.bar_data*, %struct.bar_data** %4, align 8
  %21 = getelementptr inbounds %struct.bar_data, %struct.bar_data* %20, i32 0, i32 2
  %22 = load double, double* %21, align 8
  %23 = fmul double %19, %22
  store double %23, double* %7, align 8
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %57, %3
  %25 = load i32, i32* %8, align 4
  %26 = sitofp i32 %25 to double
  %27 = load %struct.bar_data*, %struct.bar_data** %4, align 8
  %28 = getelementptr inbounds %struct.bar_data, %struct.bar_data* %27, i32 0, i32 2
  %29 = load double, double* %28, align 8
  %30 = fcmp olt double %26, %29
  br i1 %30, label %31, label %60

31:                                               ; preds = %24
  %32 = load %struct.bar_data*, %struct.bar_data** %4, align 8
  %33 = getelementptr inbounds %struct.bar_data, %struct.bar_data* %32, i32 0, i32 2
  %34 = load double, double* %33, align 8
  %35 = fadd double %34, 1.000000e+00
  %36 = load i32, i32* %8, align 4
  %37 = sitofp i32 %36 to double
  %38 = fsub double %35, %37
  %39 = fptosi double %38 to i32
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @move_cursor(i32 %39, i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = sitofp i32 %42 to double
  %44 = load double, double* %7, align 8
  %45 = fcmp olt double %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %31
  %47 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %56

48:                                               ; preds = %31
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %55

53:                                               ; preds = %48
  %54 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %51
  br label %56

56:                                               ; preds = %55, %46
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %24

60:                                               ; preds = %24
  ret void
}

declare dso_local i32 @move_cursor(i32, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

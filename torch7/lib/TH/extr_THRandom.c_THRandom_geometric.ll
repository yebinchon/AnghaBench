; ModuleID = '/home/carl/AnghaBench/torch7/lib/TH/extr_THRandom.c_THRandom_geometric.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/TH/extr_THRandom.c_THRandom_geometric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"must be > 0 and < 1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @THRandom_geometric(i32* %0, double %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca double, align 8
  store i32* %0, i32** %3, align 8
  store double %1, double* %4, align 8
  %5 = load double, double* %4, align 8
  %6 = fcmp ogt double %5, 0.000000e+00
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load double, double* %4, align 8
  %9 = fcmp olt double %8, 1.000000e+00
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i1 [ false, %2 ], [ %9, %7 ]
  %12 = zext i1 %11 to i32
  %13 = call i32 @THArgCheck(i32 %12, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %14 = load i32*, i32** %3, align 8
  %15 = call double @__uniform__(i32* %14)
  %16 = fsub double 1.000000e+00, %15
  %17 = call i32 @log(double %16)
  %18 = load double, double* %4, align 8
  %19 = call i32 @log(double %18)
  %20 = sdiv i32 %17, %19
  %21 = add nsw i32 %20, 1
  ret i32 %21
}

declare dso_local i32 @THArgCheck(i32, i32, i8*) #1

declare dso_local i32 @log(double) #1

declare dso_local double @__uniform__(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

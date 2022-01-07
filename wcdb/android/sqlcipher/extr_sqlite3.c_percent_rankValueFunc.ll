; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_percent_rankValueFunc.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_percent_rankValueFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CallCount = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @percent_rankValueFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @percent_rankValueFunc(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.CallCount*, align 8
  %4 = alloca double, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i64 @sqlite3_aggregate_context(i32* %5, i32 8)
  %7 = inttoptr i64 %6 to %struct.CallCount*
  store %struct.CallCount* %7, %struct.CallCount** %3, align 8
  %8 = load %struct.CallCount*, %struct.CallCount** %3, align 8
  %9 = icmp ne %struct.CallCount* %8, null
  br i1 %9, label %10, label %36

10:                                               ; preds = %1
  %11 = load %struct.CallCount*, %struct.CallCount** %3, align 8
  %12 = getelementptr inbounds %struct.CallCount, %struct.CallCount* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %30

15:                                               ; preds = %10
  %16 = load %struct.CallCount*, %struct.CallCount** %3, align 8
  %17 = getelementptr inbounds %struct.CallCount, %struct.CallCount* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sitofp i32 %19 to double
  %21 = load %struct.CallCount*, %struct.CallCount** %3, align 8
  %22 = getelementptr inbounds %struct.CallCount, %struct.CallCount* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %23, 1
  %25 = sitofp i32 %24 to double
  %26 = fdiv double %20, %25
  store double %26, double* %4, align 8
  %27 = load i32*, i32** %2, align 8
  %28 = load double, double* %4, align 8
  %29 = call i32 @sqlite3_result_double(i32* %27, double %28)
  br label %33

30:                                               ; preds = %10
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @sqlite3_result_double(i32* %31, double 0.000000e+00)
  br label %33

33:                                               ; preds = %30, %15
  %34 = load %struct.CallCount*, %struct.CallCount** %3, align 8
  %35 = getelementptr inbounds %struct.CallCount, %struct.CallCount* %34, i32 0, i32 1
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %33, %1
  ret void
}

declare dso_local i64 @sqlite3_aggregate_context(i32*, i32) #1

declare dso_local i32 @sqlite3_result_double(i32*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_timeout.c_timeout_lua_sleep.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_timeout.c_timeout_lua_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }

@INT_MAX = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @timeout_lua_sleep(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.timespec, align 4
  %5 = alloca %struct.timespec, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call double @luaL_checknumber(i32* %6, i32 1)
  store double %7, double* %3, align 8
  %8 = load double, double* %3, align 8
  %9 = fcmp olt double %8, 0.000000e+00
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store double 0.000000e+00, double* %3, align 8
  br label %11

11:                                               ; preds = %10, %1
  %12 = load double, double* %3, align 8
  %13 = load double, double* @INT_MAX, align 8
  %14 = fcmp ogt double %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load double, double* @INT_MAX, align 8
  store double %16, double* %3, align 8
  br label %17

17:                                               ; preds = %15, %11
  %18 = load double, double* %3, align 8
  %19 = fptosi double %18 to i32
  %20 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sitofp i32 %22 to double
  %24 = load double, double* %3, align 8
  %25 = fsub double %24, %23
  store double %25, double* %3, align 8
  %26 = load double, double* %3, align 8
  %27 = fmul double %26, 1.000000e+09
  %28 = fptosi double %27 to i32
  %29 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp sge i32 %31, 1000000000
  br i1 %32, label %33, label %35

33:                                               ; preds = %17
  %34 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1
  store i32 999999999, i32* %34, align 4
  br label %35

35:                                               ; preds = %33, %17
  br label %36

36:                                               ; preds = %39, %35
  %37 = call i64 @nanosleep(%struct.timespec* %4, %struct.timespec* %5)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  br label %36

46:                                               ; preds = %36
  ret i32 0
}

declare dso_local double @luaL_checknumber(i32*, i32) #1

declare dso_local i64 @nanosleep(%struct.timespec*, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

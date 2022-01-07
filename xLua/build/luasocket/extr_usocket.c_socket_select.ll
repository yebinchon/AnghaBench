; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_usocket.c_socket_select.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_usocket.c_socket_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @socket_select(i32 %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.timeval, align 4
  %13 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  br label %14

14:                                               ; preds = %46, %5
  %15 = load i32, i32* %10, align 4
  %16 = call double @timeout_getretry(i32 %15)
  store double %16, double* %13, align 8
  %17 = load double, double* %13, align 8
  %18 = fptosi double %17 to i32
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load double, double* %13, align 8
  %21 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sitofp i32 %22 to double
  %24 = fsub double %20, %23
  %25 = fmul double %24, 1.000000e+06
  %26 = fptosi double %25 to i32
  %27 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load double, double* %13, align 8
  %33 = fcmp oge double %32, 0.000000e+00
  br i1 %33, label %34, label %35

34:                                               ; preds = %14
  br label %36

35:                                               ; preds = %14
  br label %36

36:                                               ; preds = %35, %34
  %37 = phi %struct.timeval* [ %12, %34 ], [ null, %35 ]
  %38 = call i32 @select(i32 %28, i32* %29, i32* %30, i32* %31, %struct.timeval* %37)
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i64, i64* @errno, align 8
  %44 = load i64, i64* @EINTR, align 8
  %45 = icmp eq i64 %43, %44
  br label %46

46:                                               ; preds = %42, %39
  %47 = phi i1 [ false, %39 ], [ %45, %42 ]
  br i1 %47, label %14, label %48

48:                                               ; preds = %46
  %49 = load i32, i32* %11, align 4
  ret i32 %49
}

declare dso_local double @timeout_getretry(i32) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

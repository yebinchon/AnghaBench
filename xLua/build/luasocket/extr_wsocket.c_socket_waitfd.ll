; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_wsocket.c_socket_waitfd.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_wsocket.c_socket_waitfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }

@IO_TIMEOUT = common dso_local global i32 0, align 4
@WAITFD_R = common dso_local global i32 0, align 4
@WAITFD_W = common dso_local global i32 0, align 4
@WAITFD_C = common dso_local global i32 0, align 4
@IO_CLOSED = common dso_local global i32 0, align 4
@IO_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @socket_waitfd(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.timeval, align 4
  %16 = alloca %struct.timeval*, align 8
  %17 = alloca double, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store %struct.timeval* null, %struct.timeval** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @timeout_iszero(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @IO_TIMEOUT, align 4
  store i32 %22, i32* %4, align 4
  br label %97

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @WAITFD_R, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = call i32 @FD_ZERO(i32* %9)
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @FD_SET(i32 %31, i32* %9)
  store i32* %9, i32** %12, align 8
  br label %33

33:                                               ; preds = %28, %23
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @WAITFD_W, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = call i32 @FD_ZERO(i32* %10)
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @FD_SET(i32 %41, i32* %10)
  store i32* %10, i32** %13, align 8
  br label %43

43:                                               ; preds = %38, %33
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @WAITFD_C, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = call i32 @FD_ZERO(i32* %11)
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @FD_SET(i32 %51, i32* %11)
  store i32* %11, i32** %14, align 8
  br label %53

53:                                               ; preds = %48, %43
  %54 = load i32, i32* %7, align 4
  %55 = call double @timeout_get(i32 %54)
  store double %55, double* %17, align 8
  %56 = fcmp oge double %55, 0.000000e+00
  br i1 %56, label %57, label %69

57:                                               ; preds = %53
  %58 = load double, double* %17, align 8
  %59 = fptosi double %58 to i32
  %60 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = load double, double* %17, align 8
  %62 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sitofp i32 %63 to double
  %65 = fsub double %61, %64
  %66 = fmul double %65, 1.000000e+06
  %67 = fptosi double %66 to i32
  %68 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  store %struct.timeval* %15, %struct.timeval** %16, align 8
  br label %69

69:                                               ; preds = %57, %53
  %70 = load i32*, i32** %12, align 8
  %71 = load i32*, i32** %13, align 8
  %72 = load i32*, i32** %14, align 8
  %73 = load %struct.timeval*, %struct.timeval** %16, align 8
  %74 = call i32 @select(i32 0, i32* %70, i32* %71, i32* %72, %struct.timeval* %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = call i32 (...) @WSAGetLastError()
  store i32 %78, i32* %4, align 4
  br label %97

79:                                               ; preds = %69
  %80 = load i32, i32* %8, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* @IO_TIMEOUT, align 4
  store i32 %83, i32* %4, align 4
  br label %97

84:                                               ; preds = %79
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @WAITFD_C, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %84
  %89 = load i32*, i32** %5, align 8
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @FD_ISSET(i32 %90, i32* %11)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i32, i32* @IO_CLOSED, align 4
  store i32 %94, i32* %4, align 4
  br label %97

95:                                               ; preds = %88, %84
  %96 = load i32, i32* @IO_DONE, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %95, %93, %82, %77, %21
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i64 @timeout_iszero(i32) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local double @timeout_get(i32) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

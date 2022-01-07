; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_usocket.c_socket_waitfd.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_usocket.c_socket_waitfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i32, i32 }

@IO_TIMEOUT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@WAITFD_C = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@IO_CLOSED = common dso_local global i32 0, align 4
@IO_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @socket_waitfd(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pollfd, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %9, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %6, align 4
  %15 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %9, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %9, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @timeout_iszero(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @IO_TIMEOUT, align 4
  store i32 %21, i32* %4, align 4
  br label %73

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %44, %22
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @timeout_getretry(i32 %24)
  %26 = sitofp i32 %25 to double
  %27 = fmul double %26, 1.000000e+03
  %28 = fptosi double %27 to i32
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %10, align 4
  br label %34

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i32 [ %32, %31 ], [ -1, %33 ]
  %36 = call i32 @poll(%struct.pollfd* %9, i32 1, i32 %35)
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i64, i64* @errno, align 8
  %42 = load i64, i64* @EINTR, align 8
  %43 = icmp eq i64 %41, %42
  br label %44

44:                                               ; preds = %40, %37
  %45 = phi i1 [ false, %37 ], [ %43, %40 ]
  br i1 %45, label %23, label %46

46:                                               ; preds = %44
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i64, i64* @errno, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %4, align 4
  br label %73

52:                                               ; preds = %46
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* @IO_TIMEOUT, align 4
  store i32 %56, i32* %4, align 4
  br label %73

57:                                               ; preds = %52
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @WAITFD_C, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %9, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @POLLIN, align 4
  %65 = load i32, i32* @POLLERR, align 4
  %66 = or i32 %64, %65
  %67 = and i32 %63, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i32, i32* @IO_CLOSED, align 4
  store i32 %70, i32* %4, align 4
  br label %73

71:                                               ; preds = %61, %57
  %72 = load i32, i32* @IO_DONE, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %71, %69, %55, %49, %20
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i64 @timeout_iszero(i32) #1

declare dso_local i32 @timeout_getretry(i32) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

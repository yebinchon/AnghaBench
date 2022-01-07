; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_event.c_adns__fdevents.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_event.c_adns__fdevents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i32 }
%struct.timeval = type { i32 }

@POLLIN = common dso_local global i32 0, align 4
@adns_processreadable = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@adns_processwriteable = common dso_local global i32 0, align 4
@POLLPRI = common dso_local global i32 0, align 4
@adns_processexceptional = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adns__fdevents(i32 %0, %struct.pollfd* %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6, i32 %7, i32* %8) #0 {
  %10 = alloca %struct.timeval, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pollfd*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  store i32 %7, i32* %22, align 4
  store i32 %0, i32* %11, align 4
  store %struct.pollfd* %1, %struct.pollfd** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  store i32 0, i32* %19, align 4
  br label %23

23:                                               ; preds = %80, %9
  %24 = load i32, i32* %19, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %83

27:                                               ; preds = %23
  %28 = load %struct.pollfd*, %struct.pollfd** %12, align 8
  %29 = load i32, i32* %19, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %28, i64 %30
  %32 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %21, align 4
  %34 = load i32, i32* %21, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load i32, i32* %21, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %14, align 4
  br label %40

40:                                               ; preds = %37, %27
  %41 = load %struct.pollfd*, %struct.pollfd** %12, align 8
  %42 = load i32, i32* %19, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %41, i64 %43
  %45 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %20, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %21, align 4
  %49 = load i32, i32* %20, align 4
  %50 = load i32, i32* @POLLIN, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32*, i32** %15, align 8
  %53 = load i32, i32* @adns_processreadable, align 4
  %54 = load i32*, i32** %18, align 8
  %55 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @fd_event(i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i32* %52, i32 %53, i32 %56, i32* %54)
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %21, align 4
  %60 = load i32, i32* %20, align 4
  %61 = load i32, i32* @POLLOUT, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32*, i32** %16, align 8
  %64 = load i32, i32* @adns_processwriteable, align 4
  %65 = load i32*, i32** %18, align 8
  %66 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @fd_event(i32 %58, i32 %59, i32 %60, i32 %61, i32 %62, i32* %63, i32 %64, i32 %67, i32* %65)
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %21, align 4
  %71 = load i32, i32* %20, align 4
  %72 = load i32, i32* @POLLPRI, align 4
  %73 = load i32, i32* %14, align 4
  %74 = load i32*, i32** %17, align 8
  %75 = load i32, i32* @adns_processexceptional, align 4
  %76 = load i32*, i32** %18, align 8
  %77 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @fd_event(i32 %69, i32 %70, i32 %71, i32 %72, i32 %73, i32* %74, i32 %75, i32 %78, i32* %76)
  br label %80

80:                                               ; preds = %40
  %81 = load i32, i32* %19, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %19, align 4
  br label %23

83:                                               ; preds = %23
  ret void
}

declare dso_local i32 @fd_event(i32, i32, i32, i32, i32, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

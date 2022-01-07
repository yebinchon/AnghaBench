; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_event.c_adns_afterselect.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_event.c_adns_afterselect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }
%struct.pollfd = type { i32 }

@MAX_POLLFDS = common dso_local global i32 0, align 4
@cc_entex = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLPRI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adns_afterselect(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4, %struct.timeval* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.timeval*, align 8
  %13 = alloca %struct.timeval, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.timeval* %5, %struct.timeval** %12, align 8
  %18 = load i32, i32* @MAX_POLLFDS, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %14, align 8
  %21 = alloca %struct.pollfd, i64 %19, align 16
  store i64 %19, i64* %15, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @cc_entex, align 4
  %24 = call i32 @adns__consistency(i32 %22, i32 0, i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @adns__must_gettimeofday(i32 %25, %struct.timeval** %12, %struct.timeval* %13)
  %27 = load %struct.timeval*, %struct.timeval** %12, align 8
  %28 = icmp ne %struct.timeval* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %6
  br label %64

30:                                               ; preds = %6
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.timeval*, %struct.timeval** %12, align 8
  %33 = call i32 @adns_processtimeouts(i32 %31, %struct.timeval* %32)
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @adns__pollfds(i32 %34, %struct.pollfd* %21)
  store i32 %35, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %36

36:                                               ; preds = %50, %30
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* %16, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = load i32, i32* @POLLIN, align 4
  %42 = load i32, i32* @POLLOUT, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @POLLPRI, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %17, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %21, i64 %47
  %49 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 4
  br label %50

50:                                               ; preds = %40
  %51 = load i32, i32* %17, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %17, align 4
  br label %36

53:                                               ; preds = %36
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = load %struct.timeval*, %struct.timeval** %12, align 8
  %61 = getelementptr inbounds %struct.timeval, %struct.timeval* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @adns__fdevents(i32 %54, %struct.pollfd* %21, i32 %55, i32 %56, i32* %57, i32* %58, i32* %59, i32 %62, i32 0)
  br label %64

64:                                               ; preds = %53, %29
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @cc_entex, align 4
  %67 = call i32 @adns__consistency(i32 %65, i32 0, i32 %66)
  %68 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %68)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @adns__consistency(i32, i32, i32) #2

declare dso_local i32 @adns__must_gettimeofday(i32, %struct.timeval**, %struct.timeval*) #2

declare dso_local i32 @adns_processtimeouts(i32, %struct.timeval*) #2

declare dso_local i32 @adns__pollfds(i32, %struct.pollfd*) #2

declare dso_local i32 @adns__fdevents(i32, %struct.pollfd*, i32, i32, i32*, i32*, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

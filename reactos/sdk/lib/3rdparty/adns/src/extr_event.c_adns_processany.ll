; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_event.c_adns_processany.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_event.c_adns_processany.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }
%struct.pollfd = type { i32, i32 }

@MAX_POLLFDS = common dso_local global i32 0, align 4
@cc_entex = common dso_local global i32 0, align 4
@POLLPRI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adns_processany(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timeval, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* @MAX_POLLFDS, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca %struct.pollfd, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @cc_entex, align 4
  %15 = call i32 @adns__consistency(i32 %13, i32 0, i32 %14)
  %16 = call i32 @gettimeofday(%struct.timeval* %5, i32 0)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @adns_processtimeouts(i32 %20, %struct.timeval* %5)
  br label %22

22:                                               ; preds = %19, %1
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @adns__pollfds(i32 %23, %struct.pollfd* %12)
  store i32 %24, i32* %8, align 4
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %42, %22
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %12, i64 %31
  %33 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @POLLPRI, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %12, i64 %39
  %41 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 8
  br label %42

42:                                               ; preds = %29
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %25

45:                                               ; preds = %25
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* %8, align 4
  %48 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @adns__fdevents(i32 %46, %struct.pollfd* %12, i32 %47, i32 0, i32 0, i32 0, i32 0, i32 %49, i32* %3)
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* @cc_entex, align 4
  %53 = call i32 @adns__consistency(i32 %51, i32 0, i32 %52)
  %54 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %54)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @adns__consistency(i32, i32, i32) #2

declare dso_local i32 @gettimeofday(%struct.timeval*, i32) #2

declare dso_local i32 @adns_processtimeouts(i32, %struct.timeval*) #2

declare dso_local i32 @adns__pollfds(i32, %struct.pollfd*) #2

declare dso_local i32 @adns__fdevents(i32, %struct.pollfd*, i32, i32, i32, i32, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

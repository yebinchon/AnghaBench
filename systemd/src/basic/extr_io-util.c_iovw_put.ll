; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_io-util.c_iovw_put.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_io-util.c_iovw_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec_wrapper = type { i64, i32*, i32 }

@IOV_MAX = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iovw_put(%struct.iovec_wrapper* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iovec_wrapper*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.iovec_wrapper* %0, %struct.iovec_wrapper** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.iovec_wrapper*, %struct.iovec_wrapper** %5, align 8
  %9 = getelementptr inbounds %struct.iovec_wrapper, %struct.iovec_wrapper* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @IOV_MAX, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @E2BIG, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %43

16:                                               ; preds = %3
  %17 = load %struct.iovec_wrapper*, %struct.iovec_wrapper** %5, align 8
  %18 = getelementptr inbounds %struct.iovec_wrapper, %struct.iovec_wrapper* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.iovec_wrapper*, %struct.iovec_wrapper** %5, align 8
  %21 = getelementptr inbounds %struct.iovec_wrapper, %struct.iovec_wrapper* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.iovec_wrapper*, %struct.iovec_wrapper** %5, align 8
  %24 = getelementptr inbounds %struct.iovec_wrapper, %struct.iovec_wrapper* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  %27 = call i32 @GREEDY_REALLOC(i32* %19, i32 %22, i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %16
  %30 = call i32 (...) @log_oom()
  store i32 %30, i32* %4, align 4
  br label %43

31:                                               ; preds = %16
  %32 = load i8*, i8** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @IOVEC_MAKE(i8* %32, i64 %33)
  %35 = load %struct.iovec_wrapper*, %struct.iovec_wrapper** %5, align 8
  %36 = getelementptr inbounds %struct.iovec_wrapper, %struct.iovec_wrapper* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.iovec_wrapper*, %struct.iovec_wrapper** %5, align 8
  %39 = getelementptr inbounds %struct.iovec_wrapper, %struct.iovec_wrapper* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %39, align 8
  %42 = getelementptr inbounds i32, i32* %37, i64 %40
  store i32 %34, i32* %42, align 4
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %31, %29, %13
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @GREEDY_REALLOC(i32*, i32, i64) #1

declare dso_local i32 @log_oom(...) #1

declare dso_local i32 @IOVEC_MAKE(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

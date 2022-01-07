; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_time-util.c_timeval_store.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_time-util.c_timeval_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i8*, i8* }

@USEC_INFINITY = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@TIME_T_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.timeval* @timeval_store(%struct.timeval* %0, i32 %1) #0 {
  %3 = alloca %struct.timeval*, align 8
  %4 = alloca i32, align 4
  store %struct.timeval* %0, %struct.timeval** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.timeval*, %struct.timeval** %3, align 8
  %6 = call i32 @assert(%struct.timeval* %5)
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @USEC_INFINITY, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @USEC_PER_SEC, align 4
  %13 = sdiv i32 %11, %12
  %14 = load i32, i32* @TIME_T_MAX, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %10, %2
  %17 = load %struct.timeval*, %struct.timeval** %3, align 8
  %18 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1
  store i8* inttoptr (i64 -1 to i8*), i8** %18, align 8
  %19 = load %struct.timeval*, %struct.timeval** %3, align 8
  %20 = getelementptr inbounds %struct.timeval, %struct.timeval* %19, i32 0, i32 0
  store i8* inttoptr (i64 -1 to i8*), i8** %20, align 8
  br label %36

21:                                               ; preds = %10
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @USEC_PER_SEC, align 4
  %24 = sdiv i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = load %struct.timeval*, %struct.timeval** %3, align 8
  %28 = getelementptr inbounds %struct.timeval, %struct.timeval* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @USEC_PER_SEC, align 4
  %31 = srem i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = load %struct.timeval*, %struct.timeval** %3, align 8
  %35 = getelementptr inbounds %struct.timeval, %struct.timeval* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  br label %36

36:                                               ; preds = %21, %16
  %37 = load %struct.timeval*, %struct.timeval** %3, align 8
  ret %struct.timeval* %37
}

declare dso_local i32 @assert(%struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

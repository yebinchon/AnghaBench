; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_event.c_adns__must_gettimeofday.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_event.c_adns__must_gettimeofday.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"gettimeofday failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adns__must_gettimeofday(i32 %0, %struct.timeval** %1, %struct.timeval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.timeval**, align 8
  %6 = alloca %struct.timeval*, align 8
  %7 = alloca %struct.timeval*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.timeval** %1, %struct.timeval*** %5, align 8
  store %struct.timeval* %2, %struct.timeval** %6, align 8
  %9 = load %struct.timeval**, %struct.timeval*** %5, align 8
  %10 = load %struct.timeval*, %struct.timeval** %9, align 8
  store %struct.timeval* %10, %struct.timeval** %7, align 8
  %11 = load %struct.timeval*, %struct.timeval** %7, align 8
  %12 = icmp ne %struct.timeval* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %29

14:                                               ; preds = %3
  %15 = load %struct.timeval*, %struct.timeval** %6, align 8
  %16 = call i32 @gettimeofday(%struct.timeval* %15, i32 0)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load %struct.timeval*, %struct.timeval** %6, align 8
  %21 = load %struct.timeval**, %struct.timeval*** %5, align 8
  store %struct.timeval* %20, %struct.timeval** %21, align 8
  br label %29

22:                                               ; preds = %14
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @errno, align 4
  %25 = call i32 @strerror(i32 %24)
  %26 = call i32 @adns__diag(i32 %23, i32 -1, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @adns_globalsystemfailure(i32 %27)
  br label %29

29:                                               ; preds = %22, %19, %13
  ret void
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32) #1

declare dso_local i32 @adns__diag(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @adns_globalsystemfailure(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

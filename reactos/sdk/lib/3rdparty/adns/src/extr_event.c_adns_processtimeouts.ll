; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_event.c_adns_processtimeouts.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_event.c_adns_processtimeouts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }

@cc_entex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adns_processtimeouts(i32 %0, %struct.timeval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timeval*, align 8
  %5 = alloca %struct.timeval, align 4
  store i32 %0, i32* %3, align 4
  store %struct.timeval* %1, %struct.timeval** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @cc_entex, align 4
  %8 = call i32 @adns__consistency(i32 %6, i32 0, i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @adns__must_gettimeofday(i32 %9, %struct.timeval** %4, %struct.timeval* %5)
  %11 = load %struct.timeval*, %struct.timeval** %4, align 8
  %12 = icmp ne %struct.timeval* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.timeval*, %struct.timeval** %4, align 8
  %16 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @adns__timeouts(i32 %14, i32 1, i32 0, i32 0, i32 %17)
  br label %19

19:                                               ; preds = %13, %2
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @cc_entex, align 4
  %22 = call i32 @adns__consistency(i32 %20, i32 0, i32 %21)
  ret void
}

declare dso_local i32 @adns__consistency(i32, i32, i32) #1

declare dso_local i32 @adns__must_gettimeofday(i32, %struct.timeval**, %struct.timeval*) #1

declare dso_local i32 @adns__timeouts(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

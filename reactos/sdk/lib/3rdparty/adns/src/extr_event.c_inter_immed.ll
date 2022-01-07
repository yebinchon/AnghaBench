; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_event.c_inter_immed.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_event.c_inter_immed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timeval**, %struct.timeval*)* @inter_immed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inter_immed(%struct.timeval** %0, %struct.timeval* %1) #0 {
  %3 = alloca %struct.timeval**, align 8
  %4 = alloca %struct.timeval*, align 8
  %5 = alloca %struct.timeval*, align 8
  store %struct.timeval** %0, %struct.timeval*** %3, align 8
  store %struct.timeval* %1, %struct.timeval** %4, align 8
  %6 = load %struct.timeval**, %struct.timeval*** %3, align 8
  %7 = icmp ne %struct.timeval** %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %20

9:                                                ; preds = %2
  %10 = load %struct.timeval**, %struct.timeval*** %3, align 8
  %11 = load %struct.timeval*, %struct.timeval** %10, align 8
  store %struct.timeval* %11, %struct.timeval** %5, align 8
  %12 = load %struct.timeval*, %struct.timeval** %5, align 8
  %13 = icmp ne %struct.timeval* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = load %struct.timeval*, %struct.timeval** %4, align 8
  store %struct.timeval* %15, %struct.timeval** %5, align 8
  %16 = load %struct.timeval**, %struct.timeval*** %3, align 8
  store %struct.timeval* %15, %struct.timeval** %16, align 8
  br label %17

17:                                               ; preds = %14, %9
  %18 = load %struct.timeval*, %struct.timeval** %5, align 8
  %19 = call i32 @timerclear(%struct.timeval* %18)
  br label %20

20:                                               ; preds = %17, %8
  ret void
}

declare dso_local i32 @timerclear(%struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_do_main_session.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_do_main_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_ev = type { i32 }
%struct.command = type { i32 }
%struct.arg = type { i32 }

@notify_ev = common dso_local global %struct.in_ev* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_main_session(%struct.command* %0, i32 %1, %struct.arg* %2, %struct.in_ev* %3) #0 {
  %5 = alloca %struct.command*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.arg*, align 8
  %8 = alloca %struct.in_ev*, align 8
  store %struct.command* %0, %struct.command** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.arg* %2, %struct.arg** %7, align 8
  store %struct.in_ev* %3, %struct.in_ev** %8, align 8
  %9 = load %struct.in_ev*, %struct.in_ev** @notify_ev, align 8
  %10 = icmp ne %struct.in_ev* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %4
  %12 = load %struct.in_ev*, %struct.in_ev** @notify_ev, align 8
  %13 = getelementptr inbounds %struct.in_ev, %struct.in_ev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %13, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = load %struct.in_ev*, %struct.in_ev** @notify_ev, align 8
  %19 = call i32 @free(%struct.in_ev* %18)
  br label %20

20:                                               ; preds = %17, %11, %4
  %21 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  store %struct.in_ev* %21, %struct.in_ev** @notify_ev, align 8
  %22 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %23 = icmp ne %struct.in_ev* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %26 = getelementptr inbounds %struct.in_ev, %struct.in_ev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %24, %20
  ret void
}

declare dso_local i32 @free(%struct.in_ev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

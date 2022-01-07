; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_print_success_gw.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_print_success_gw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tgl_state = type { i32 }
%struct.in_ev = type { i32 }

@TLS = common dso_local global %struct.tgl_state* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_success_gw(%struct.tgl_state* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.tgl_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.in_ev*, align 8
  store %struct.tgl_state* %0, %struct.tgl_state** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.tgl_state*, %struct.tgl_state** @TLS, align 8
  %9 = load %struct.tgl_state*, %struct.tgl_state** %4, align 8
  %10 = icmp eq %struct.tgl_state* %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.in_ev*
  store %struct.in_ev* %14, %struct.in_ev** %7, align 8
  %15 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %16 = icmp ne %struct.in_ev* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %19 = getelementptr inbounds %struct.in_ev, %struct.in_ev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %19, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %25 = call i32 @free(%struct.in_ev* %24)
  br label %35

26:                                               ; preds = %17, %3
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %31 = call i32 @print_fail(%struct.in_ev* %30)
  br label %35

32:                                               ; preds = %26
  %33 = load %struct.in_ev*, %struct.in_ev** %7, align 8
  %34 = call i32 @print_success(%struct.in_ev* %33)
  br label %35

35:                                               ; preds = %32, %29, %23
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @free(%struct.in_ev*) #1

declare dso_local i32 @print_fail(%struct.in_ev*) #1

declare dso_local i32 @print_success(%struct.in_ev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

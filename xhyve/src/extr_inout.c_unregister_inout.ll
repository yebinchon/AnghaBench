; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_inout.c_unregister_inout.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_inout.c_unregister_inout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.inout_port = type { i64, i64, i32 }

@inout_handlers = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unregister_inout(%struct.inout_port* %0) #0 {
  %2 = alloca %struct.inout_port*, align 8
  store %struct.inout_port* %0, %struct.inout_port** %2, align 8
  %3 = load %struct.inout_port*, %struct.inout_port** %2, align 8
  %4 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.inout_port*, %struct.inout_port** %2, align 8
  %7 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @VERIFY_IOPORT(i64 %5, i32 %8)
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inout_handlers, align 8
  %11 = load %struct.inout_port*, %struct.inout_port** %2, align 8
  %12 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.inout_port*, %struct.inout_port** %2, align 8
  %18 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.inout_port*, %struct.inout_port** %2, align 8
  %24 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.inout_port*, %struct.inout_port** %2, align 8
  %27 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @register_default_iohandler(i64 %25, i32 %28)
  ret i32 0
}

declare dso_local i32 @VERIFY_IOPORT(i64, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @register_default_iohandler(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_do_get_self.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_do_get_self.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.command = type { i32 }
%struct.arg = type { i32 }
%struct.in_ev = type { i32 }

@TLS = common dso_local global %struct.TYPE_3__* null, align 8
@print_user_info_gw = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_get_self(%struct.command* %0, i32 %1, %struct.arg* %2, %struct.in_ev* %3) #0 {
  %5 = alloca %struct.command*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.arg*, align 8
  %8 = alloca %struct.in_ev*, align 8
  store %struct.command* %0, %struct.command** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.arg* %2, %struct.arg** %7, align 8
  store %struct.in_ev* %3, %struct.in_ev** %8, align 8
  %9 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %10 = icmp ne %struct.in_ev* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %4
  %12 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %13 = getelementptr inbounds %struct.in_ev, %struct.in_ev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  br label %16

16:                                               ; preds = %11, %4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TLS, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TLS, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @print_user_info_gw, align 4
  %22 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %23 = call i32 @tgl_do_get_user_info(%struct.TYPE_3__* %17, i32 %20, i32 0, i32 %21, %struct.in_ev* %22)
  ret void
}

declare dso_local i32 @tgl_do_get_user_info(%struct.TYPE_3__*, i32, i32, i32, %struct.in_ev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

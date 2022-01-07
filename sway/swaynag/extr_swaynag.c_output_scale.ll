; ModuleID = '/home/carl/AnghaBench/sway/swaynag/extr_swaynag.c_output_scale.c'
source_filename = "/home/carl/AnghaBench/sway/swaynag/extr_swaynag.c_output_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl_output = type { i32 }
%struct.swaynag_output = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, %struct.swaynag_output* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_output*, i32)* @output_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_scale(i8* %0, %struct.wl_output* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wl_output*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.swaynag_output*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.wl_output* %1, %struct.wl_output** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.swaynag_output*
  store %struct.swaynag_output* %9, %struct.swaynag_output** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.swaynag_output*, %struct.swaynag_output** %7, align 8
  %12 = getelementptr inbounds %struct.swaynag_output, %struct.swaynag_output* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  %13 = load %struct.swaynag_output*, %struct.swaynag_output** %7, align 8
  %14 = getelementptr inbounds %struct.swaynag_output, %struct.swaynag_output* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load %struct.swaynag_output*, %struct.swaynag_output** %16, align 8
  %18 = load %struct.swaynag_output*, %struct.swaynag_output** %7, align 8
  %19 = icmp eq %struct.swaynag_output* %17, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %3
  %21 = load %struct.swaynag_output*, %struct.swaynag_output** %7, align 8
  %22 = getelementptr inbounds %struct.swaynag_output, %struct.swaynag_output* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.swaynag_output*, %struct.swaynag_output** %7, align 8
  %25 = getelementptr inbounds %struct.swaynag_output, %struct.swaynag_output* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 8
  %28 = load %struct.swaynag_output*, %struct.swaynag_output** %7, align 8
  %29 = getelementptr inbounds %struct.swaynag_output, %struct.swaynag_output* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = call i32 @update_cursor(%struct.TYPE_3__* %30)
  %32 = load %struct.swaynag_output*, %struct.swaynag_output** %7, align 8
  %33 = getelementptr inbounds %struct.swaynag_output, %struct.swaynag_output* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = call i32 @render_frame(%struct.TYPE_3__* %34)
  br label %36

36:                                               ; preds = %20, %3
  ret void
}

declare dso_local i32 @update_cursor(%struct.TYPE_3__*) #1

declare dso_local i32 @render_frame(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

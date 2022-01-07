; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_pulse.c_sink_event.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_pulse.c_sink_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sink_add_cb = common dso_local global i32 0, align 4
@sink_mod_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32*)* @sink_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sink_event(i32* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %27 [
    i32 129, label %11
    i32 130, label %17
    i32 128, label %23
  ]

11:                                               ; preds = %4
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @sink_add_cb, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = call i32* @pa_context_get_sink_info_by_index(i32* %12, i32 %13, i32 %14, i32* %15)
  store i32* %16, i32** %9, align 8
  br label %27

17:                                               ; preds = %4
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @sink_mod_cb, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = call i32* @pa_context_get_sink_info_by_index(i32* %18, i32 %19, i32 %20, i32* %21)
  store i32* %22, i32** %9, align 8
  br label %27

23:                                               ; preds = %4
  %24 = load i32, i32* %7, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @sink_del(i32 %24, i32* %25)
  br label %27

27:                                               ; preds = %4, %23, %17, %11
  %28 = load i32*, i32** %9, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @pa_operation_unref(i32* %31)
  br label %33

33:                                               ; preds = %30, %27
  ret void
}

declare dso_local i32* @pa_context_get_sink_info_by_index(i32*, i32, i32, i32*) #1

declare dso_local i32 @sink_del(i32, i32*) #1

declare dso_local i32 @pa_operation_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

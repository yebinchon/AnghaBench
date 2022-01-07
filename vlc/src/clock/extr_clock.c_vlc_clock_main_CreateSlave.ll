; ModuleID = '/home/carl/AnghaBench/vlc/src/clock/extr_clock.c_vlc_clock_main_CreateSlave.c'
source_filename = "/home/carl/AnghaBench/vlc/src/clock/extr_clock.c_vlc_clock_main_CreateSlave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.vlc_clock_cbs = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @vlc_clock_main_CreateSlave(%struct.TYPE_4__* %0, i32 %1, %struct.vlc_clock_cbs* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vlc_clock_cbs*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.vlc_clock_cbs* %2, %struct.vlc_clock_cbs** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %15 [
    i32 128, label %13
    i32 130, label %13
    i32 129, label %14
  ]

13:                                               ; preds = %4, %4
  store i32 1, i32* %10, align 4
  br label %16

14:                                               ; preds = %4
  br label %15

15:                                               ; preds = %4, %14
  store i32 2, i32* %10, align 4
  br label %16

16:                                               ; preds = %15, %13
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.vlc_clock_cbs*, %struct.vlc_clock_cbs** %8, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = call i32* @vlc_clock_main_Create(%struct.TYPE_4__* %17, i32 %18, %struct.vlc_clock_cbs* %19, i8* %20)
  store i32* %21, i32** %11, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  store i32* null, i32** %5, align 8
  br label %39

25:                                               ; preds = %16
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i32 @vlc_mutex_lock(i32* %27)
  %29 = load i32*, i32** %11, align 8
  %30 = call i32 @vlc_clock_set_slave_callbacks(i32* %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i32 @vlc_mutex_unlock(i32* %36)
  %38 = load i32*, i32** %11, align 8
  store i32* %38, i32** %5, align 8
  br label %39

39:                                               ; preds = %25, %24
  %40 = load i32*, i32** %5, align 8
  ret i32* %40
}

declare dso_local i32* @vlc_clock_main_Create(%struct.TYPE_4__*, i32, %struct.vlc_clock_cbs*, i8*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_clock_set_slave_callbacks(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/vlc/src/clock/extr_clock.c_vlc_clock_main_Create.c'
source_filename = "/home/carl/AnghaBench/vlc/src/clock/extr_clock.c_vlc_clock_main_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, %struct.vlc_clock_cbs*, i64, i32* }
%struct.vlc_clock_cbs = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i32*, i32, %struct.vlc_clock_cbs*, i8*)* @vlc_clock_main_Create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @vlc_clock_main_Create(i32* %0, i32 %1, %struct.vlc_clock_cbs* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vlc_clock_cbs*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.vlc_clock_cbs* %2, %struct.vlc_clock_cbs** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = call %struct.TYPE_4__* @malloc(i32 40)
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %10, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %13 = icmp eq %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  br label %42

15:                                               ; preds = %4
  %16 = load i32*, i32** %6, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 4
  store i32* %16, i32** %18, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load %struct.vlc_clock_cbs*, %struct.vlc_clock_cbs** %8, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  store %struct.vlc_clock_cbs* %21, %struct.vlc_clock_cbs** %23, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.vlc_clock_cbs*, %struct.vlc_clock_cbs** %8, align 8
  %31 = icmp ne %struct.vlc_clock_cbs* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %15
  %33 = load %struct.vlc_clock_cbs*, %struct.vlc_clock_cbs** %8, align 8
  %34 = getelementptr inbounds %struct.vlc_clock_cbs, %struct.vlc_clock_cbs* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %32, %15
  %38 = phi i1 [ true, %15 ], [ %36, %32 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %41, %struct.TYPE_4__** %5, align 8
  br label %42

42:                                               ; preds = %37, %14
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  ret %struct.TYPE_4__* %43
}

declare dso_local %struct.TYPE_4__* @malloc(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

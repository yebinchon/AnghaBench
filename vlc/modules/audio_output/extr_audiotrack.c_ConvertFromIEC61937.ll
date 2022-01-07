; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_audiotrack.c_ConvertFromIEC61937.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_audiotrack.c_ConvertFromIEC61937.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @ConvertFromIEC61937 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ConvertFromIEC61937(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @VLC_UNUSED(i32* %8)
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %12, 6
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %56

15:                                               ; preds = %2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 4
  %20 = call i32 @GetWBE(i32* %19)
  %21 = and i32 %20, 255
  switch i32 %21, label %26 [
    i32 1, label %22
    i32 21, label %23
    i32 11, label %24
    i32 12, label %24
    i32 13, label %24
    i32 17, label %25
  ]

22:                                               ; preds = %15
  store i32 8, i32* %6, align 4
  br label %28

23:                                               ; preds = %15
  store i32 1, i32* %6, align 4
  br label %28

24:                                               ; preds = %15, %15, %15
  store i32 8, i32* %6, align 4
  br label %28

25:                                               ; preds = %15
  store i32 1, i32* %6, align 4
  br label %28

26:                                               ; preds = %15
  %27 = call i32 (...) @vlc_assert_unreachable()
  br label %28

28:                                               ; preds = %26, %25, %24, %23, %22
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 6
  %33 = call i32 @GetWBE(i32* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 -1, i32* %3, align 4
  br label %56

37:                                               ; preds = %28
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sdiv i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, 8
  %46 = icmp sgt i32 %41, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  store i32 -1, i32* %3, align 4
  br label %56

48:                                               ; preds = %37
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 8
  store i32* %52, i32** %50, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %48, %47, %36, %14
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @VLC_UNUSED(i32*) #1

declare dso_local i32 @GetWBE(i32*) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

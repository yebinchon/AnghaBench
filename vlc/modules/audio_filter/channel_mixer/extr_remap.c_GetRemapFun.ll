; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_filter/channel_mixer/extr_remap.c_GetRemapFun.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_filter/channel_mixer/extr_remap.c_GetRemapFun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@RemapAddU8 = common dso_local global i32* null, align 8
@RemapAddS16N = common dso_local global i32* null, align 8
@RemapAddS32N = common dso_local global i32* null, align 8
@RemapAddFL32 = common dso_local global i32* null, align 8
@RemapAddFL64 = common dso_local global i32* null, align 8
@RemapCopyU8 = common dso_local global i32* null, align 8
@RemapCopyS16N = common dso_local global i32* null, align 8
@RemapCopyS32N = common dso_local global i32* null, align 8
@RemapCopyFL32 = common dso_local global i32* null, align 8
@RemapCopyFL64 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i32)* @GetRemapFun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @GetRemapFun(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %22 [
    i32 128, label %12
    i32 130, label %14
    i32 129, label %16
    i32 132, label %18
    i32 131, label %20
  ]

12:                                               ; preds = %8
  %13 = load i32*, i32** @RemapAddU8, align 8
  store i32* %13, i32** %3, align 8
  br label %39

14:                                               ; preds = %8
  %15 = load i32*, i32** @RemapAddS16N, align 8
  store i32* %15, i32** %3, align 8
  br label %39

16:                                               ; preds = %8
  %17 = load i32*, i32** @RemapAddS32N, align 8
  store i32* %17, i32** %3, align 8
  br label %39

18:                                               ; preds = %8
  %19 = load i32*, i32** @RemapAddFL32, align 8
  store i32* %19, i32** %3, align 8
  br label %39

20:                                               ; preds = %8
  %21 = load i32*, i32** @RemapAddFL64, align 8
  store i32* %21, i32** %3, align 8
  br label %39

22:                                               ; preds = %8
  br label %38

23:                                               ; preds = %2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %37 [
    i32 128, label %27
    i32 130, label %29
    i32 129, label %31
    i32 132, label %33
    i32 131, label %35
  ]

27:                                               ; preds = %23
  %28 = load i32*, i32** @RemapCopyU8, align 8
  store i32* %28, i32** %3, align 8
  br label %39

29:                                               ; preds = %23
  %30 = load i32*, i32** @RemapCopyS16N, align 8
  store i32* %30, i32** %3, align 8
  br label %39

31:                                               ; preds = %23
  %32 = load i32*, i32** @RemapCopyS32N, align 8
  store i32* %32, i32** %3, align 8
  br label %39

33:                                               ; preds = %23
  %34 = load i32*, i32** @RemapCopyFL32, align 8
  store i32* %34, i32** %3, align 8
  br label %39

35:                                               ; preds = %23
  %36 = load i32*, i32** @RemapCopyFL64, align 8
  store i32* %36, i32** %3, align 8
  br label %39

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %37, %22
  store i32* null, i32** %3, align 8
  br label %39

39:                                               ; preds = %38, %35, %33, %31, %29, %27, %20, %18, %16, %14, %12
  %40 = load i32*, i32** %3, align 8
  ret i32* %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

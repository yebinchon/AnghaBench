; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_video_epg.c_OSDEpgValidate.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_video_epg.c_OSDEpgValidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32, i32*, i32*)* @OSDEpgValidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OSDEpgValidate(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = ptrtoint i32* %14 to i32
  %16 = call i32 @VLC_UNUSED(i32 %15)
  %17 = load i32*, i32** %13, align 8
  %18 = ptrtoint i32* %17 to i32
  %19 = call i32 @VLC_UNUSED(i32 %18)
  %20 = load i32*, i32** %10, align 8
  %21 = ptrtoint i32* %20 to i32
  %22 = call i32 @VLC_UNUSED(i32 %21)
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @VLC_UNUSED(i32 %23)
  %25 = load i32*, i32** %12, align 8
  %26 = ptrtoint i32* %25 to i32
  %27 = call i32 @VLC_UNUSED(i32 %26)
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %6
  %31 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %31, i32* %7, align 4
  br label %34

32:                                               ; preds = %6
  %33 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

declare dso_local i32 @VLC_UNUSED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

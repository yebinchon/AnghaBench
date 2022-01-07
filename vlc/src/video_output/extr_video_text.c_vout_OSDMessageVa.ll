; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_video_text.c_vout_OSDMessageVa.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_video_text.c_vout_OSDMessageVa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUBPICTURE_ALIGN_TOP = common dso_local global i32 0, align 4
@SUBPICTURE_ALIGN_RIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vout_OSDMessageVa(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %7, align 8
  %11 = load i32, i32* %8, align 4
  %12 = call i32 @vasprintf(i8** %9, i8* %10, i32 %11)
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %25

14:                                               ; preds = %4
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @SUBPICTURE_ALIGN_TOP, align 4
  %18 = load i32, i32* @SUBPICTURE_ALIGN_RIGHT, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @VLC_TICK_FROM_SEC(i32 1)
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 @vout_OSDText(i32* %15, i32 %16, i32 %19, i32 %20, i8* %21)
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 @free(i8* %23)
  br label %25

25:                                               ; preds = %14, %4
  ret void
}

declare dso_local i32 @vasprintf(i8**, i8*, i32) #1

declare dso_local i32 @vout_OSDText(i32*, i32, i32, i32, i8*) #1

declare dso_local i32 @VLC_TICK_FROM_SEC(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/vlc/src/interface/extr_dialog.c_vlc_dialog_display_progress_va.c'
source_filename = "/home/carl/AnghaBench/vlc/src/interface/extr_dialog.c_vlc_dialog_display_progress_va.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @vlc_dialog_display_progress_va(i32* %0, i32 %1, float %2, i8* %3, i8* %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store float %2, float* %11, align 4
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %7
  %22 = load i8*, i8** %13, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i8*, i8** %14, align 8
  %26 = icmp ne i8* %25, null
  br label %27

27:                                               ; preds = %24, %21, %7
  %28 = phi i1 [ false, %21 ], [ false, %7 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32*, i32** %9, align 8
  %32 = call i32* @get_dialog_provider(i32* %31, i32 1)
  store i32* %32, i32** %16, align 8
  %33 = load i32*, i32** %16, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32* null, i32** %8, align 8
  br label %53

36:                                               ; preds = %27
  %37 = load i32*, i32** %16, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load float, float* %11, align 4
  %40 = load i8*, i8** %12, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = load i8*, i8** %14, align 8
  %43 = load i32, i32* %15, align 4
  %44 = call i32 @display_progress_va(i32* %37, i32** %17, i32 %38, float %39, i8* %40, i8* %41, i8* %42, i32 %43)
  store i32 %44, i32* %18, align 4
  %45 = load i32, i32* %18, align 4
  %46 = load i32, i32* @VLC_SUCCESS, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %36
  %49 = load i32*, i32** %17, align 8
  br label %51

50:                                               ; preds = %36
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i32* [ %49, %48 ], [ null, %50 ]
  store i32* %52, i32** %8, align 8
  br label %53

53:                                               ; preds = %51, %35
  %54 = load i32*, i32** %8, align 8
  ret i32* %54
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @get_dialog_provider(i32*, i32) #1

declare dso_local i32 @display_progress_va(i32*, i32**, i32, float, i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

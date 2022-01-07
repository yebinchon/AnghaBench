; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_photon.c_gui_ph_show_tooltip.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_photon.c_gui_ph_show_tooltip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8** }

@Pt_ARG_POINTER = common dso_local global i32 0, align 4
@MENU_INDEX_TIP = common dso_local global i32 0, align 4
@Pt_BALLOON_TOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32, i8*, i8*, i32, i32)* @gui_ph_show_tooltip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @gui_ph_show_tooltip(i32* %0, i32* %1, i32 %2, i8* %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_3__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %19 = load i32, i32* @Pt_ARG_POINTER, align 4
  %20 = call i32 @PtSetArg(i32* %15, i32 %19, %struct.TYPE_3__** %16, i32 0)
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @PtGetResources(i32* %21, i32 1, i32* %15)
  %23 = load i8*, i8** %11, align 8
  store i8* %23, i8** %17, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %26, label %45

26:                                               ; preds = %7
  %27 = load i32, i32* @MENU_INDEX_TIP, align 4
  store i32 %27, i32* %18, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i8**, i8*** %29, align 8
  %31 = load i32, i32* %18, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %26
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i8**, i8*** %38, align 8
  %40 = load i32, i32* %18, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %17, align 8
  br label %44

44:                                               ; preds = %36, %26
  br label %45

45:                                               ; preds = %44, %7
  %46 = load i32*, i32** %8, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* @Pt_BALLOON_TOP, align 4
  %49 = load i8*, i8** %17, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %14, align 4
  %53 = call i32* @PtInflateBalloon(i32* %46, i32* %47, i32 %48, i8* %49, i8* %50, i32 %51, i32 %52)
  ret i32* %53
}

declare dso_local i32 @PtSetArg(i32*, i32, %struct.TYPE_3__**, i32) #1

declare dso_local i32 @PtGetResources(i32*, i32, i32*) #1

declare dso_local i32* @PtInflateBalloon(i32*, i32*, i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

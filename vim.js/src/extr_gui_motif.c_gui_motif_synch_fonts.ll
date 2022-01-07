; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_motif.c_gui_motif_synch_fonts.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_motif.c_gui_motif_synch_fonts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32, i64 }

@gui = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@repl_widgets = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@find_widgets = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@XmNfontList = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gui_motif_synch_fonts() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gui, i32 0, i32 0), align 8
  %6 = inttoptr i64 %5 to i32*
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %49

10:                                               ; preds = %0
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @gui_motif_create_fontlist(i32* %11)
  store i32 %12, i32* %4, align 4
  store i32 0, i32* %2, align 4
  br label %13

13:                                               ; preds = %43, %10
  %14 = load i32, i32* %2, align 4
  %15 = icmp sle i32 %14, 1
  br i1 %15, label %16, label %46

16:                                               ; preds = %13
  %17 = load i32, i32* %2, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, %struct.TYPE_5__* @repl_widgets, %struct.TYPE_5__* @find_widgets
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %1, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %16
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @XmNfontList, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @XtVaSetValues(i32 %28, i32 %29, i32 %30, i32* null)
  %32 = load i32, i32* %2, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %25
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @XmNfontList, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @XtVaSetValues(i32 %37, i32 %38, i32 %39, i32* null)
  br label %41

41:                                               ; preds = %34, %25
  br label %42

42:                                               ; preds = %41, %16
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %2, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %2, align 4
  br label %13

46:                                               ; preds = %13
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @XmFontListFree(i32 %47)
  br label %49

49:                                               ; preds = %46, %9
  ret void
}

declare dso_local i32 @gui_motif_create_fontlist(i32*) #1

declare dso_local i32 @XtVaSetValues(i32, i32, i32, i32*) #1

declare dso_local i32 @XmFontListFree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

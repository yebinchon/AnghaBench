; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_motif.c_gui_x11_set_back_color.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_motif.c_gui_x11_set_back_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@textArea = common dso_local global i32* null, align 8
@XmNbackground = common dso_local global i32 0, align 4
@gui = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gui_x11_set_back_color() #0 {
  %1 = load i32*, i32** @textArea, align 8
  %2 = icmp ne i32* %1, null
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = load i32*, i32** @textArea, align 8
  %5 = load i32, i32* @XmNbackground, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 0), align 4
  %7 = call i32 @XtVaSetValues(i32* %4, i32 %5, i32 %6, i32* null)
  br label %8

8:                                                ; preds = %3, %0
  ret void
}

declare dso_local i32 @XtVaSetValues(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

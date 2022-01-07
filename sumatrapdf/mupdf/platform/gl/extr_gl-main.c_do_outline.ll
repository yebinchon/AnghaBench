; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_do_outline.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_do_outline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list = type { i32 }

@do_outline.list = internal global %struct.list zeroinitializer, align 4
@L = common dso_local global i32 0, align 4
@BOTH = common dso_local global i32 0, align 4
@NW = common dso_local global i32 0, align 4
@outline_w = common dso_local global i32 0, align 4
@R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @do_outline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_outline(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32, i32* @L, align 4
  %4 = load i32, i32* @BOTH, align 4
  %5 = load i32, i32* @NW, align 4
  %6 = call i32 @ui_layout(i32 %3, i32 %4, i32 %5, i32 0, i32 0)
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @count_outline(i32* %7, i32 65535)
  %9 = load i32, i32* @outline_w, align 4
  %10 = call i32 @ui_tree_begin(%struct.list* @do_outline.list, i32 %8, i32 %9, i32 0, i32 1)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @do_outline_imp(%struct.list* @do_outline.list, i32 65535, i32* %11, i32 0)
  %13 = call i32 @ui_tree_end(%struct.list* @do_outline.list)
  %14 = load i32, i32* @R, align 4
  %15 = call i32 @ui_splitter(i32* @outline_w, i32 150, i32 500, i32 %14)
  ret void
}

declare dso_local i32 @ui_layout(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ui_tree_begin(%struct.list*, i32, i32, i32, i32) #1

declare dso_local i32 @count_outline(i32*, i32) #1

declare dso_local i32 @do_outline_imp(%struct.list*, i32, i32*, i32) #1

declare dso_local i32 @ui_tree_end(%struct.list*) #1

declare dso_local i32 @ui_splitter(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

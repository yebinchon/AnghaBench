; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_getchar.c_may_sync_undo.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_getchar.c_may_sync_undo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@State = common dso_local global i32 0, align 4
@INSERT = common dso_local global i32 0, align 4
@CMDLINE = common dso_local global i32 0, align 4
@arrow_used = common dso_local global i64 0, align 8
@scriptin = common dso_local global i32** null, align 8
@curscript = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @may_sync_undo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @may_sync_undo() #0 {
  %1 = load i32, i32* @State, align 4
  %2 = load i32, i32* @INSERT, align 4
  %3 = load i32, i32* @CMDLINE, align 4
  %4 = add nsw i32 %2, %3
  %5 = and i32 %1, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i64, i64* @arrow_used, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %7, %0
  %11 = load i32**, i32*** @scriptin, align 8
  %12 = load i64, i64* @curscript, align 8
  %13 = getelementptr inbounds i32*, i32** %11, i64 %12
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32, i32* @FALSE, align 4
  %18 = call i32 @u_sync(i32 %17)
  br label %19

19:                                               ; preds = %16, %10, %7
  ret void
}

declare dso_local i32 @u_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

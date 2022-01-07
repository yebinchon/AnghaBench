; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/templates/mdi/extr_main.c_UpdateStatusBar.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/templates/mdi/extr_main.c_UpdateStatusBar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hStatusBar = common dso_local global i32 0, align 4
@SB_SETTEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UpdateStatusBar() #0 {
  %1 = alloca [260 x i32], align 16
  %2 = alloca i32, align 4
  store i32 260, i32* %2, align 4
  %3 = getelementptr inbounds [260 x i32], [260 x i32]* %1, i64 0, i64 0
  %4 = call i32 @GetUserName(i32* %3, i32* %2)
  %5 = load i32, i32* @hStatusBar, align 4
  %6 = load i32, i32* @SB_SETTEXT, align 4
  %7 = getelementptr inbounds [260 x i32], [260 x i32]* %1, i64 0, i64 0
  %8 = ptrtoint i32* %7 to i32
  %9 = call i32 @SendMessage(i32 %5, i32 %6, i32 1, i32 %8)
  store i32 260, i32* %2, align 4
  %10 = getelementptr inbounds [260 x i32], [260 x i32]* %1, i64 0, i64 0
  %11 = call i32 @GetComputerName(i32* %10, i32* %2)
  %12 = load i32, i32* @hStatusBar, align 4
  %13 = load i32, i32* @SB_SETTEXT, align 4
  %14 = getelementptr inbounds [260 x i32], [260 x i32]* %1, i64 0, i64 0
  %15 = ptrtoint i32* %14 to i32
  %16 = call i32 @SendMessage(i32 %12, i32 %13, i32 0, i32 %15)
  ret void
}

declare dso_local i32 @GetUserName(i32*, i32*) #1

declare dso_local i32 @SendMessage(i32, i32, i32, i32) #1

declare dso_local i32 @GetComputerName(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

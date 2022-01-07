; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_edit.c_get_edit_style.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_edit.c_get_edit_style.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GWL_STYLE = common dso_local global i32 0, align 4
@ES_LEFT = common dso_local global i32 0, align 4
@ES_MULTILINE = common dso_local global i32 0, align 4
@ES_UPPERCASE = common dso_local global i32 0, align 4
@ES_LOWERCASE = common dso_local global i32 0, align 4
@ES_PASSWORD = common dso_local global i32 0, align 4
@ES_AUTOVSCROLL = common dso_local global i32 0, align 4
@ES_AUTOHSCROLL = common dso_local global i32 0, align 4
@ES_NOHIDESEL = common dso_local global i32 0, align 4
@ES_COMBO = common dso_local global i32 0, align 4
@ES_READONLY = common dso_local global i32 0, align 4
@ES_WANTRETURN = common dso_local global i32 0, align 4
@ES_NUMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_edit_style to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_edit_style(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @GWL_STYLE, align 4
  %5 = call i32 @GetWindowLongA(i32 %3, i32 %4)
  %6 = load i32, i32* @ES_LEFT, align 4
  %7 = load i32, i32* @ES_MULTILINE, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @ES_UPPERCASE, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @ES_LOWERCASE, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @ES_PASSWORD, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @ES_AUTOVSCROLL, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @ES_AUTOHSCROLL, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @ES_NOHIDESEL, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @ES_COMBO, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @ES_READONLY, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @ES_WANTRETURN, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @ES_NUMBER, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %5, %28
  ret i32 %29
}

declare dso_local i32 @GetWindowLongA(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

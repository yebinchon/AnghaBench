; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_menu.c_correct_behavior.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_menu.c_correct_behavior.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@ERROR_MENU_ITEM_NOT_FOUND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"NT4 and below can't handle a bigger MENUITEMINFO struct\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @correct_behavior to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @correct_behavior() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (...) @CreateMenu()
  store i32 %5, i32* %2, align 4
  %6 = call i32 @memset(%struct.TYPE_4__* %3, i32 0, i32 4)
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i32 4, i32* %7, align 4
  %8 = call i32 @SetLastError(i32 -559038737)
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @TRUE, align 4
  %11 = call i32 @GetMenuItemInfoA(i32 %9, i32 0, i32 %10, %struct.TYPE_4__* %3)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %0
  %15 = call i64 (...) @GetLastError()
  %16 = load i64, i64* @ERROR_MENU_ITEM_NOT_FOUND, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = call i32 @win_skip(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @DestroyMenu(i32 %20)
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %1, align 4
  br label %27

23:                                               ; preds = %14, %0
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @DestroyMenu(i32 %24)
  %26 = load i32, i32* @TRUE, align 4
  store i32 %26, i32* %1, align 4
  br label %27

27:                                               ; preds = %23, %18
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local i32 @CreateMenu(...) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @GetMenuItemInfoA(i32, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @DestroyMenu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

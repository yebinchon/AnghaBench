; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_autocomplete.c_dispatch_messages.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_autocomplete.c_dispatch_messages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PM_REMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dispatch_messages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispatch_messages() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @Sleep(i32 33)
  br label %3

3:                                                ; preds = %7, %0
  %4 = load i32, i32* @PM_REMOVE, align 4
  %5 = call i64 @PeekMessageA(i32* %1, i32 0, i32 0, i32 0, i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = call i32 @TranslateMessage(i32* %1)
  %9 = call i32 @DispatchMessageA(i32* %1)
  br label %3

10:                                               ; preds = %3
  ret void
}

declare dso_local i32 @Sleep(i32) #1

declare dso_local i64 @PeekMessageA(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @TranslateMessage(i32*) #1

declare dso_local i32 @DispatchMessageA(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_mac.c_gui_mch_update.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_mac.c_gui_mch_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@everyEvent = common dso_local global i32 0, align 4
@nullEvent = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gui_mch_update() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = load i32, i32* @everyEvent, align 4
  %3 = call i64 @EventAvail(i32 %2, %struct.TYPE_3__* %1)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @nullEvent, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = call i32 @gui_mch_wait_for_chars(i32 0)
  br label %12

12:                                               ; preds = %10, %5
  br label %13

13:                                               ; preds = %12, %0
  ret void
}

declare dso_local i64 @EventAvail(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @gui_mch_wait_for_chars(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

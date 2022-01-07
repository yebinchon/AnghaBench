; ModuleID = '/home/carl/AnghaBench/timescaledb/src/loader/extr_loader.c_extension_check.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/loader/extr_loader.c_extension_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@loaded = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @extension_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extension_check() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @loaded, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %11, label %4

4:                                                ; preds = %0
  %5 = call i32 (...) @extension_current_state()
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  switch i32 %6, label %10 [
    i32 129, label %7
    i32 131, label %7
    i32 128, label %9
    i32 130, label %9
  ]

7:                                                ; preds = %4, %4
  %8 = call i32 (...) @do_load()
  br label %11

9:                                                ; preds = %4, %4
  br label %11

10:                                               ; preds = %4
  br label %11

11:                                               ; preds = %7, %9, %10, %0
  ret void
}

declare dso_local i32 @extension_current_state(...) #1

declare dso_local i32 @do_load(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

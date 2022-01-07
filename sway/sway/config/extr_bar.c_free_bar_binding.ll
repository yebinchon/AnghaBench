; ModuleID = '/home/carl/AnghaBench/sway/sway/config/extr_bar.c_free_bar_binding.c'
source_filename = "/home/carl/AnghaBench/sway/sway/config/extr_bar.c_free_bar_binding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bar_binding = type { %struct.bar_binding* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_bar_binding(%struct.bar_binding* %0) #0 {
  %2 = alloca %struct.bar_binding*, align 8
  store %struct.bar_binding* %0, %struct.bar_binding** %2, align 8
  %3 = load %struct.bar_binding*, %struct.bar_binding** %2, align 8
  %4 = icmp ne %struct.bar_binding* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %13

6:                                                ; preds = %1
  %7 = load %struct.bar_binding*, %struct.bar_binding** %2, align 8
  %8 = getelementptr inbounds %struct.bar_binding, %struct.bar_binding* %7, i32 0, i32 0
  %9 = load %struct.bar_binding*, %struct.bar_binding** %8, align 8
  %10 = call i32 @free(%struct.bar_binding* %9)
  %11 = load %struct.bar_binding*, %struct.bar_binding** %2, align 8
  %12 = call i32 @free(%struct.bar_binding* %11)
  br label %13

13:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @free(%struct.bar_binding*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_string.c_make_string.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_string.c_make_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { void (%struct.TYPE_5__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (void (%struct.TYPE_5__*)*)* @make_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @make_string(void (%struct.TYPE_5__*)* %0) #0 {
  %2 = alloca void (%struct.TYPE_5__*)*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  store void (%struct.TYPE_5__*)* %0, void (%struct.TYPE_5__*)** %2, align 8
  %4 = call %struct.TYPE_5__* @heap_alloc(i32 8)
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %3, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = icmp ne %struct.TYPE_5__* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load void (%struct.TYPE_5__*)*, void (%struct.TYPE_5__*)** %2, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store void (%struct.TYPE_5__*)* %8, void (%struct.TYPE_5__*)** %10, align 8
  br label %11

11:                                               ; preds = %7, %1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %12
}

declare dso_local %struct.TYPE_5__* @heap_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

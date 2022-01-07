; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_criteria.c_pattern_destroy.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_criteria.c_pattern_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pattern = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pattern*)* @pattern_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pattern_destroy(%struct.pattern* %0) #0 {
  %2 = alloca %struct.pattern*, align 8
  store %struct.pattern* %0, %struct.pattern** %2, align 8
  %3 = load %struct.pattern*, %struct.pattern** %2, align 8
  %4 = icmp ne %struct.pattern* %3, null
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = load %struct.pattern*, %struct.pattern** %2, align 8
  %7 = getelementptr inbounds %struct.pattern, %struct.pattern* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = load %struct.pattern*, %struct.pattern** %2, align 8
  %12 = getelementptr inbounds %struct.pattern, %struct.pattern* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @pcre_free(i64 %13)
  br label %15

15:                                               ; preds = %10, %5
  %16 = load %struct.pattern*, %struct.pattern** %2, align 8
  %17 = call i32 @free(%struct.pattern* %16)
  br label %18

18:                                               ; preds = %15, %1
  ret void
}

declare dso_local i32 @pcre_free(i64) #1

declare dso_local i32 @free(%struct.pattern*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

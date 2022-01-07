; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_bar.c_bar_teardown.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_bar.c_bar_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar = type { i32, i32, i64, i32, i32, i64, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bar_teardown(%struct.swaybar* %0) #0 {
  %2 = alloca %struct.swaybar*, align 8
  store %struct.swaybar* %0, %struct.swaybar** %2, align 8
  %3 = load %struct.swaybar*, %struct.swaybar** %2, align 8
  %4 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %3, i32 0, i32 8
  %5 = call i32 @free_outputs(i32* %4)
  %6 = load %struct.swaybar*, %struct.swaybar** %2, align 8
  %7 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %6, i32 0, i32 7
  %8 = call i32 @free_outputs(i32* %7)
  %9 = load %struct.swaybar*, %struct.swaybar** %2, align 8
  %10 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %9, i32 0, i32 6
  %11 = call i32 @free_seats(i32* %10)
  %12 = load %struct.swaybar*, %struct.swaybar** %2, align 8
  %13 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.swaybar*, %struct.swaybar** %2, align 8
  %18 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @free_config(i64 %19)
  br label %21

21:                                               ; preds = %16, %1
  %22 = load %struct.swaybar*, %struct.swaybar** %2, align 8
  %23 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @close(i32 %24)
  %26 = load %struct.swaybar*, %struct.swaybar** %2, align 8
  %27 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @close(i32 %28)
  %30 = load %struct.swaybar*, %struct.swaybar** %2, align 8
  %31 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %21
  %35 = load %struct.swaybar*, %struct.swaybar** %2, align 8
  %36 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @status_line_free(i64 %37)
  br label %39

39:                                               ; preds = %34, %21
  %40 = load %struct.swaybar*, %struct.swaybar** %2, align 8
  %41 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @free(i32 %42)
  %44 = load %struct.swaybar*, %struct.swaybar** %2, align 8
  %45 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @free(i32 %46)
  ret void
}

declare dso_local i32 @free_outputs(i32*) #1

declare dso_local i32 @free_seats(i32*) #1

declare dso_local i32 @free_config(i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @status_line_free(i64) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

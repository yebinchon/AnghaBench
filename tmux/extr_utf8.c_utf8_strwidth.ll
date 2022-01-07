; ModuleID = '/home/carl/AnghaBench/tmux/extr_utf8.c_utf8_strwidth.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_utf8.c_utf8_strwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utf8_data = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @utf8_strwidth(%struct.utf8_data* %0, i64 %1) #0 {
  %3 = alloca %struct.utf8_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.utf8_data* %0, %struct.utf8_data** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %7

7:                                                ; preds = %30, %2
  %8 = load %struct.utf8_data*, %struct.utf8_data** %3, align 8
  %9 = load i64, i64* %5, align 8
  %10 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %8, i64 %9
  %11 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %7
  %15 = load i64, i64* %4, align 8
  %16 = icmp ne i64 %15, -1
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %33

22:                                               ; preds = %17, %14
  %23 = load %struct.utf8_data*, %struct.utf8_data** %3, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %23, i64 %24
  %26 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = add nsw i64 %28, %27
  store i64 %29, i64* %6, align 8
  br label %30

30:                                               ; preds = %22
  %31 = load i64, i64* %5, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %5, align 8
  br label %7

33:                                               ; preds = %21, %7
  %34 = load i64, i64* %6, align 8
  ret i64 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/tmux/extr_utf8.c_utf8_open.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_utf8.c_utf8_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utf8_data = type { i32 }

@UTF8_ERROR = common dso_local global i32 0, align 4
@UTF8_MORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utf8_open(%struct.utf8_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.utf8_data*, align 8
  %5 = alloca i32, align 4
  store %struct.utf8_data* %0, %struct.utf8_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.utf8_data*, %struct.utf8_data** %4, align 8
  %7 = call i32 @memset(%struct.utf8_data* %6, i32 0, i32 4)
  %8 = load i32, i32* %5, align 4
  %9 = icmp sge i32 %8, 194
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp sle i32 %11, 223
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load %struct.utf8_data*, %struct.utf8_data** %4, align 8
  %15 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %14, i32 0, i32 0
  store i32 2, i32* %15, align 4
  br label %38

16:                                               ; preds = %10, %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp sge i32 %17, 224
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = icmp sle i32 %20, 239
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct.utf8_data*, %struct.utf8_data** %4, align 8
  %24 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %23, i32 0, i32 0
  store i32 3, i32* %24, align 4
  br label %37

25:                                               ; preds = %19, %16
  %26 = load i32, i32* %5, align 4
  %27 = icmp sge i32 %26, 240
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = icmp sle i32 %29, 244
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load %struct.utf8_data*, %struct.utf8_data** %4, align 8
  %33 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %32, i32 0, i32 0
  store i32 4, i32* %33, align 4
  br label %36

34:                                               ; preds = %28, %25
  %35 = load i32, i32* @UTF8_ERROR, align 4
  store i32 %35, i32* %3, align 4
  br label %43

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %22
  br label %38

38:                                               ; preds = %37, %13
  %39 = load %struct.utf8_data*, %struct.utf8_data** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @utf8_append(%struct.utf8_data* %39, i32 %40)
  %42 = load i32, i32* @UTF8_MORE, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %38, %34
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @memset(%struct.utf8_data*, i32, i32) #1

declare dso_local i32 @utf8_append(%struct.utf8_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

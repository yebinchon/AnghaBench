; ModuleID = '/home/carl/AnghaBench/streem/src/extr_graph.c_show_yaxis.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_graph.c_show_yaxis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bar_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"\E2\94\9C %d   \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"\E2\94\9C 0\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"\E2\94\82\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bar_data*)* @show_yaxis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_yaxis(%struct.bar_data* %0) #0 {
  %2 = alloca %struct.bar_data*, align 8
  %3 = alloca i32, align 4
  store %struct.bar_data* %0, %struct.bar_data** %2, align 8
  %4 = call i32 @move_cursor(i32 1, i32 2)
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %40, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.bar_data*, %struct.bar_data** %2, align 8
  %9 = getelementptr inbounds %struct.bar_data, %struct.bar_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %43

12:                                               ; preds = %6
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, 2
  %15 = load %struct.bar_data*, %struct.bar_data** %2, align 8
  %16 = getelementptr inbounds %struct.bar_data, %struct.bar_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  %19 = call i32 @move_cursor(i32 %14, i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %12
  %23 = load %struct.bar_data*, %struct.bar_data** %2, align 8
  %24 = getelementptr inbounds %struct.bar_data, %struct.bar_data* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %39

27:                                               ; preds = %12
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.bar_data*, %struct.bar_data** %2, align 8
  %30 = getelementptr inbounds %struct.bar_data, %struct.bar_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %31, 1
  %33 = icmp eq i32 %28, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %38

36:                                               ; preds = %27
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %34
  br label %39

39:                                               ; preds = %38, %22
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %6

43:                                               ; preds = %6
  ret void
}

declare dso_local i32 @move_cursor(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_condition.c_test_order.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_condition.c_test_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"unknown order\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @test_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_order(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %31 [
    i32 130, label %7
    i32 129, label %11
    i32 133, label %15
    i32 128, label %19
    i32 131, label %23
    i32 132, label %27
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  %10 = zext i1 %9 to i32
  store i32 %10, i32* %3, align 4
  br label %33

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp sle i32 %12, 0
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %3, align 4
  br label %33

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %3, align 4
  br label %33

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %3, align 4
  br label %33

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = icmp sge i32 %24, 0
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %3, align 4
  br label %33

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = icmp sgt i32 %28, 0
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %3, align 4
  br label %33

31:                                               ; preds = %2
  %32 = call i32 @assert_not_reached(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %7, %11, %15, %19, %23, %27, %31
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @assert_not_reached(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_regexp.c_hex.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_regexp.c_hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cstate = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"invalid escape sequence\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cstate*, i32)* @hex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hex(%struct.cstate* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cstate*, align 8
  %5 = alloca i32, align 4
  store %struct.cstate* %0, %struct.cstate** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp sge i32 %6, 48
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp sle i32 %9, 57
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32, i32* %5, align 4
  %13 = sub nsw i32 %12, 48
  store i32 %13, i32* %3, align 4
  br label %37

14:                                               ; preds = %8, %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp sge i32 %15, 97
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = icmp sle i32 %18, 102
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = sub nsw i32 %21, 97
  %23 = add nsw i32 %22, 10
  store i32 %23, i32* %3, align 4
  br label %37

24:                                               ; preds = %17, %14
  %25 = load i32, i32* %5, align 4
  %26 = icmp sge i32 %25, 65
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = icmp sle i32 %28, 70
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = sub nsw i32 %31, 65
  %33 = add nsw i32 %32, 10
  store i32 %33, i32* %3, align 4
  br label %37

34:                                               ; preds = %27, %24
  %35 = load %struct.cstate*, %struct.cstate** %4, align 8
  %36 = call i32 @die(%struct.cstate* %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %34, %30, %20, %11
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @die(%struct.cstate*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

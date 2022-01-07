; ModuleID = '/home/carl/AnghaBench/tig/src/extr_draw.c_draw_space.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_draw.c_draw_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32 }

@draw_space.space = internal global [21 x i8] c"                    \00", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, i32, i32, i32)* @draw_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @draw_space(%struct.view* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.view*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.view* %0, %struct.view** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %9, align 4
  %13 = call i32 @MIN(i32 %11, i32 %12)
  store i32 %13, i32* %9, align 4
  br label %14

14:                                               ; preds = %26, %4
  %15 = load i32, i32* %9, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @MIN(i32 %18, i32 20)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.view*, %struct.view** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i64 @draw_chars(%struct.view* %20, i32 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @draw_space.space, i64 0, i64 0), i32 -1, i32 %22, i32 0)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i32 1, i32* %5, align 4
  br label %35

26:                                               ; preds = %17
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %9, align 4
  %29 = sub nsw i32 %28, %27
  store i32 %29, i32* %9, align 4
  br label %14

30:                                               ; preds = %14
  %31 = load %struct.view*, %struct.view** %6, align 8
  %32 = call i64 @VIEW_MAX_LEN(%struct.view* %31)
  %33 = icmp sle i64 %32, 0
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %30, %25
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i64 @draw_chars(%struct.view*, i32, i8*, i32, i32, i32) #1

declare dso_local i64 @VIEW_MAX_LEN(%struct.view*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_focus.c_get_direction_from_next_prev.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_focus.c_get_direction_from_next_prev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { i32 }
%struct.sway_seat = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"prev\00", align 1
@WLR_DIRECTION_LEFT = common dso_local global i32 0, align 4
@WLR_DIRECTION_UP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@WLR_DIRECTION_RIGHT = common dso_local global i32 0, align 4
@WLR_DIRECTION_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sway_container*, %struct.sway_seat*, i8*, i32*)* @get_direction_from_next_prev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_direction_from_next_prev(%struct.sway_container* %0, %struct.sway_seat* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sway_container*, align 8
  %7 = alloca %struct.sway_seat*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.sway_container* %0, %struct.sway_container** %6, align 8
  store %struct.sway_seat* %1, %struct.sway_seat** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 131, i32* %10, align 4
  %11 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %12 = icmp ne %struct.sway_container* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %15 = call i32 @container_parent_layout(%struct.sway_container* %14)
  store i32 %15, i32* %10, align 4
  br label %16

16:                                               ; preds = %13, %4
  %17 = load i8*, i8** %8, align 8
  %18 = call i64 @strcasecmp(i8* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load i32, i32* %10, align 4
  switch i32 %21, label %29 [
    i32 132, label %22
    i32 129, label %22
    i32 128, label %25
    i32 130, label %25
    i32 131, label %28
  ]

22:                                               ; preds = %20, %20
  %23 = load i32, i32* @WLR_DIRECTION_LEFT, align 4
  %24 = load i32*, i32** %9, align 8
  store i32 %23, i32* %24, align 4
  br label %30

25:                                               ; preds = %20, %20
  %26 = load i32, i32* @WLR_DIRECTION_UP, align 4
  %27 = load i32*, i32** %9, align 8
  store i32 %26, i32* %27, align 4
  br label %30

28:                                               ; preds = %20
  store i32 1, i32* %5, align 4
  br label %49

29:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %49

30:                                               ; preds = %25, %22
  br label %48

31:                                               ; preds = %16
  %32 = load i8*, i8** %8, align 8
  %33 = call i64 @strcasecmp(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = load i32, i32* %10, align 4
  switch i32 %36, label %44 [
    i32 132, label %37
    i32 129, label %37
    i32 128, label %40
    i32 130, label %40
    i32 131, label %43
  ]

37:                                               ; preds = %35, %35
  %38 = load i32, i32* @WLR_DIRECTION_RIGHT, align 4
  %39 = load i32*, i32** %9, align 8
  store i32 %38, i32* %39, align 4
  br label %45

40:                                               ; preds = %35, %35
  %41 = load i32, i32* @WLR_DIRECTION_DOWN, align 4
  %42 = load i32*, i32** %9, align 8
  store i32 %41, i32* %42, align 4
  br label %45

43:                                               ; preds = %35
  store i32 1, i32* %5, align 4
  br label %49

44:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %49

45:                                               ; preds = %40, %37
  br label %47

46:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %49

47:                                               ; preds = %45
  br label %48

48:                                               ; preds = %47, %30
  store i32 1, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %46, %44, %43, %29, %28
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @container_parent_layout(%struct.sway_container*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

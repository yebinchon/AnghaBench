; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_focus.c_parse_direction.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_focus.c_parse_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"left\00", align 1
@WLR_DIRECTION_LEFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@WLR_DIRECTION_RIGHT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@WLR_DIRECTION_UP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@WLR_DIRECTION_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @parse_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_direction(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i64 @strcasecmp(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @WLR_DIRECTION_LEFT, align 4
  %11 = load i32*, i32** %5, align 8
  store i32 %10, i32* %11, align 4
  br label %37

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @strcasecmp(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @WLR_DIRECTION_RIGHT, align 4
  %18 = load i32*, i32** %5, align 8
  store i32 %17, i32* %18, align 4
  br label %36

19:                                               ; preds = %12
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @strcasecmp(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @WLR_DIRECTION_UP, align 4
  %25 = load i32*, i32** %5, align 8
  store i32 %24, i32* %25, align 4
  br label %35

26:                                               ; preds = %19
  %27 = load i8*, i8** %4, align 8
  %28 = call i64 @strcasecmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @WLR_DIRECTION_DOWN, align 4
  %32 = load i32*, i32** %5, align 8
  store i32 %31, i32* %32, align 4
  br label %34

33:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %38

34:                                               ; preds = %30
  br label %35

35:                                               ; preds = %34, %23
  br label %36

36:                                               ; preds = %35, %16
  br label %37

37:                                               ; preds = %36, %9
  store i32 1, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %33
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

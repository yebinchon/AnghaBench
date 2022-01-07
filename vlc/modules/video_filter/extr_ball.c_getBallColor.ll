; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_ball.c_getBallColor.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_ball.c_getBallColor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"red\00", align 1
@RED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@BLUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@GREEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@WHITE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"no valid ball color provided (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @getBallColor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getBallColor(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @RED, align 4
  store i32 %10, i32* %5, align 4
  br label %37

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* @BLUE, align 4
  store i32 %16, i32* %5, align 4
  br label %36

17:                                               ; preds = %11
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @GREEN, align 4
  store i32 %22, i32* %5, align 4
  br label %35

23:                                               ; preds = %17
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @WHITE, align 4
  store i32 %28, i32* %5, align 4
  br label %34

29:                                               ; preds = %23
  %30 = load i32*, i32** %3, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @msg_Err(i32* %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* @RED, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %29, %27
  br label %35

35:                                               ; preds = %34, %21
  br label %36

36:                                               ; preds = %35, %15
  br label %37

37:                                               ; preds = %36, %9
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @msg_Err(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

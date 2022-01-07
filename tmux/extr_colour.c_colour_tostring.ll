; ModuleID = '/home/carl/AnghaBench/tmux/extr_colour.c_colour_tostring.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_colour.c_colour_tostring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@colour_tostring.s = internal global [32 x i8] zeroinitializer, align 16
@COLOUR_FLAG_RGB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"#%02x%02x%02x\00", align 1
@COLOUR_FLAG_256 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"colour%u\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"yellow\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"magenta\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"cyan\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"terminal\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"brightblack\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"brightred\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"brightgreen\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"brightyellow\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"brightblue\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"brightmagenta\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"brightcyan\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"brightwhite\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @colour_tostring(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @COLOUR_FLAG_RGB, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @colour_split_rgb(i32 %12, i32* %4, i32* %5, i32* %6)
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 (i8*, i32, i8*, i32, ...) @xsnprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @colour_tostring.s, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15, i32 %16)
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @colour_tostring.s, i64 0, i64 0), i8** %2, align 8
  br label %48

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @COLOUR_FLAG_256, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, 255
  %26 = call i32 (i8*, i32, i8*, i32, ...) @xsnprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @colour_tostring.s, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @colour_tostring.s, i64 0, i64 0), i8** %2, align 8
  br label %48

27:                                               ; preds = %18
  %28 = load i32, i32* %3, align 4
  switch i32 %28, label %47 [
    i32 0, label %29
    i32 1, label %30
    i32 2, label %31
    i32 3, label %32
    i32 4, label %33
    i32 5, label %34
    i32 6, label %35
    i32 7, label %36
    i32 8, label %37
    i32 9, label %38
    i32 90, label %39
    i32 91, label %40
    i32 92, label %41
    i32 93, label %42
    i32 94, label %43
    i32 95, label %44
    i32 96, label %45
    i32 97, label %46
  ]

29:                                               ; preds = %27
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %48

30:                                               ; preds = %27
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %48

31:                                               ; preds = %27
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %48

32:                                               ; preds = %27
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %48

33:                                               ; preds = %27
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %48

34:                                               ; preds = %27
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %48

35:                                               ; preds = %27
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %48

36:                                               ; preds = %27
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %48

37:                                               ; preds = %27
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %48

38:                                               ; preds = %27
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %48

39:                                               ; preds = %27
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %48

40:                                               ; preds = %27
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %48

41:                                               ; preds = %27
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %48

42:                                               ; preds = %27
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %48

43:                                               ; preds = %27
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %48

44:                                               ; preds = %27
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %48

45:                                               ; preds = %27
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %48

46:                                               ; preds = %27
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %48

47:                                               ; preds = %27
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %48

48:                                               ; preds = %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %23, %11
  %49 = load i8*, i8** %2, align 8
  ret i8* %49
}

declare dso_local i32 @colour_split_rgb(i32, i32*, i32*, i32*) #1

declare dso_local i32 @xsnprintf(i8*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

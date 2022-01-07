; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/extr_standard.c_checkAccessMux.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/extr_standard.c_checkAccessMux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"mmsh\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"asfh\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"mmsh output is only valid with asfh mux\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"mov\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"mp4\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"mov and mp4 mux are only valid with file output\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"ffmpeg\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"avformat\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"sout-avformat-mux\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"mpegts\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"UDP output is only valid with TS mux\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"ts\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*)* @checkAccessMux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checkAccessMux(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i64 @exactMatch(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load i8*, i8** %6, align 8
  %13 = call i64 @exactMatch(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @msg_Err(i32* %16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %71

18:                                               ; preds = %11, %3
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @exactMatch(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %18
  %23 = load i8*, i8** %6, align 8
  %24 = call i64 @exactMatch(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 3)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 @exactMatch(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 3)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26, %22
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @msg_Err(i32* %31, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  br label %70

33:                                               ; preds = %26, %18
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @exactMatch(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 3)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %69

37:                                               ; preds = %33
  %38 = load i8*, i8** %6, align 8
  %39 = call i64 @exactMatch(i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 6)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8
  %43 = call i64 @exactMatch(i8* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 8)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %41, %37
  %46 = load i32*, i32** %4, align 8
  %47 = call i8* @var_CreateGetString(i32* %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  store i8* %47, i8** %7, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i8*, i8** %7, align 8
  %52 = call i64 @strncmp(i8* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 6)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50, %45
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @msg_Err(i32* %55, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %50
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @free(i8* %58)
  br label %68

60:                                               ; preds = %41
  %61 = load i8*, i8** %6, align 8
  %62 = call i64 @exactMatch(i8* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i32 2)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @msg_Err(i32* %65, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %60
  br label %68

68:                                               ; preds = %67, %57
  br label %69

69:                                               ; preds = %68, %33
  br label %70

70:                                               ; preds = %69, %30
  br label %71

71:                                               ; preds = %70, %15
  ret void
}

declare dso_local i64 @exactMatch(i8*, i8*, i32) #1

declare dso_local i32 @msg_Err(i32*, i8*) #1

declare dso_local i8* @var_CreateGetString(i32*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

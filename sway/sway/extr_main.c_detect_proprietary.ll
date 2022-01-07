; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_main.c_detect_proprietary.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_main.c_detect_proprietary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"/proc/modules\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"nvidia \00", align 1
@SWAY_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"!!! Proprietary Nvidia drivers are in use !!!\00", align 1
@.str.4 = private unnamed_addr constant [149 x i8] c"Proprietary Nvidia drivers are NOT supported. Use Nouveau. To launch sway anyway, launch with --my-next-gpu-wont-be-nvidia and DO NOT report issues.\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"fglrx\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"!!! Proprietary AMD drivers are in use !!!\00", align 1
@.str.7 = private unnamed_addr constant [136 x i8] c"Proprietary AMD drivers do NOT support Wayland. Use radeon. To try anyway, launch sway with --unsupported-gpu and DO NOT report issues.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @detect_proprietary(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = call i32* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %53

10:                                               ; preds = %1
  store i8* null, i8** %4, align 8
  store i64 0, i64* %5, align 8
  br label %11

11:                                               ; preds = %47, %10
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @getline(i8** %4, i64* %5, i32* %12)
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %48

15:                                               ; preds = %11
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load i32, i32* %2, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @SWAY_ERROR, align 4
  %24 = call i32 @sway_log(i32 %23, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %30

25:                                               ; preds = %19
  %26 = load i32, i32* @SWAY_ERROR, align 4
  %27 = call i32 @sway_log(i32 %26, i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.4, i64 0, i64 0))
  %28 = load i32, i32* @EXIT_FAILURE, align 4
  %29 = call i32 @exit(i32 %28) #3
  unreachable

30:                                               ; preds = %22
  br label %48

31:                                               ; preds = %15
  %32 = load i8*, i8** %4, align 8
  %33 = call i64 @strstr(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = load i32, i32* %2, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* @SWAY_ERROR, align 4
  %40 = call i32 @sway_log(i32 %39, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  br label %46

41:                                               ; preds = %35
  %42 = load i32, i32* @SWAY_ERROR, align 4
  %43 = call i32 @sway_log(i32 %42, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.7, i64 0, i64 0))
  %44 = load i32, i32* @EXIT_FAILURE, align 4
  %45 = call i32 @exit(i32 %44) #3
  unreachable

46:                                               ; preds = %38
  br label %48

47:                                               ; preds = %31
  br label %11

48:                                               ; preds = %46, %30, %11
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @free(i8* %49)
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @fclose(i32* %51)
  br label %53

53:                                               ; preds = %48, %9
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sway_log(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

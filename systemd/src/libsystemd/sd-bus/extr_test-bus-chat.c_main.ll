; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_test-bus-chat.c_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_test-bus-chat.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to connect to bus\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Initialized...\00", align 1
@client1 = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@client2 = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* @LOG_INFO, align 4
  %13 = call i32 @test_setup_logging(i32 %12)
  %14 = call i32 @server_init(i32** %8)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 @log_tests_skipped(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %3, align 4
  br label %71

19:                                               ; preds = %2
  %20 = call i32 @log_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @client1, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @pthread_create(i32* %6, i32* null, i32 %21, i32* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %27, i32* %3, align 4
  br label %71

28:                                               ; preds = %19
  %29 = load i32, i32* @client2, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @pthread_create(i32* %7, i32* null, i32 %29, i32* %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %35, i32* %3, align 4
  br label %71

36:                                               ; preds = %28
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @server(i32* %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @pthread_join(i32 %39, i8** %9)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %44, i32* %3, align 4
  br label %71

45:                                               ; preds = %36
  %46 = load i8*, i8** %9, align 8
  %47 = call i64 @PTR_TO_INT(i8* %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %50, i32* %3, align 4
  br label %71

51:                                               ; preds = %45
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @pthread_join(i32 %52, i8** %9)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %57, i32* %3, align 4
  br label %71

58:                                               ; preds = %51
  %59 = load i8*, i8** %9, align 8
  %60 = call i64 @PTR_TO_INT(i8* %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %63, i32* %3, align 4
  br label %71

64:                                               ; preds = %58
  %65 = load i32, i32* %11, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %68, i32* %3, align 4
  br label %71

69:                                               ; preds = %64
  %70 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %67, %62, %56, %49, %43, %34, %26, %17
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @test_setup_logging(i32) #1

declare dso_local i32 @server_init(i32**) #1

declare dso_local i32 @log_tests_skipped(i8*) #1

declare dso_local i32 @log_info(i8*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @server(i32*) #1

declare dso_local i32 @pthread_join(i32, i8**) #1

declare dso_local i64 @PTR_TO_INT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}

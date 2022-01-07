; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_test-bus-queue-ref-cycle.c_test_ref_unref.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_test-bus-queue-ref-cycle.c_test_ref_unref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"Failed to connect to bus\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"foo.bar\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"/foo\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"quux.quux\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"waldo\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_ref_unref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_ref_unref() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  %5 = call i32 @sd_bus_open_system(i32** %3)
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 @log_tests_skipped(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 %9, i32* %1, align 4
  br label %47

10:                                               ; preds = %0
  %11 = load i32*, i32** %3, align 8
  %12 = call i64 @sd_bus_message_new_method_call(i32* %11, i32** %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %13 = icmp sge i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert_se(i32 %14)
  %16 = load i32*, i32** %3, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = call i64 @sd_bus_send(i32* %16, i32* %17, i32* null)
  %19 = icmp sge i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert_se(i32 %20)
  %22 = load i32*, i32** %2, align 8
  %23 = call i32* @sd_bus_message_unref(i32* %22)
  store i32* %23, i32** %2, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = call i32* @sd_bus_unref(i32* %24)
  store i32* %25, i32** %3, align 8
  %26 = call i32 @sd_bus_open_system(i32** %3)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %10
  %30 = call i32 @log_tests_skipped(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 %30, i32* %1, align 4
  br label %47

31:                                               ; preds = %10
  %32 = load i32*, i32** %3, align 8
  %33 = call i64 @sd_bus_message_new_method_call(i32* %32, i32** %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %34 = icmp sge i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert_se(i32 %35)
  %37 = load i32*, i32** %3, align 8
  %38 = load i32*, i32** %2, align 8
  %39 = call i64 @sd_bus_send(i32* %37, i32* %38, i32* null)
  %40 = icmp sge i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert_se(i32 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = call i32* @sd_bus_unref(i32* %43)
  store i32* %44, i32** %3, align 8
  %45 = load i32*, i32** %2, align 8
  %46 = call i32* @sd_bus_message_unref(i32* %45)
  store i32* %46, i32** %2, align 8
  store i32 0, i32* %1, align 4
  br label %47

47:                                               ; preds = %31, %29, %8
  %48 = load i32, i32* %1, align 4
  ret i32 %48
}

declare dso_local i32 @sd_bus_open_system(i32**) #1

declare dso_local i32 @log_tests_skipped(i8*) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @sd_bus_message_new_method_call(i32*, i32**, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @sd_bus_send(i32*, i32*, i32*) #1

declare dso_local i32* @sd_bus_message_unref(i32*) #1

declare dso_local i32* @sd_bus_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

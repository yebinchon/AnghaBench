; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-event/extr_test-event.c_io_handler.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-event/extr_test-event.c_io_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"got IO on %c\00", align 1
@SD_EVENT_OFF = common dso_local global i32 0, align 4
@got_a = common dso_local global i32 0, align 4
@got_b = common dso_local global i32 0, align 4
@got_d = common dso_local global i32 0, align 4
@SD_EVENT_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"Yuck!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i8*)* @io_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_handler(i32* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = call i32 @PTR_TO_INT(i8* %9)
  %11 = call i32 @log_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i8*, i8** %8, align 8
  %13 = call i8* @INT_TO_PTR(i8 signext 97)
  %14 = icmp eq i8* %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %4
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @SD_EVENT_OFF, align 4
  %18 = call i64 @sd_event_source_set_enabled(i32* %16, i32 %17)
  %19 = icmp sge i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert_se(i32 %20)
  %22 = load i32, i32* @got_a, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert_se(i32 %25)
  store i32 1, i32* @got_a, align 4
  br label %65

27:                                               ; preds = %4
  %28 = load i8*, i8** %8, align 8
  %29 = call i8* @INT_TO_PTR(i8 signext 98)
  %30 = icmp eq i8* %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i32, i32* @got_b, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert_se(i32 %35)
  store i32 1, i32* @got_b, align 4
  br label %64

37:                                               ; preds = %27
  %38 = load i8*, i8** %8, align 8
  %39 = call i8* @INT_TO_PTR(i8 signext 100)
  %40 = icmp eq i8* %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %37
  %42 = load i32, i32* @got_d, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @got_d, align 4
  %44 = load i32, i32* @got_d, align 4
  %45 = icmp slt i32 %44, 2
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* @SD_EVENT_ONESHOT, align 4
  %49 = call i64 @sd_event_source_set_enabled(i32* %47, i32 %48)
  %50 = icmp sge i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert_se(i32 %51)
  br label %60

53:                                               ; preds = %41
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* @SD_EVENT_OFF, align 4
  %56 = call i64 @sd_event_source_set_enabled(i32* %54, i32 %55)
  %57 = icmp sge i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert_se(i32 %58)
  br label %60

60:                                               ; preds = %53, %46
  br label %63

61:                                               ; preds = %37
  %62 = call i32 @assert_not_reached(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %60
  br label %64

64:                                               ; preds = %63, %31
  br label %65

65:                                               ; preds = %64, %15
  ret i32 1
}

declare dso_local i32 @log_info(i8*, i32) #1

declare dso_local i32 @PTR_TO_INT(i8*) #1

declare dso_local i8* @INT_TO_PTR(i8 signext) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @sd_event_source_set_enabled(i32*, i32) #1

declare dso_local i32 @assert_not_reached(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

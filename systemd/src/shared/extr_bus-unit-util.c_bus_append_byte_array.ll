; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_bus-unit-util.c_bus_append_byte_array.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_bus-unit-util.c_bus_append_byte_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SD_BUS_TYPE_STRUCT = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [3 x i8] c"sv\00", align 1
@SD_BUS_TYPE_STRING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"ay\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i64)* @bus_append_byte_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bus_append_byte_array(i32* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i8, i8* @SD_BUS_TYPE_STRUCT, align 1
  %13 = call i32 @sd_bus_message_open_container(i32* %11, i8 signext %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @bus_log_create_error(i32 %17)
  store i32 %18, i32* %5, align 4
  br label %64

19:                                               ; preds = %4
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* @SD_BUS_TYPE_STRING, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @sd_bus_message_append_basic(i32* %20, i32 %21, i8* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @bus_log_create_error(i32 %27)
  store i32 %28, i32* %5, align 4
  br label %64

29:                                               ; preds = %19
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @sd_bus_message_open_container(i32* %30, i8 signext 118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @bus_log_create_error(i32 %35)
  store i32 %36, i32* %5, align 4
  br label %64

37:                                               ; preds = %29
  %38 = load i32*, i32** %6, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @sd_bus_message_append_array(i32* %38, i8 signext 121, i8* %39, i64 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @bus_log_create_error(i32 %45)
  store i32 %46, i32* %5, align 4
  br label %64

47:                                               ; preds = %37
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @sd_bus_message_close_container(i32* %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @bus_log_create_error(i32 %53)
  store i32 %54, i32* %5, align 4
  br label %64

55:                                               ; preds = %47
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @sd_bus_message_close_container(i32* %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @bus_log_create_error(i32 %61)
  store i32 %62, i32* %5, align 4
  br label %64

63:                                               ; preds = %55
  store i32 1, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %60, %52, %44, %34, %26, %16
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @sd_bus_message_open_container(i32*, i8 signext, i8*) #1

declare dso_local i32 @bus_log_create_error(i32) #1

declare dso_local i32 @sd_bus_message_append_basic(i32*, i32, i8*) #1

declare dso_local i32 @sd_bus_message_append_array(i32*, i8 signext, i8*, i64) #1

declare dso_local i32 @sd_bus_message_close_container(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

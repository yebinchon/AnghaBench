; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_test-bus-chat.c_object_callback.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_test-bus-chat.c_object_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"org.object.test\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Foobar\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Invoked Foobar() on %s\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Failed to send reply: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*)* @object_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @object_callback(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i64 @sd_bus_message_is_method_error(i32* %9, i32* null)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %30

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = call i64 @sd_bus_message_is_method_call(i32* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @sd_bus_message_get_path(i32* %18)
  %20 = call i32 @log_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @sd_bus_reply_method_return(i32* %21, i32* null)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @log_error_errno(i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i32 %27, i32* %4, align 4
  br label %30

28:                                               ; preds = %17
  store i32 1, i32* %4, align 4
  br label %30

29:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %28, %25, %12
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i64 @sd_bus_message_is_method_error(i32*, i32*) #1

declare dso_local i64 @sd_bus_message_is_method_call(i32*, i8*, i8*) #1

declare dso_local i32 @log_info(i8*, i32) #1

declare dso_local i32 @sd_bus_message_get_path(i32*) #1

declare dso_local i32 @sd_bus_reply_method_return(i32*, i32*) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

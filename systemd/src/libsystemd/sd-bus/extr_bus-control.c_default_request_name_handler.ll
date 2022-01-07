; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-control.c_default_request_name_handler.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-control.c_default_request_name_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"Unable to request name, failing connection: %s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Already owner of requested service name, ignoring.\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"In queue for requested service name.\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Successfully acquired requested service name.\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"Requested service name already owned, failing connection.\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"Unexpected response from RequestName(), failing connection.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*)* @default_request_name_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @default_request_name_handler(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @assert(i32* %10)
  %12 = load i32*, i32** %5, align 8
  %13 = call i64 @sd_bus_message_is_method_error(i32* %12, i32* null)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @sd_bus_message_get_errno(i32* %16)
  %18 = load i32*, i32** %5, align 8
  %19 = call %struct.TYPE_2__* @sd_bus_message_get_error(i32* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @log_debug_errno(i32 %17, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @sd_bus_message_get_bus(i32* %23)
  %25 = call i32 @bus_enter_closing(i32 %24)
  store i32 1, i32* %4, align 4
  br label %51

26:                                               ; preds = %3
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @sd_bus_message_read(i32* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %8)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %4, align 4
  br label %51

33:                                               ; preds = %26
  %34 = load i32, i32* %8, align 4
  switch i32 %34, label %46 [
    i32 131, label %35
    i32 129, label %37
    i32 128, label %39
    i32 130, label %41
  ]

35:                                               ; preds = %33
  %36 = call i32 @log_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %51

37:                                               ; preds = %33
  %38 = call i32 @log_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %51

39:                                               ; preds = %33
  %40 = call i32 @log_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %51

41:                                               ; preds = %33
  %42 = call i32 @log_debug(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0))
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @sd_bus_message_get_bus(i32* %43)
  %45 = call i32 @bus_enter_closing(i32 %44)
  store i32 1, i32* %4, align 4
  br label %51

46:                                               ; preds = %33
  %47 = call i32 @log_debug(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0))
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @sd_bus_message_get_bus(i32* %48)
  %50 = call i32 @bus_enter_closing(i32 %49)
  store i32 1, i32* %4, align 4
  br label %51

51:                                               ; preds = %46, %41, %39, %37, %35, %31, %15
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i64 @sd_bus_message_is_method_error(i32*, i32*) #1

declare dso_local i32 @log_debug_errno(i32, i8*, i32) #1

declare dso_local i32 @sd_bus_message_get_errno(i32*) #1

declare dso_local %struct.TYPE_2__* @sd_bus_message_get_error(i32*) #1

declare dso_local i32 @bus_enter_closing(i32) #1

declare dso_local i32 @sd_bus_message_get_bus(i32*) #1

declare dso_local i32 @sd_bus_message_read(i32*, i8*, i32*) #1

declare dso_local i32 @log_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

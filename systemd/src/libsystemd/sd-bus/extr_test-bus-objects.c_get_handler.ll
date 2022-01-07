; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_test-bus-objects.c_get_handler.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_test-bus-objects.c_get_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"property get for %s called, returning \22%s\22.\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i8*, i32*, i8*, i32*)* @get_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_handler(i32* %0, i8* %1, i8* %2, i8* %3, i32* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.context*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  %17 = load i8*, i8** %13, align 8
  %18 = bitcast i8* %17 to %struct.context*
  store %struct.context* %18, %struct.context** %15, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = load %struct.context*, %struct.context** %15, align 8
  %21 = getelementptr inbounds %struct.context, %struct.context* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @log_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %22)
  %24 = load i32*, i32** %12, align 8
  %25 = load %struct.context*, %struct.context** %15, align 8
  %26 = getelementptr inbounds %struct.context, %struct.context* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @sd_bus_message_append(i32* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %16, align 4
  %30 = icmp sge i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert_se(i32 %31)
  ret i32 1
}

declare dso_local i32 @log_info(i8*, i8*, i32) #1

declare dso_local i32 @sd_bus_message_append(i32*, i8*, i32) #1

declare dso_local i32 @assert_se(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

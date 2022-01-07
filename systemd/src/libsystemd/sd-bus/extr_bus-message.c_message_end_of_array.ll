; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-message.c_message_end_of_array.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-message.c_message_end_of_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_container = type { i64, i64, i64, i32* }

@SD_BUS_TYPE_ARRAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @message_end_of_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @message_end_of_array(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bus_container*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @assert(i32* %7)
  %9 = load i32*, i32** %4, align 8
  %10 = call %struct.bus_container* @message_get_last_container(i32* %9)
  store %struct.bus_container* %10, %struct.bus_container** %6, align 8
  %11 = load %struct.bus_container*, %struct.bus_container** %6, align 8
  %12 = getelementptr inbounds %struct.bus_container, %struct.bus_container* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SD_BUS_TYPE_ARRAY, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = call i64 @BUS_MESSAGE_IS_GVARIANT(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.bus_container*, %struct.bus_container** %6, align 8
  %24 = getelementptr inbounds %struct.bus_container, %struct.bus_container* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp uge i64 %22, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %3, align 4
  br label %46

28:                                               ; preds = %17
  %29 = load %struct.bus_container*, %struct.bus_container** %6, align 8
  %30 = getelementptr inbounds %struct.bus_container, %struct.bus_container* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @assert(i32* %31)
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.bus_container*, %struct.bus_container** %6, align 8
  %35 = getelementptr inbounds %struct.bus_container, %struct.bus_container* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.bus_container*, %struct.bus_container** %6, align 8
  %39 = getelementptr inbounds %struct.bus_container, %struct.bus_container* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @BUS_MESSAGE_BSWAP32(i32* %37, i32 %41)
  %43 = add i64 %36, %42
  %44 = icmp uge i64 %33, %43
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %28, %21, %16
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @assert(i32*) #1

declare dso_local %struct.bus_container* @message_get_last_container(i32*) #1

declare dso_local i64 @BUS_MESSAGE_IS_GVARIANT(i32*) #1

declare dso_local i64 @BUS_MESSAGE_BSWAP32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

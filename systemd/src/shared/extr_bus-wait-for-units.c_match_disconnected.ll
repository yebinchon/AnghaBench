; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_bus-wait-for-units.c_match_disconnected.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_bus-wait-for-units.c_match_disconnected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 (%struct.TYPE_8__*, i32, i32)* }

@.str = private unnamed_addr constant [38 x i8] c"Warning! D-Bus connection terminated.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i32*)* @match_disconnected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_disconnected(%struct.TYPE_8__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %7, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = call i32 @assert(%struct.TYPE_8__* %10)
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %13 = call i32 @assert(%struct.TYPE_8__* %12)
  %14 = call i32 @log_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %16 = call i32 @bus_wait_for_units_clear(%struct.TYPE_8__* %15)
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i32 (%struct.TYPE_8__*, i32, i32)*, i32 (%struct.TYPE_8__*, i32, i32)** %18, align 8
  %20 = icmp ne i32 (%struct.TYPE_8__*, i32, i32)* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %3
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i32 (%struct.TYPE_8__*, i32, i32)*, i32 (%struct.TYPE_8__*, i32, i32)** %23, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 %24(%struct.TYPE_8__* %25, i32 0, i32 %28)
  br label %34

30:                                               ; preds = %3
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = call i32 @sd_bus_message_get_bus(%struct.TYPE_8__* %31)
  %33 = call i32 @sd_bus_close(i32 %32)
  br label %34

34:                                               ; preds = %30, %21
  ret i32 0
}

declare dso_local i32 @assert(%struct.TYPE_8__*) #1

declare dso_local i32 @log_error(i8*) #1

declare dso_local i32 @bus_wait_for_units_clear(%struct.TYPE_8__*) #1

declare dso_local i32 @sd_bus_close(i32) #1

declare dso_local i32 @sd_bus_message_get_bus(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

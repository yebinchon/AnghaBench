; ModuleID = '/home/carl/AnghaBench/systemd/src/machine/extr_machined-dbus.c_match_unit_removed.c'
source_filename = "/home/carl/AnghaBench/systemd/src/machine/extr_machined-dbus.c_match_unit_removed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"so\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @match_unit_removed(%struct.TYPE_6__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %10, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = call i32 @assert(%struct.TYPE_6__* %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %18 = call i32 @assert(%struct.TYPE_6__* %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = call i32 @sd_bus_message_read(%struct.TYPE_6__* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %9, i8** %8)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @bus_log_parse_error(i32 %24)
  store i32 0, i32* %4, align 4
  br label %38

26:                                               ; preds = %3
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = call i32* @hashmap_get(i32 %29, i8* %30)
  store i32* %31, i32** %11, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %38

35:                                               ; preds = %26
  %36 = load i32*, i32** %11, align 8
  %37 = call i32 @machine_add_to_gc_queue(i32* %36)
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %34, %23
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @assert(%struct.TYPE_6__*) #1

declare dso_local i32 @sd_bus_message_read(%struct.TYPE_6__*, i8*, i8**, i8**) #1

declare dso_local i32 @bus_log_parse_error(i32) #1

declare dso_local i32* @hashmap_get(i32, i8*) #1

declare dso_local i32 @machine_add_to_gc_queue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/systemd/src/machine/extr_machine-dbus.c_bus_machine_method_terminate.c'
source_filename = "/home/carl/AnghaBench/systemd/src/machine/extr_machine-dbus.c_bus_machine_method_terminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@CAP_KILL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"org.freedesktop.machine1.manage-machines\00", align 1
@UID_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_machine_method_terminate(%struct.TYPE_10__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %8, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = call i32 @assert(%struct.TYPE_10__* %12)
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %15 = call i32 @assert(%struct.TYPE_10__* %14)
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = load i32, i32* @CAP_KILL, align 4
  %18 = load i32, i32* @UID_INVALID, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @bus_verify_polkit_async(%struct.TYPE_10__* %16, i32 %17, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32* null, i32 0, i32 %18, i32* %22, i32* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %4, align 4
  br label %43

29:                                               ; preds = %3
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 1, i32* %4, align 4
  br label %43

33:                                               ; preds = %29
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %35 = call i32 @machine_stop(%struct.TYPE_10__* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %43

40:                                               ; preds = %33
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %42 = call i32 @sd_bus_reply_method_return(%struct.TYPE_10__* %41, i32* null)
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %40, %38, %32, %27
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @assert(%struct.TYPE_10__*) #1

declare dso_local i32 @bus_verify_polkit_async(%struct.TYPE_10__*, i32, i8*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @machine_stop(%struct.TYPE_10__*) #1

declare dso_local i32 @sd_bus_reply_method_return(%struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

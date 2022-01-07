; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_sd-bus.c_process_message.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_sd-bus.c_process_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_21__*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_21__*)* @process_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_message(%struct.TYPE_21__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %4, align 8
  %6 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %7 = call i32 @assert(%struct.TYPE_21__* %6)
  %8 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %9 = call i32 @assert(%struct.TYPE_21__* %8)
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  store %struct.TYPE_21__* %10, %struct.TYPE_21__** %12, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 8
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %18 = call i32 @log_debug_bus_message(%struct.TYPE_21__* %17)
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %21 = call i32 @process_hello(%struct.TYPE_21__* %19, %struct.TYPE_21__* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %64

25:                                               ; preds = %2
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %28 = call i32 @process_reply(%struct.TYPE_21__* %26, %struct.TYPE_21__* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %64

32:                                               ; preds = %25
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %35 = call i32 @process_fd_check(%struct.TYPE_21__* %33, %struct.TYPE_21__* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %64

39:                                               ; preds = %32
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %42 = call i32 @process_filter(%struct.TYPE_21__* %40, %struct.TYPE_21__* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %64

46:                                               ; preds = %39
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %49 = call i32 @process_match(%struct.TYPE_21__* %47, %struct.TYPE_21__* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %64

53:                                               ; preds = %46
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %56 = call i32 @process_builtin(%struct.TYPE_21__* %54, %struct.TYPE_21__* %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %64

60:                                               ; preds = %53
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %63 = call i32 @bus_process_object(%struct.TYPE_21__* %61, %struct.TYPE_21__* %62)
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %60, %59, %52, %45, %38, %31, %24
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 0
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %66, align 8
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @assert(%struct.TYPE_21__*) #1

declare dso_local i32 @log_debug_bus_message(%struct.TYPE_21__*) #1

declare dso_local i32 @process_hello(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @process_reply(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @process_fd_check(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @process_filter(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @process_match(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @process_builtin(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @bus_process_object(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-event/extr_test-event.c_maybe_exit.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-event/extr_test-event.c_maybe_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inotify_context = type { i32, i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inotify_context*, %struct.inotify_context*)* @maybe_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maybe_exit(%struct.inotify_context* %0, %struct.inotify_context* %1) #0 {
  %3 = alloca %struct.inotify_context*, align 8
  %4 = alloca %struct.inotify_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.inotify_context* %0, %struct.inotify_context** %3, align 8
  store %struct.inotify_context* %1, %struct.inotify_context** %4, align 8
  %7 = load %struct.inotify_context*, %struct.inotify_context** %3, align 8
  %8 = call i32 @assert(%struct.inotify_context* %7)
  %9 = load %struct.inotify_context*, %struct.inotify_context** %4, align 8
  %10 = call i32 @assert(%struct.inotify_context* %9)
  %11 = load %struct.inotify_context*, %struct.inotify_context** %4, align 8
  %12 = getelementptr inbounds %struct.inotify_context, %struct.inotify_context* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %61

16:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %54, %16
  %18 = load i32, i32* %5, align 4
  %19 = icmp ult i32 %18, 3
  br i1 %19, label %20, label %57

20:                                               ; preds = %17
  %21 = load %struct.inotify_context*, %struct.inotify_context** %4, align 8
  %22 = getelementptr inbounds %struct.inotify_context, %struct.inotify_context* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = shl i32 1, %24
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %54

29:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %50, %29
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.inotify_context*, %struct.inotify_context** %4, align 8
  %33 = getelementptr inbounds %struct.inotify_context, %struct.inotify_context* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ult i32 %31, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %30
  %37 = load %struct.inotify_context*, %struct.inotify_context** %4, align 8
  %38 = getelementptr inbounds %struct.inotify_context, %struct.inotify_context* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = shl i32 1, %44
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %36
  br label %61

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %30

53:                                               ; preds = %30
  br label %54

54:                                               ; preds = %53, %28
  %55 = load i32, i32* %5, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %17

57:                                               ; preds = %17
  %58 = load %struct.inotify_context*, %struct.inotify_context** %3, align 8
  %59 = call i32 @sd_event_source_get_event(%struct.inotify_context* %58)
  %60 = call i32 @sd_event_exit(i32 %59, i32 0)
  br label %61

61:                                               ; preds = %57, %48, %15
  ret void
}

declare dso_local i32 @assert(%struct.inotify_context*) #1

declare dso_local i32 @sd_event_exit(i32, i32) #1

declare dso_local i32 @sd_event_source_get_event(%struct.inotify_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

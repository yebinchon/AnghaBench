; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_bar.c_bar_run.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_bar.c_bar_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar = type { i32, i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { %struct.swaybar*, i32 }
%struct.TYPE_3__ = type { i32 }

@POLLIN = common dso_local global i32 0, align 4
@display_in = common dso_local global i32 0, align 4
@ipc_in = common dso_local global i32 0, align 4
@status_in = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@tray_in = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bar_run(%struct.swaybar* %0) #0 {
  %2 = alloca %struct.swaybar*, align 8
  store %struct.swaybar* %0, %struct.swaybar** %2, align 8
  %3 = load %struct.swaybar*, %struct.swaybar** %2, align 8
  %4 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.swaybar*, %struct.swaybar** %2, align 8
  %7 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @wl_display_get_fd(i32 %8)
  %10 = load i32, i32* @POLLIN, align 4
  %11 = load i32, i32* @display_in, align 4
  %12 = load %struct.swaybar*, %struct.swaybar** %2, align 8
  %13 = call i32 @loop_add_fd(i32 %5, i32 %9, i32 %10, i32 %11, %struct.swaybar* %12)
  %14 = load %struct.swaybar*, %struct.swaybar** %2, align 8
  %15 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.swaybar*, %struct.swaybar** %2, align 8
  %18 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @POLLIN, align 4
  %21 = load i32, i32* @ipc_in, align 4
  %22 = load %struct.swaybar*, %struct.swaybar** %2, align 8
  %23 = call i32 @loop_add_fd(i32 %16, i32 %19, i32 %20, i32 %21, %struct.swaybar* %22)
  %24 = load %struct.swaybar*, %struct.swaybar** %2, align 8
  %25 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %24, i32 0, i32 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %28, label %41

28:                                               ; preds = %1
  %29 = load %struct.swaybar*, %struct.swaybar** %2, align 8
  %30 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.swaybar*, %struct.swaybar** %2, align 8
  %33 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %32, i32 0, i32 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @POLLIN, align 4
  %38 = load i32, i32* @status_in, align 4
  %39 = load %struct.swaybar*, %struct.swaybar** %2, align 8
  %40 = call i32 @loop_add_fd(i32 %31, i32 %36, i32 %37, i32 %38, %struct.swaybar* %39)
  br label %41

41:                                               ; preds = %28, %1
  br label %42

42:                                               ; preds = %58, %41
  %43 = load %struct.swaybar*, %struct.swaybar** %2, align 8
  %44 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %42
  store i64 0, i64* @errno, align 8
  %48 = load %struct.swaybar*, %struct.swaybar** %2, align 8
  %49 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @wl_display_flush(i32 %50)
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load i64, i64* @errno, align 8
  %55 = load i64, i64* @EAGAIN, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %63

58:                                               ; preds = %53, %47
  %59 = load %struct.swaybar*, %struct.swaybar** %2, align 8
  %60 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @loop_poll(i32 %61)
  br label %42

63:                                               ; preds = %57, %42
  ret void
}

declare dso_local i32 @loop_add_fd(i32, i32, i32, i32, %struct.swaybar*) #1

declare dso_local i32 @wl_display_get_fd(i32) #1

declare dso_local i32 @wl_display_flush(i32) #1

declare dso_local i32 @loop_poll(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

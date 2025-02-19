; ModuleID = '/home/carl/AnghaBench/tig/src/extr_watch.c_watch_update.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_watch.c_watch_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watch = type { %struct.watch* }

@WATCH_NONE = common dso_local global i32 0, align 4
@watches = common dso_local global %struct.watch* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @watch_update(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.watch*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @WATCH_NONE, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.watch*, %struct.watch** @watches, align 8
  store %struct.watch* %6, %struct.watch** %4, align 8
  br label %7

7:                                                ; preds = %15, %1
  %8 = load %struct.watch*, %struct.watch** %4, align 8
  %9 = icmp ne %struct.watch* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %7
  %11 = load %struct.watch*, %struct.watch** %4, align 8
  %12 = call i32 @watch_unchanged_triggers(%struct.watch* %11)
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %10
  %16 = load %struct.watch*, %struct.watch** %4, align 8
  %17 = getelementptr inbounds %struct.watch, %struct.watch* %16, i32 0, i32 0
  %18 = load %struct.watch*, %struct.watch** %17, align 8
  store %struct.watch* %18, %struct.watch** %4, align 8
  br label %7

19:                                               ; preds = %7
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @WATCH_NONE, align 4
  %23 = call i32 @watch_update_event(i32 %20, i32 %21, i32 %22)
  ret i32 %23
}

declare dso_local i32 @watch_unchanged_triggers(%struct.watch*) #1

declare dso_local i32 @watch_update_event(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

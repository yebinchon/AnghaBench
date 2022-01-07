; ModuleID = '/home/carl/AnghaBench/tig/src/extr_watch.c_watch_apply_changes.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_watch.c_watch_apply_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watch = type { i32, i32, i32, %struct.watch* }

@watches = common dso_local global %struct.watch* null, align 8
@WATCH_EVENT_AFTER_COMMAND = common dso_local global i32 0, align 4
@WATCH_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.watch*, i32, i32)* @watch_apply_changes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @watch_apply_changes(%struct.watch* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.watch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.watch*, align 8
  %8 = alloca i32, align 4
  store %struct.watch* %0, %struct.watch** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @watch_no_refresh(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %54

13:                                               ; preds = %3
  %14 = load %struct.watch*, %struct.watch** @watches, align 8
  store %struct.watch* %14, %struct.watch** %7, align 8
  br label %15

15:                                               ; preds = %50, %13
  %16 = load %struct.watch*, %struct.watch** %7, align 8
  %17 = icmp ne %struct.watch* %16, null
  br i1 %17, label %18, label %54

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.watch*, %struct.watch** %7, align 8
  %21 = getelementptr inbounds %struct.watch, %struct.watch* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %19, %22
  store i32 %23, i32* %8, align 4
  %24 = load %struct.watch*, %struct.watch** %4, align 8
  %25 = load %struct.watch*, %struct.watch** %7, align 8
  %26 = icmp eq %struct.watch* %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %18
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.watch*, %struct.watch** %4, align 8
  %30 = getelementptr inbounds %struct.watch, %struct.watch* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %50

33:                                               ; preds = %18
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @WATCH_EVENT_AFTER_COMMAND, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load i32, i32* @WATCH_NONE, align 4
  %39 = load %struct.watch*, %struct.watch** %7, align 8
  %40 = getelementptr inbounds %struct.watch, %struct.watch* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.watch*, %struct.watch** %7, align 8
  %42 = getelementptr inbounds %struct.watch, %struct.watch* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %37, %33
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.watch*, %struct.watch** %7, align 8
  %47 = getelementptr inbounds %struct.watch, %struct.watch* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %44, %27
  %51 = load %struct.watch*, %struct.watch** %7, align 8
  %52 = getelementptr inbounds %struct.watch, %struct.watch* %51, i32 0, i32 3
  %53 = load %struct.watch*, %struct.watch** %52, align 8
  store %struct.watch* %53, %struct.watch** %7, align 8
  br label %15

54:                                               ; preds = %12, %15
  ret void
}

declare dso_local i64 @watch_no_refresh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/tig/src/extr_watch.c_watch_unregister.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_watch.c_watch_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watch = type { %struct.watch* }

@watches = common dso_local global %struct.watch* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @watch_unregister(%struct.watch* %0) #0 {
  %2 = alloca %struct.watch*, align 8
  %3 = alloca %struct.watch*, align 8
  %4 = alloca %struct.watch*, align 8
  store %struct.watch* %0, %struct.watch** %2, align 8
  store %struct.watch* null, %struct.watch** %4, align 8
  %5 = load %struct.watch*, %struct.watch** @watches, align 8
  store %struct.watch* %5, %struct.watch** %3, align 8
  br label %6

6:                                                ; preds = %28, %1
  %7 = load %struct.watch*, %struct.watch** %3, align 8
  %8 = icmp ne %struct.watch* %7, null
  br i1 %8, label %9, label %33

9:                                                ; preds = %6
  %10 = load %struct.watch*, %struct.watch** %2, align 8
  %11 = load %struct.watch*, %struct.watch** %3, align 8
  %12 = icmp ne %struct.watch* %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %28

14:                                               ; preds = %9
  %15 = load %struct.watch*, %struct.watch** %4, align 8
  %16 = icmp ne %struct.watch* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = load %struct.watch*, %struct.watch** %2, align 8
  %19 = getelementptr inbounds %struct.watch, %struct.watch* %18, i32 0, i32 0
  %20 = load %struct.watch*, %struct.watch** %19, align 8
  store %struct.watch* %20, %struct.watch** @watches, align 8
  br label %27

21:                                               ; preds = %14
  %22 = load %struct.watch*, %struct.watch** %2, align 8
  %23 = getelementptr inbounds %struct.watch, %struct.watch* %22, i32 0, i32 0
  %24 = load %struct.watch*, %struct.watch** %23, align 8
  %25 = load %struct.watch*, %struct.watch** %4, align 8
  %26 = getelementptr inbounds %struct.watch, %struct.watch* %25, i32 0, i32 0
  store %struct.watch* %24, %struct.watch** %26, align 8
  br label %27

27:                                               ; preds = %21, %17
  br label %33

28:                                               ; preds = %13
  %29 = load %struct.watch*, %struct.watch** %3, align 8
  store %struct.watch* %29, %struct.watch** %4, align 8
  %30 = load %struct.watch*, %struct.watch** %3, align 8
  %31 = getelementptr inbounds %struct.watch, %struct.watch* %30, i32 0, i32 0
  %32 = load %struct.watch*, %struct.watch** %31, align 8
  store %struct.watch* %32, %struct.watch** %3, align 8
  br label %6

33:                                               ; preds = %27, %6
  %34 = load %struct.watch*, %struct.watch** %2, align 8
  %35 = call i32 @memset(%struct.watch* %34, i32 0, i32 8)
  ret void
}

declare dso_local i32 @memset(%struct.watch*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

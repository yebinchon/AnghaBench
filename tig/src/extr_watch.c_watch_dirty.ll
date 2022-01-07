; ModuleID = '/home/carl/AnghaBench/tig/src/extr_watch.c_watch_dirty.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_watch.c_watch_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watch = type { i32, i32 }

@WATCH_INDEX = common dso_local global i32 0, align 4
@WATCH_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @watch_dirty(%struct.watch* %0) #0 {
  %2 = alloca %struct.watch*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.watch* %0, %struct.watch** %2, align 8
  %8 = load %struct.watch*, %struct.watch** %2, align 8
  %9 = getelementptr inbounds %struct.watch, %struct.watch* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @WATCH_INDEX, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %3, align 4
  %13 = load %struct.watch*, %struct.watch** %2, align 8
  %14 = getelementptr inbounds %struct.watch, %struct.watch* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @WATCH_INDEX, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @watch_trigger_unmask(i32 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.watch*, %struct.watch** %2, align 8
  %22 = getelementptr inbounds %struct.watch, %struct.watch* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @WATCH_INDEX, align 4
  %25 = call i32 @watch_trigger_unmask(i32 %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @WATCH_NONE, align 4
  %34 = load %struct.watch*, %struct.watch** %2, align 8
  %35 = getelementptr inbounds %struct.watch, %struct.watch* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %7, align 4
  ret i32 %36
}

declare dso_local i32 @watch_trigger_unmask(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

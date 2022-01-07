; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-nexthop.c_nexthop_get.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-nexthop.c_nexthop_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nexthop_get(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1, %struct.TYPE_9__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__**, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__** %2, %struct.TYPE_9__*** %7, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %10 = call i32 @assert(%struct.TYPE_9__* %9)
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %12 = call i32 @assert(%struct.TYPE_9__* %11)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %17 = call %struct.TYPE_9__* @set_get(i32 %15, %struct.TYPE_9__* %16)
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %8, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %19 = icmp ne %struct.TYPE_9__* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %22 = icmp ne %struct.TYPE_9__** %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %25 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %25, align 8
  br label %26

26:                                               ; preds = %23, %20
  store i32 1, i32* %4, align 4
  br label %45

27:                                               ; preds = %3
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = call %struct.TYPE_9__* @set_get(i32 %30, %struct.TYPE_9__* %31)
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %8, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %34 = icmp ne %struct.TYPE_9__* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %27
  %36 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %37 = icmp ne %struct.TYPE_9__** %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %40 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %40, align 8
  br label %41

41:                                               ; preds = %38, %35
  store i32 0, i32* %4, align 4
  br label %45

42:                                               ; preds = %27
  %43 = load i32, i32* @ENOENT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %42, %41, %26
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @assert(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @set_get(i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

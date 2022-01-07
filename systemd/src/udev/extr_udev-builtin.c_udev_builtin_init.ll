; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin.c_udev_builtin_init.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin.c_udev_builtin_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)* }

@initialized = common dso_local global i32 0, align 4
@_UDEV_BUILTIN_MAX = common dso_local global i32 0, align 4
@builtins = common dso_local global %struct.TYPE_2__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udev_builtin_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @initialized, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %40

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %36, %5
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @_UDEV_BUILTIN_MAX, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %39

10:                                               ; preds = %6
  %11 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @builtins, align 8
  %12 = load i32, i32* %1, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %11, i64 %13
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %35

17:                                               ; preds = %10
  %18 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @builtins, align 8
  %19 = load i32, i32* %1, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %18, i64 %20
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (...)*, i32 (...)** %23, align 8
  %25 = icmp ne i32 (...)* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %17
  %27 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @builtins, align 8
  %28 = load i32, i32* %1, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %27, i64 %29
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (...)*, i32 (...)** %32, align 8
  %34 = call i32 (...) %33()
  br label %35

35:                                               ; preds = %26, %17, %10
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %1, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %1, align 4
  br label %6

39:                                               ; preds = %6
  store i32 1, i32* @initialized, align 4
  br label %40

40:                                               ; preds = %39, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

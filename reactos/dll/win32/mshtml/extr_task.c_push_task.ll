; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_task.c_push_task.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_task.c_push_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)*, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@WM_PROCESSTASK = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @push_task(%struct.TYPE_11__* %0, i32 (%struct.TYPE_11__*)* %1, i32 (%struct.TYPE_11__*)* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32 (%struct.TYPE_11__*)*, align 8
  %8 = alloca i32 (%struct.TYPE_11__*)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32 (%struct.TYPE_11__*)* %1, i32 (%struct.TYPE_11__*)** %7, align 8
  store i32 (%struct.TYPE_11__*)* %2, i32 (%struct.TYPE_11__*)** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @TRUE, align 4
  %12 = call %struct.TYPE_10__* @get_thread_data(i32 %11)
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %10, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %14 = icmp ne %struct.TYPE_10__* %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %4
  %16 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %8, align 8
  %17 = icmp ne i32 (%struct.TYPE_11__*)* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %8, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %21 = call i32 %19(%struct.TYPE_11__* %20)
  br label %25

22:                                               ; preds = %15
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %24 = call i32 @heap_free(%struct.TYPE_11__* %23)
  br label %25

25:                                               ; preds = %22, %18
  %26 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %26, i32* %5, align 4
  br label %54

27:                                               ; preds = %4
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %7, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 2
  store i32 (%struct.TYPE_11__*)* %31, i32 (%struct.TYPE_11__*)** %33, align 8
  %34 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %8, align 8
  %35 = icmp ne i32 (%struct.TYPE_11__*)* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %8, align 8
  br label %39

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 (%struct.TYPE_11__*)* [ %37, %36 ], [ @default_task_destr, %38 ]
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  store i32 (%struct.TYPE_11__*)* %40, i32 (%struct.TYPE_11__*)** %42, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = call i32 @list_add_tail(i32* %44, i32* %46)
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @WM_PROCESSTASK, align 4
  %52 = call i32 @PostMessageW(i32 %50, i32 %51, i32 0, i32 0)
  %53 = load i32, i32* @S_OK, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %39, %25
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local %struct.TYPE_10__* @get_thread_data(i32) #1

declare dso_local i32 @heap_free(%struct.TYPE_11__*) #1

declare dso_local i32 @default_task_destr(%struct.TYPE_11__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @PostMessageW(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

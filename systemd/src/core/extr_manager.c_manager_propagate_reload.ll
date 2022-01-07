; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_propagate_reload.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_propagate_reload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@_JOB_MODE_MAX = common dso_local global i32 0, align 4
@JOB_ISOLATE = common dso_local global i32 0, align 4
@JOB_REPLACE_IRREVERSIBLY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@JOB_NOP = common dso_local global i32 0, align 4
@JOB_IGNORE_DEPENDENCIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @manager_propagate_reload(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = ptrtoint i32* %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32*, i32** %7, align 8
  %16 = ptrtoint i32* %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @_JOB_MODE_MAX, align 4
  %20 = icmp slt i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @JOB_ISOLATE, align 4
  %25 = icmp ne i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @JOB_REPLACE_IRREVERSIBLY, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call %struct.TYPE_8__* @transaction_new(i32 %31)
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %11, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %34 = icmp ne %struct.TYPE_8__* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %4
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %76

38:                                               ; preds = %4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %40 = load i32, i32* @JOB_NOP, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @transaction_add_job_and_dependencies(%struct.TYPE_8__* %39, i32 %40, i32* %41, i32* null, i32 0, i32 0, i32 1, i32 1, i32* %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %70

47:                                               ; preds = %38
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @JOB_IGNORE_DEPENDENCIES, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @transaction_add_propagate_reload_jobs(%struct.TYPE_8__* %48, i32* %49, i32 %52, i32 %56, i32* %57)
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @transaction_activate(%struct.TYPE_8__* %59, i32* %60, i32 %61, i32* null, i32* %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %47
  br label %70

67:                                               ; preds = %47
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %69 = call i32 @transaction_free(%struct.TYPE_8__* %68)
  store i32 0, i32* %5, align 4
  br label %76

70:                                               ; preds = %66, %46
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %72 = call i32 @transaction_abort(%struct.TYPE_8__* %71)
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %74 = call i32 @transaction_free(%struct.TYPE_8__* %73)
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %70, %67, %35
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_8__* @transaction_new(i32) #1

declare dso_local i32 @transaction_add_job_and_dependencies(%struct.TYPE_8__*, i32, i32*, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @transaction_add_propagate_reload_jobs(%struct.TYPE_8__*, i32*, i32, i32, i32*) #1

declare dso_local i32 @transaction_activate(%struct.TYPE_8__*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @transaction_free(%struct.TYPE_8__*) #1

declare dso_local i32 @transaction_abort(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/vlc/src/interface/extr_dialog.c_dialog_wait.c'
source_filename = "/home/carl/AnghaBench/vlc/src/interface/extr_dialog.c_dialog_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__, i64, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.dialog_answer = type { i32 }
%struct.dialog_i11e_context = type { %struct.TYPE_10__*, %struct.TYPE_9__* }

@dialog_wait_interrupted = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, i32, %struct.dialog_answer*)* @dialog_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dialog_wait(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, i32 %2, %struct.dialog_answer* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dialog_answer*, align 8
  %9 = alloca %struct.dialog_i11e_context, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.dialog_answer* %3, %struct.dialog_answer** %8, align 8
  %11 = getelementptr inbounds %struct.dialog_i11e_context, %struct.dialog_i11e_context* %9, i32 0, i32 0
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.dialog_i11e_context, %struct.dialog_i11e_context* %9, i32 0, i32 1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %13, align 8
  %15 = load i32, i32* @dialog_wait_interrupted, align 4
  %16 = call i32 @vlc_interrupt_register(i32 %15, %struct.dialog_i11e_context* %9)
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = call i32 @vlc_mutex_lock(i32* %18)
  br label %20

20:                                               ; preds = %33, %4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %25, %20
  %32 = phi i1 [ false, %20 ], [ %30, %25 ]
  br i1 %32, label %33, label %39

33:                                               ; preds = %31
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = call i32 @vlc_cond_wait(i32* %35, i32* %37)
  br label %20

39:                                               ; preds = %31
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 0, i32* %10, align 4
  br label %63

45:                                               ; preds = %39
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %53, i32* %10, align 4
  br label %62

54:                                               ; preds = %45
  store i32 1, i32* %10, align 4
  %55 = load %struct.dialog_answer*, %struct.dialog_answer** %8, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = call i32 @memcpy(%struct.dialog_answer* %55, %struct.TYPE_11__* %57, i32 4)
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = call i32 @memset(%struct.TYPE_11__* %60, i32 0, i32 4)
  br label %62

62:                                               ; preds = %54, %52
  br label %63

63:                                               ; preds = %62, %44
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = call i32 @vlc_mutex_unlock(i32* %65)
  %67 = call i32 (...) @vlc_interrupt_unregister()
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = call i32 @vlc_mutex_lock(i32* %69)
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %73 = call i32 @dialog_remove_locked(%struct.TYPE_9__* %71, %struct.TYPE_10__* %72)
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = call i32 @vlc_mutex_unlock(i32* %75)
  %77 = load i32, i32* %10, align 4
  ret i32 %77
}

declare dso_local i32 @vlc_interrupt_register(i32, %struct.dialog_i11e_context*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_cond_wait(i32*, i32*) #1

declare dso_local i32 @memcpy(%struct.dialog_answer*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @vlc_interrupt_unregister(...) #1

declare dso_local i32 @dialog_remove_locked(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

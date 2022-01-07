; ModuleID = '/home/carl/AnghaBench/vlc/src/os2/extr_thread.c_vlc_threadvar_delete.c'
source_filename = "/home/carl/AnghaBench/vlc/src/os2/extr_thread.c_vlc_threadvar_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.vlc_threadvar = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }

@super_mutex = common dso_local global i32 0, align 4
@vlc_threadvar_last = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlc_threadvar_delete(%struct.vlc_threadvar** %0) #0 {
  %2 = alloca %struct.vlc_threadvar**, align 8
  %3 = alloca %struct.vlc_threadvar*, align 8
  store %struct.vlc_threadvar** %0, %struct.vlc_threadvar*** %2, align 8
  %4 = load %struct.vlc_threadvar**, %struct.vlc_threadvar*** %2, align 8
  %5 = load %struct.vlc_threadvar*, %struct.vlc_threadvar** %4, align 8
  store %struct.vlc_threadvar* %5, %struct.vlc_threadvar** %3, align 8
  %6 = call i32 @vlc_mutex_lock(i32* @super_mutex)
  %7 = load %struct.vlc_threadvar*, %struct.vlc_threadvar** %3, align 8
  %8 = getelementptr inbounds %struct.vlc_threadvar, %struct.vlc_threadvar* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.vlc_threadvar*, %struct.vlc_threadvar** %3, align 8
  %13 = getelementptr inbounds %struct.vlc_threadvar, %struct.vlc_threadvar* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load %struct.vlc_threadvar*, %struct.vlc_threadvar** %3, align 8
  %16 = getelementptr inbounds %struct.vlc_threadvar, %struct.vlc_threadvar* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %18, align 8
  br label %19

19:                                               ; preds = %11, %1
  %20 = load %struct.vlc_threadvar*, %struct.vlc_threadvar** %3, align 8
  %21 = getelementptr inbounds %struct.vlc_threadvar, %struct.vlc_threadvar* %20, i32 0, i32 2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = icmp ne %struct.TYPE_3__* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load %struct.vlc_threadvar*, %struct.vlc_threadvar** %3, align 8
  %26 = getelementptr inbounds %struct.vlc_threadvar, %struct.vlc_threadvar* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load %struct.vlc_threadvar*, %struct.vlc_threadvar** %3, align 8
  %29 = getelementptr inbounds %struct.vlc_threadvar, %struct.vlc_threadvar* %28, i32 0, i32 2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %31, align 8
  br label %36

32:                                               ; preds = %19
  %33 = load %struct.vlc_threadvar*, %struct.vlc_threadvar** %3, align 8
  %34 = getelementptr inbounds %struct.vlc_threadvar, %struct.vlc_threadvar* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** @vlc_threadvar_last, align 8
  br label %36

36:                                               ; preds = %32, %24
  %37 = call i32 @vlc_mutex_unlock(i32* @super_mutex)
  %38 = load %struct.vlc_threadvar*, %struct.vlc_threadvar** %3, align 8
  %39 = getelementptr inbounds %struct.vlc_threadvar, %struct.vlc_threadvar* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @DosFreeThreadLocalMemory(i32 %40)
  %42 = load %struct.vlc_threadvar*, %struct.vlc_threadvar** %3, align 8
  %43 = call i32 @free(%struct.vlc_threadvar* %42)
  ret void
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @DosFreeThreadLocalMemory(i32) #1

declare dso_local i32 @free(%struct.vlc_threadvar*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

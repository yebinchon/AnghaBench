; ModuleID = '/home/carl/AnghaBench/vlc/src/win32/extr_thread.c_vlc_threadvars_cleanup.c'
source_filename = "/home/carl/AnghaBench/vlc/src/win32/extr_thread.c_vlc_threadvars_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i8*)*, %struct.TYPE_5__* }

@super_mutex = common dso_local global i32 0, align 4
@vlc_threadvar_last = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vlc_threadvars_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlc_threadvars_cleanup() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca i8*, align 8
  br label %3

3:                                                ; preds = %19, %0
  %4 = call i32 @EnterCriticalSection(i32* @super_mutex)
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vlc_threadvar_last, align 8
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %1, align 8
  br label %6

6:                                                ; preds = %29, %3
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %8 = icmp ne %struct.TYPE_5__* %7, null
  br i1 %8, label %9, label %33

9:                                                ; preds = %6
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %11 = call i8* @vlc_threadvar_get(%struct.TYPE_5__* %10)
  store i8* %11, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %9
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32 (i8*)*, i32 (i8*)** %16, align 8
  %18 = icmp ne i32 (i8*)* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = call i32 @LeaveCriticalSection(i32* @super_mutex)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %22 = call i32 @vlc_threadvar_set(%struct.TYPE_5__* %21, i32* null)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32 (i8*)*, i32 (i8*)** %24, align 8
  %26 = load i8*, i8** %2, align 8
  %27 = call i32 %25(i8* %26)
  br label %3

28:                                               ; preds = %14, %9
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %1, align 8
  br label %6

33:                                               ; preds = %6
  %34 = call i32 @LeaveCriticalSection(i32* @super_mutex)
  ret void
}

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i8* @vlc_threadvar_get(%struct.TYPE_5__*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @vlc_threadvar_set(%struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

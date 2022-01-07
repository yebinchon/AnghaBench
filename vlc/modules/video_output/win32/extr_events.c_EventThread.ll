; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_events.c_EventThread.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_events.c_EventThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Win32 Vout EventThread terminating\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @EventThread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @EventThread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %4, align 8
  %10 = call i32 (...) @vlc_savecancel()
  store i32 %10, i32* %6, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 4
  %13 = call i32 @vlc_mutex_lock(i32* %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = call i64 @Win32VoutCreateWindow(%struct.TYPE_4__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 5
  %25 = call i32 @vlc_cond_signal(i32* %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 4
  %31 = call i32 @vlc_mutex_unlock(i32* %30)
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %20
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @vlc_restorecancel(i32 %35)
  store i8* null, i8** %2, align 8
  br label %59

37:                                               ; preds = %20
  br label %38

38:                                               ; preds = %47, %37
  %39 = call i32 @GetMessage(i32* %5, i32 0, i32 0, i32 0)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  %44 = call i64 @atomic_load(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41, %38
  br label %50

47:                                               ; preds = %41
  %48 = call i32 @TranslateMessage(i32* %5)
  %49 = call i32 @DispatchMessage(i32* %5)
  br label %38

50:                                               ; preds = %46
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @msg_Dbg(i32 %53, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = call i32 @Win32VoutCloseWindow(%struct.TYPE_4__* %55)
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @vlc_restorecancel(i32 %57)
  store i8* null, i8** %2, align 8
  br label %59

59:                                               ; preds = %50, %34
  %60 = load i8*, i8** %2, align 8
  ret i8* %60
}

declare dso_local i32 @vlc_savecancel(...) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i64 @Win32VoutCreateWindow(%struct.TYPE_4__*) #1

declare dso_local i32 @vlc_cond_signal(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @vlc_restorecancel(i32) #1

declare dso_local i32 @GetMessage(i32*, i32, i32, i32) #1

declare dso_local i64 @atomic_load(i32*) #1

declare dso_local i32 @TranslateMessage(i32*) #1

declare dso_local i32 @DispatchMessage(i32*) #1

declare dso_local i32 @msg_Dbg(i32, i8*) #1

declare dso_local i32 @Win32VoutCloseWindow(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

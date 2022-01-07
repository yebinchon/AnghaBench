; ModuleID = '/home/carl/AnghaBench/vlc/modules/services_discovery/extr_pulse.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/services_discovery/extr_pulse.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32*, i32* }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Audio capture\00", align 1
@PA_SUBSCRIPTION_MASK_SOURCE = common dso_local global i32 0, align 4
@ContextCallback = common dso_local global i32 0, align 4
@SourceCallback = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = bitcast i32* %9 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %4, align 8
  %11 = call %struct.TYPE_8__* @malloc(i32 24)
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %7, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %13 = icmp eq %struct.TYPE_8__* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %18, i32* %2, align 4
  br label %81

19:                                               ; preds = %1
  %20 = load i32*, i32** %3, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = call i32* @vlc_pa_connect(i32* %20, i32* %22)
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %28 = call i32 @free(%struct.TYPE_8__* %27)
  %29 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %29, i32* %2, align 4
  br label %81

30:                                               ; preds = %19
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %33, align 8
  %34 = call i32 @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  store i32* %37, i32** %39, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  store i32* null, i32** %41, align 8
  %42 = load i32, i32* @PA_SUBSCRIPTION_MASK_SOURCE, align 4
  store i32 %42, i32* %8, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @pa_threaded_mainloop_lock(i32 %45)
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* @ContextCallback, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = call i32 @pa_context_set_subscribe_callback(i32* %47, i32 %48, %struct.TYPE_7__* %49)
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32* @pa_context_subscribe(i32* %51, i32 %52, i32* null, i32* null)
  store i32* %53, i32** %5, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = icmp ne i32* %54, null
  %56 = zext i1 %55 to i32
  %57 = call i64 @likely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %30
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @pa_operation_unref(i32* %60)
  br label %62

62:                                               ; preds = %59, %30
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* @SourceCallback, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %66 = call i32* @pa_context_get_source_info_list(i32* %63, i32 %64, %struct.TYPE_7__* %65)
  store i32* %66, i32** %5, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = icmp ne i32* %67, null
  %69 = zext i1 %68 to i32
  %70 = call i64 @likely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %62
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @pa_operation_unref(i32* %73)
  br label %75

75:                                               ; preds = %72, %62
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @pa_threaded_mainloop_unlock(i32 %78)
  %80 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %75, %26, %17
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.TYPE_8__* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @vlc_pa_connect(i32*, i32*) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @pa_threaded_mainloop_lock(i32) #1

declare dso_local i32 @pa_context_set_subscribe_callback(i32*, i32, %struct.TYPE_7__*) #1

declare dso_local i32* @pa_context_subscribe(i32*, i32, i32*, i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @pa_operation_unref(i32*) #1

declare dso_local i32* @pa_context_get_source_info_list(i32*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @pa_threaded_mainloop_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

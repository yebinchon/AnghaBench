; ModuleID = '/home/carl/AnghaBench/vlc/src/modules/extr_bank.c_module_EndBank.c'
source_filename = "/home/carl/AnghaBench/vlc/src/modules/extr_bank.c_module_EndBank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32*, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_6__* }

@modules = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@vlc_plugins = common dso_local global %struct.TYPE_6__* null, align 8
@vlc_modcap_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @module_EndBank(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  store i32* null, i32** %4, align 8
  store i8* null, i8** %5, align 8
  %7 = load i32, i32* %2, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @vlc_mutex_lock(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @modules, i32 0, i32 1))
  br label %13

11:                                               ; preds = %1
  %12 = call i32 @vlc_mutex_assert(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @modules, i32 0, i32 1))
  br label %13

13:                                               ; preds = %11, %9
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @modules, i32 0, i32 0), align 8
  %15 = icmp sgt i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @modules, i32 0, i32 0), align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @modules, i32 0, i32 0), align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %13
  %22 = call i32 (...) @config_UnsortConfig()
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vlc_plugins, align 8
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %3, align 8
  %24 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @modules, i32 0, i32 3), align 8
  store i32* %24, i32** %4, align 8
  %25 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @modules, i32 0, i32 2), align 8
  %26 = bitcast i32* %25 to i8*
  store i8* %26, i8** %5, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** @vlc_plugins, align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @modules, i32 0, i32 3), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @modules, i32 0, i32 2), align 8
  br label %27

27:                                               ; preds = %21, %13
  %28 = call i32 @vlc_mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @modules, i32 0, i32 1))
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* @vlc_modcap_free, align 4
  %31 = call i32 @tdestroy(i8* %29, i32 %30)
  br label %32

32:                                               ; preds = %35, %27
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = icmp ne %struct.TYPE_6__* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %6, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %3, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = call i32 @module_Unmap(%struct.TYPE_6__* %40)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = call i32 @vlc_plugin_destroy(%struct.TYPE_6__* %42)
  br label %32

44:                                               ; preds = %32
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @block_ChainRelease(i32* %45)
  ret void
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_mutex_assert(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @config_UnsortConfig(...) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @tdestroy(i8*, i32) #1

declare dso_local i32 @module_Unmap(%struct.TYPE_6__*) #1

declare dso_local i32 @vlc_plugin_destroy(%struct.TYPE_6__*) #1

declare dso_local i32 @block_ChainRelease(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_dispatch.c_callhook.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_dispatch.c_callhook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32 (%struct.TYPE_17__*, %struct.TYPE_18__*)* }
%struct.TYPE_18__ = type { i32, i32, i32 }

@LUA_MINSTACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, i32, i32)* @callhook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @callhook(%struct.TYPE_17__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32 (%struct.TYPE_17__*, %struct.TYPE_18__*)*, align 8
  %9 = alloca %struct.TYPE_18__, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %11 = call %struct.TYPE_19__* @G(%struct.TYPE_17__* %10)
  store %struct.TYPE_19__* %11, %struct.TYPE_19__** %7, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 1
  %14 = load i32 (%struct.TYPE_17__*, %struct.TYPE_18__*)*, i32 (%struct.TYPE_17__*, %struct.TYPE_18__*)** %13, align 8
  store i32 (%struct.TYPE_17__*, %struct.TYPE_18__*)* %14, i32 (%struct.TYPE_17__*, %struct.TYPE_18__*)** %8, align 8
  %15 = load i32 (%struct.TYPE_17__*, %struct.TYPE_18__*)*, i32 (%struct.TYPE_17__*, %struct.TYPE_18__*)** %8, align 8
  %16 = icmp ne i32 (%struct.TYPE_17__*, %struct.TYPE_18__*)* %15, null
  br i1 %16, label %17, label %58

17:                                               ; preds = %3
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %19 = call i32 @hook_active(%struct.TYPE_19__* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %58, label %21

21:                                               ; preds = %17
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %23 = call i32 @lj_trace_abort(%struct.TYPE_19__* %22)
  %24 = load i32, i32* %5, align 4
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %6, align 4
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %30, 1
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @tvref(i32 %34)
  %36 = sub nsw i32 %31, %35
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %39 = load i64, i64* @LUA_MINSTACK, align 8
  %40 = add nsw i64 1, %39
  %41 = call i32 @lj_state_checkstack(%struct.TYPE_17__* %38, i64 %40)
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %43 = call i32 @hook_enter(%struct.TYPE_19__* %42)
  %44 = load i32 (%struct.TYPE_17__*, %struct.TYPE_18__*)*, i32 (%struct.TYPE_17__*, %struct.TYPE_18__*)** %8, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %46 = call i32 %44(%struct.TYPE_17__* %45, %struct.TYPE_18__* %9)
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %48 = call i32 @hook_active(%struct.TYPE_19__* %47)
  %49 = call i32 @lua_assert(i32 %48)
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %54 = call i32 @obj2gco(%struct.TYPE_17__* %53)
  %55 = call i32 @setgcref(i32 %52, i32 %54)
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %57 = call i32 @hook_leave(%struct.TYPE_19__* %56)
  br label %58

58:                                               ; preds = %21, %17, %3
  ret void
}

declare dso_local %struct.TYPE_19__* @G(%struct.TYPE_17__*) #1

declare dso_local i32 @hook_active(%struct.TYPE_19__*) #1

declare dso_local i32 @lj_trace_abort(%struct.TYPE_19__*) #1

declare dso_local i32 @tvref(i32) #1

declare dso_local i32 @lj_state_checkstack(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @hook_enter(%struct.TYPE_19__*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @setgcref(i32, i32) #1

declare dso_local i32 @obj2gco(%struct.TYPE_17__*) #1

declare dso_local i32 @hook_leave(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lib_jit.c_jit_profile_callback.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lib_jit.c_jit_profile_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_16__*)* }

@KEY_PROFILE_FUNC = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_16__*, i32, i32)* @jit_profile_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jit_profile_callback(%struct.TYPE_16__* %0, %struct.TYPE_16__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = call i32 @setlightudV(i32* %9, i8* bitcast (i32* @KEY_PROFILE_FUNC to i8*))
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %16 = call i32 @registry(%struct.TYPE_16__* %15)
  %17 = call i32 @tabV(i32 %16)
  %18 = call i32* @lj_tab_get(%struct.TYPE_16__* %14, i32 %17, i32* %9)
  store i32* %18, i32** %10, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = call i64 @tvisfunc(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %78

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %11, align 1
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @funcV(i32* %30)
  %32 = call i32 @setfuncV(%struct.TYPE_16__* %25, i32 %28, i32 %31)
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %39 = call i32 @setthreadV(%struct.TYPE_16__* %33, i32 %36, %struct.TYPE_16__* %38)
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @setintV(i32 %42, i32 %44)
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %52 = call i32 @lj_str_new(%struct.TYPE_16__* %51, i8* %11, i32 1)
  %53 = call i32 @setstrV(%struct.TYPE_16__* %46, i32 %49, i32 %52)
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %55 = call i32 @lua_pcall(%struct.TYPE_16__* %54, i32 3, i32 0, i32 0)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %22
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %60 = call %struct.TYPE_17__* @G(%struct.TYPE_16__* %59)
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %61, align 8
  %63 = icmp ne i32 (%struct.TYPE_16__*)* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %66 = call %struct.TYPE_17__* @G(%struct.TYPE_16__* %65)
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %67, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %70 = call i32 %68(%struct.TYPE_16__* %69)
  br label %71

71:                                               ; preds = %64, %58
  %72 = load i32, i32* @EXIT_FAILURE, align 4
  %73 = call i32 @exit(i32 %72) #3
  unreachable

74:                                               ; preds = %22
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %76 = call %struct.TYPE_17__* @G(%struct.TYPE_16__* %75)
  %77 = call i32 @lj_trace_abort(%struct.TYPE_17__* %76)
  br label %78

78:                                               ; preds = %74, %4
  ret void
}

declare dso_local i32 @setlightudV(i32*, i8*) #1

declare dso_local i32* @lj_tab_get(%struct.TYPE_16__*, i32, i32*) #1

declare dso_local i32 @tabV(i32) #1

declare dso_local i32 @registry(%struct.TYPE_16__*) #1

declare dso_local i64 @tvisfunc(i32*) #1

declare dso_local i32 @setfuncV(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @funcV(i32*) #1

declare dso_local i32 @setthreadV(%struct.TYPE_16__*, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @setintV(i32, i32) #1

declare dso_local i32 @setstrV(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @lj_str_new(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local i32 @lua_pcall(%struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_17__* @G(%struct.TYPE_16__*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @lj_trace_abort(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

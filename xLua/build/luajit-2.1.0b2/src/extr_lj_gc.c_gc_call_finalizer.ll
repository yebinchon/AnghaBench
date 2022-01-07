; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_gc.c_gc_call_finalizer.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_gc.c_gc_call_finalizer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_22__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }

@LJ_MAX_MEM = common dso_local global i32 0, align 4
@LJ_FR2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, %struct.TYPE_20__*, i32*, %struct.TYPE_22__*)* @gc_call_finalizer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_call_finalizer(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1, i32* %2, %struct.TYPE_22__* %3) #0 {
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_22__* %3, %struct.TYPE_22__** %8, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %14 = call i32 @hook_save(%struct.TYPE_21__* %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %20 = call i32 @lj_trace_abort(%struct.TYPE_21__* %19)
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %22 = call i32 @hook_entergc(%struct.TYPE_21__* %21)
  %23 = load i32, i32* @LJ_MAX_MEM, align 4
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %12, align 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %12, align 8
  %33 = ptrtoint i32* %31 to i32
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @copyTV(%struct.TYPE_20__* %30, i32 %33, i32* %34)
  %36 = load i64, i64* @LJ_FR2, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %4
  %39 = load i32*, i32** %12, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %12, align 8
  %41 = ptrtoint i32* %39 to i32
  %42 = call i32 @setnilV(i32 %41)
  br label %43

43:                                               ; preds = %38, %4
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = xor i32 %50, -1
  %52 = call i32 @setgcV(%struct.TYPE_20__* %44, i32* %45, %struct.TYPE_22__* %46, i32 %51)
  %53 = load i32*, i32** %12, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  store i32* %54, i32** %56, align 8
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = call i32 @lj_vm_pcall(%struct.TYPE_20__* %57, i32* %58, i64 1, i32 -1)
  store i32 %59, i32* %11, align 4
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @hook_restore(%struct.TYPE_21__* %60, i32 %61)
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %43
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @lj_err_throw(%struct.TYPE_20__* %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %43
  ret void
}

declare dso_local i32 @hook_save(%struct.TYPE_21__*) #1

declare dso_local i32 @lj_trace_abort(%struct.TYPE_21__*) #1

declare dso_local i32 @hook_entergc(%struct.TYPE_21__*) #1

declare dso_local i32 @copyTV(%struct.TYPE_20__*, i32, i32*) #1

declare dso_local i32 @setnilV(i32) #1

declare dso_local i32 @setgcV(%struct.TYPE_20__*, i32*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @lj_vm_pcall(%struct.TYPE_20__*, i32*, i64, i32) #1

declare dso_local i32 @hook_restore(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @lj_err_throw(%struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

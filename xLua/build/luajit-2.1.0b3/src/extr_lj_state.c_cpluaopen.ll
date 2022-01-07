; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_state.c_cpluaopen.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_state.c_cpluaopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }

@LJ_MIN_GLOBAL = common dso_local global i32 0, align 4
@LJ_MIN_REGISTRY = common dso_local global i32 0, align 4
@LJ_MIN_STRTAB = common dso_local global i64 0, align 8
@LJ_ERR_ERRMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_18__*, i8*, i8*)* @cpluaopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @cpluaopen(%struct.TYPE_18__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %9 = call %struct.TYPE_19__* @G(%struct.TYPE_18__* %8)
  store %struct.TYPE_19__* %9, %struct.TYPE_19__** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @UNUSED(i8* %10)
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @UNUSED(i8* %12)
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %16 = call i32 @stack_init(%struct.TYPE_18__* %14, %struct.TYPE_18__* %15)
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %21 = load i32, i32* @LJ_MIN_GLOBAL, align 4
  %22 = call i32 @lj_tab_new(%struct.TYPE_18__* %20, i32 0, i32 %21)
  %23 = call i32 @obj2gco(i32 %22)
  %24 = call i32 @setgcref(i32 %19, i32 %23)
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %27 = call i32 @registry(%struct.TYPE_18__* %26)
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %29 = load i32, i32* @LJ_MIN_REGISTRY, align 4
  %30 = call i32 @lj_tab_new(%struct.TYPE_18__* %28, i32 0, i32 %29)
  %31 = call i32 @settabV(%struct.TYPE_18__* %25, i32 %27, i32 %30)
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %33 = load i64, i64* @LJ_MIN_STRTAB, align 8
  %34 = sub nsw i64 %33, 1
  %35 = call i32 @lj_str_resize(%struct.TYPE_18__* %32, i64 %34)
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %37 = call i32 @lj_meta_init(%struct.TYPE_18__* %36)
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %39 = call i32 @lj_lex_init(%struct.TYPE_18__* %38)
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %41 = load i32, i32* @LJ_ERR_ERRMEM, align 4
  %42 = call i32 @lj_err_str(%struct.TYPE_18__* %40, i32 %41)
  %43 = call i32 @fixstring(i32 %42)
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 4, %47
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %53 = call i32 @lj_trace_initstate(%struct.TYPE_19__* %52)
  ret i32* null
}

declare dso_local %struct.TYPE_19__* @G(%struct.TYPE_18__*) #1

declare dso_local i32 @UNUSED(i8*) #1

declare dso_local i32 @stack_init(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @setgcref(i32, i32) #1

declare dso_local i32 @obj2gco(i32) #1

declare dso_local i32 @lj_tab_new(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @settabV(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @registry(%struct.TYPE_18__*) #1

declare dso_local i32 @lj_str_resize(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @lj_meta_init(%struct.TYPE_18__*) #1

declare dso_local i32 @lj_lex_init(%struct.TYPE_18__*) #1

declare dso_local i32 @fixstring(i32) #1

declare dso_local i32 @lj_err_str(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @lj_trace_initstate(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_gola_resolve.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_gola_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_20__*, i32, %struct.TYPE_16__* }
%struct.TYPE_20__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i64, i64, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32 }

@VARNAME__MAX = common dso_local global i64 0, align 8
@NAME_BREAK = common dso_local global i32* null, align 8
@LJ_ERR_XGSCOPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_18__*, i32)* @gola_resolve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gola_resolve(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_19__, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i64 %17
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %7, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %23
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %8, align 8
  br label %25

25:                                               ; preds = %106, %3
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %28 = icmp ult %struct.TYPE_16__* %26, %27
  br i1 %28, label %29, label %109

29:                                               ; preds = %25
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @gcrefeq(i32 %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %105

38:                                               ; preds = %29
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %40 = call i64 @gola_isgoto(%struct.TYPE_16__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %105

42:                                               ; preds = %38
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %45, %48
  br i1 %49, label %50, label %100

50:                                               ; preds = %42
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %53, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @var_get(%struct.TYPE_17__* %51, %struct.TYPE_20__* %54, i64 %57)
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32* @strref(i32 %61)
  store i32* %62, i32** %9, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = ptrtoint i32* %63 to i64
  %65 = load i64, i64* @VARNAME__MAX, align 8
  %66 = icmp uge i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @lua_assert(i32 %67)
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %72, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32* @strref(i32 %84)
  %86 = load i32*, i32** @NAME_BREAK, align 8
  %87 = icmp ne i32* %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @lua_assert(i32 %88)
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %91 = load i32, i32* @LJ_ERR_XGSCOPE, align 4
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32* @strref(i32 %94)
  %96 = call i32 @strdata(i32* %95)
  %97 = load i32*, i32** %9, align 8
  %98 = call i32 @strdata(i32* %97)
  %99 = call i32 @lj_lex_error(%struct.TYPE_17__* %90, i32 0, i32 %91, i32 %96, i32 %98)
  br label %100

100:                                              ; preds = %50, %42
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %104 = call i32 @gola_patch(%struct.TYPE_17__* %101, %struct.TYPE_16__* %102, %struct.TYPE_16__* %103)
  br label %105

105:                                              ; preds = %100, %38, %29
  br label %106

106:                                              ; preds = %105
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 1
  store %struct.TYPE_16__* %108, %struct.TYPE_16__** %7, align 8
  br label %25

109:                                              ; preds = %25
  ret void
}

declare dso_local i64 @gcrefeq(i32, i32) #1

declare dso_local i64 @gola_isgoto(%struct.TYPE_16__*) #1

declare dso_local i32* @strref(i32) #1

declare dso_local i32 @var_get(%struct.TYPE_17__*, %struct.TYPE_20__*, i64) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @lj_lex_error(%struct.TYPE_17__*, i32, i32, i32, i32) #1

declare dso_local i32 @strdata(i32*) #1

declare dso_local i32 @gola_patch(%struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_lgc.c_GCTM.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_lgc.c_GCTM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_15__ = type { i32 }

@TM_GC = common dso_local global i32 0, align 4
@dothecall = common dso_local global i32 0, align 4
@LUA_OK = common dso_local global i32 0, align 4
@LUA_ERRRUN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"no message\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"error in __gc metamethod (%s)\00", align 1
@LUA_ERRGCMM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32)* @GCTM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GCTM(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %13 = call %struct.TYPE_15__* @G(%struct.TYPE_14__* %12)
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %5, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %16 = call i32 @udata2finalize(%struct.TYPE_15__* %15)
  %17 = call i32 @setgcovalue(%struct.TYPE_14__* %14, i32* %7, i32 %16)
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %19 = load i32, i32* @TM_GC, align 4
  %20 = call i32* @luaT_gettmbyobj(%struct.TYPE_14__* %18, i32* %7, i32 %19)
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %104

23:                                               ; preds = %2
  %24 = load i32*, i32** %6, align 8
  %25 = call i64 @ttisfunction(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %104

27:                                               ; preds = %23
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %9, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  store i32 0, i32* %35, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 4
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @setobj2s(%struct.TYPE_14__* %38, i64 %41, i32* %42)
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  %49 = call i32 @setobj2s(%struct.TYPE_14__* %44, i64 %48, i32* %7)
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 2
  store i64 %53, i64* %51, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %55 = load i32, i32* @dothecall, align 4
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %59, 2
  %61 = call i32 @savestack(%struct.TYPE_14__* %56, i64 %60)
  %62 = call i32 @luaD_pcall(%struct.TYPE_14__* %54, i32 %55, i32* null, i32 %61, i32 0)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @LUA_OK, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %103

72:                                               ; preds = %27
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %103

75:                                               ; preds = %72
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @LUA_ERRRUN, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %99

79:                                               ; preds = %75
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %82, 1
  %84 = call i64 @ttisstring(i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %79
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %89, 1
  %91 = call i8* @svalue(i64 %90)
  br label %93

92:                                               ; preds = %79
  br label %93

93:                                               ; preds = %92, %86
  %94 = phi i8* [ %91, %86 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %92 ]
  store i8* %94, i8** %11, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = call i32 @luaO_pushfstring(%struct.TYPE_14__* %95, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %96)
  %98 = load i32, i32* @LUA_ERRGCMM, align 4
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %93, %75
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @luaD_throw(%struct.TYPE_14__* %100, i32 %101)
  br label %103

103:                                              ; preds = %99, %72, %27
  br label %104

104:                                              ; preds = %103, %23, %2
  ret void
}

declare dso_local %struct.TYPE_15__* @G(%struct.TYPE_14__*) #1

declare dso_local i32 @setgcovalue(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @udata2finalize(%struct.TYPE_15__*) #1

declare dso_local i32* @luaT_gettmbyobj(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i64 @ttisfunction(i32*) #1

declare dso_local i32 @setobj2s(%struct.TYPE_14__*, i64, i32*) #1

declare dso_local i32 @luaD_pcall(%struct.TYPE_14__*, i32, i32*, i32, i32) #1

declare dso_local i32 @savestack(%struct.TYPE_14__*, i64) #1

declare dso_local i64 @ttisstring(i64) #1

declare dso_local i8* @svalue(i64) #1

declare dso_local i32 @luaO_pushfstring(%struct.TYPE_14__*, i8*, i8*) #1

declare dso_local i32 @luaD_throw(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

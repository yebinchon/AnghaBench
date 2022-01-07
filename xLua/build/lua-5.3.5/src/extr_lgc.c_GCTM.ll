; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lgc.c_GCTM.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lgc.c_GCTM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i32 }

@TM_GC = common dso_local global i32 0, align 4
@CIST_FIN = common dso_local global i32 0, align 4
@dothecall = common dso_local global i32 0, align 4
@LUA_OK = common dso_local global i32 0, align 4
@LUA_ERRRUN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"no message\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"error in __gc metamethod (%s)\00", align 1
@LUA_ERRGCMM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i32)* @GCTM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GCTM(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %13 = call %struct.TYPE_17__* @G(%struct.TYPE_16__* %12)
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %5, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %16 = call i32 @udata2finalize(%struct.TYPE_17__* %15)
  %17 = call i32 @setgcovalue(%struct.TYPE_16__* %14, i32* %7, i32 %16)
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %19 = load i32, i32* @TM_GC, align 4
  %20 = call i32* @luaT_gettmbyobj(%struct.TYPE_16__* %18, i32* %7, i32 %19)
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %119

23:                                               ; preds = %2
  %24 = load i32*, i32** %6, align 8
  %25 = call i64 @ttisfunction(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %119

27:                                               ; preds = %23
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %9, align 4
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 1
  store i32 0, i32* %35, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 4
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @setobj2s(%struct.TYPE_16__* %38, i64 %41, i32* %42)
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  %49 = call i32 @setobj2s(%struct.TYPE_16__* %44, i64 %48, i32* %7)
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 2
  store i64 %53, i64* %51, align 8
  %54 = load i32, i32* @CIST_FIN, align 4
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %54
  store i32 %60, i32* %58, align 4
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %62 = load i32, i32* @dothecall, align 4
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %66, 2
  %68 = call i32 @savestack(%struct.TYPE_16__* %63, i64 %67)
  %69 = call i32 @luaD_pcall(%struct.TYPE_16__* %61, i32 %62, i32* null, i32 %68, i32 0)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* @CIST_FIN, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, %71
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @LUA_OK, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %118

87:                                               ; preds = %27
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %118

90:                                               ; preds = %87
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @LUA_ERRRUN, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %114

94:                                               ; preds = %90
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = sub nsw i64 %97, 1
  %99 = call i64 @ttisstring(i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %94
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = sub nsw i64 %104, 1
  %106 = call i8* @svalue(i64 %105)
  br label %108

107:                                              ; preds = %94
  br label %108

108:                                              ; preds = %107, %101
  %109 = phi i8* [ %106, %101 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %107 ]
  store i8* %109, i8** %11, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %111 = load i8*, i8** %11, align 8
  %112 = call i32 @luaO_pushfstring(%struct.TYPE_16__* %110, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %111)
  %113 = load i32, i32* @LUA_ERRGCMM, align 4
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %108, %90
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @luaD_throw(%struct.TYPE_16__* %115, i32 %116)
  br label %118

118:                                              ; preds = %114, %87, %27
  br label %119

119:                                              ; preds = %118, %23, %2
  ret void
}

declare dso_local %struct.TYPE_17__* @G(%struct.TYPE_16__*) #1

declare dso_local i32 @setgcovalue(%struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @udata2finalize(%struct.TYPE_17__*) #1

declare dso_local i32* @luaT_gettmbyobj(%struct.TYPE_16__*, i32*, i32) #1

declare dso_local i64 @ttisfunction(i32*) #1

declare dso_local i32 @setobj2s(%struct.TYPE_16__*, i64, i32*) #1

declare dso_local i32 @luaD_pcall(%struct.TYPE_16__*, i32, i32*, i32, i32) #1

declare dso_local i32 @savestack(%struct.TYPE_16__*, i64) #1

declare dso_local i64 @ttisstring(i64) #1

declare dso_local i8* @svalue(i64) #1

declare dso_local i32 @luaO_pushfstring(%struct.TYPE_16__*, i8*, i8*) #1

declare dso_local i32 @luaD_throw(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/xLua/WebGLPlugins/extr_lapi.c_auxsetstr.c'
source_filename = "/home/carl/AnghaBench/xLua/WebGLPlugins/extr_lapi.c_auxsetstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }

@luaH_getstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32*, i8*)* @auxsetstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @auxsetstr(%struct.TYPE_10__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32* @luaS_new(%struct.TYPE_10__* %9, i8* %10)
  store i32* %11, i32** %8, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = call i32 @api_checknelems(%struct.TYPE_10__* %12, i32 1)
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* @luaH_getstr, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %21, 1
  %23 = call i64 @luaV_fastset(%struct.TYPE_10__* %14, i32* %15, i32* %16, i32* %17, i32 %18, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, -1
  store i64 %29, i64* %27, align 8
  br label %55

30:                                               ; preds = %3
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @setsvalue2s(%struct.TYPE_10__* %31, i64 %34, i32* %35)
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = call i32 @api_incr_top(%struct.TYPE_10__* %37)
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %43, 1
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %47, 2
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @luaV_finishset(%struct.TYPE_10__* %39, i32* %40, i64 %44, i64 %48, i32* %49)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %53, 2
  store i64 %54, i64* %52, align 8
  br label %55

55:                                               ; preds = %30, %25
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %57 = call i32 @lua_unlock(%struct.TYPE_10__* %56)
  ret void
}

declare dso_local i32* @luaS_new(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @api_checknelems(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @luaV_fastset(%struct.TYPE_10__*, i32*, i32*, i32*, i32, i64) #1

declare dso_local i32 @setsvalue2s(%struct.TYPE_10__*, i64, i32*) #1

declare dso_local i32 @api_incr_top(%struct.TYPE_10__*) #1

declare dso_local i32 @luaV_finishset(%struct.TYPE_10__*, i32*, i64, i64, i32*) #1

declare dso_local i32 @lua_unlock(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

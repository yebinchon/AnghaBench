; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/host/extr_minilua.c_lua_setmetatable.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/host/extr_minilua.c_lua_setmetatable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32* }
%struct.TYPE_19__ = type { %struct.TYPE_19__* }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_17__ = type { %struct.TYPE_19__** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i32)* @lua_setmetatable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lua_setmetatable(%struct.TYPE_18__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %8 = call i32 @api_checknelems(%struct.TYPE_18__* %7, i32 1)
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32* @index2adr(%struct.TYPE_18__* %9, i32 %10)
  store i32* %11, i32** %5, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @api_checkvalidindex(%struct.TYPE_18__* %12, i32* %13)
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 -1
  %19 = call i64 @ttisnil(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %6, align 8
  br label %35

22:                                               ; preds = %2
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 -1
  %28 = call i32 @ttistable(i32* %27)
  %29 = call i32 @luai_apicheck(%struct.TYPE_18__* %23, i32 %28)
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 -1
  %34 = call %struct.TYPE_19__* @hvalue(i32* %33)
  store %struct.TYPE_19__* %34, %struct.TYPE_19__** %6, align 8
  br label %35

35:                                               ; preds = %22, %21
  %36 = load i32*, i32** %5, align 8
  %37 = call i64 @ttype(i32* %36)
  switch i64 %37, label %66 [
    i64 5, label %38
    i64 7, label %52
  ]

38:                                               ; preds = %35
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call %struct.TYPE_19__* @hvalue(i32* %40)
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  store %struct.TYPE_19__* %39, %struct.TYPE_19__** %42, align 8
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %44 = icmp ne %struct.TYPE_19__* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call %struct.TYPE_19__* @hvalue(i32* %47)
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %50 = call i32 @luaC_objbarriert(%struct.TYPE_18__* %46, %struct.TYPE_19__* %48, %struct.TYPE_19__* %49)
  br label %51

51:                                               ; preds = %45, %38
  br label %75

52:                                               ; preds = %35
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = call %struct.TYPE_20__* @uvalue(i32* %54)
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  store %struct.TYPE_19__* %53, %struct.TYPE_19__** %56, align 8
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %58 = icmp ne %struct.TYPE_19__* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @rawuvalue(i32* %61)
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %64 = call i32 @luaC_objbarrier(%struct.TYPE_18__* %60, i32 %62, %struct.TYPE_19__* %63)
  br label %65

65:                                               ; preds = %59, %52
  br label %75

66:                                               ; preds = %35
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %69 = call %struct.TYPE_17__* @G(%struct.TYPE_18__* %68)
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %70, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = call i64 @ttype(i32* %72)
  %74 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %71, i64 %73
  store %struct.TYPE_19__* %67, %struct.TYPE_19__** %74, align 8
  br label %75

75:                                               ; preds = %66, %65, %51
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 -1
  store i32* %79, i32** %77, align 8
  ret i32 1
}

declare dso_local i32 @api_checknelems(%struct.TYPE_18__*, i32) #1

declare dso_local i32* @index2adr(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @api_checkvalidindex(%struct.TYPE_18__*, i32*) #1

declare dso_local i64 @ttisnil(i32*) #1

declare dso_local i32 @luai_apicheck(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ttistable(i32*) #1

declare dso_local %struct.TYPE_19__* @hvalue(i32*) #1

declare dso_local i64 @ttype(i32*) #1

declare dso_local i32 @luaC_objbarriert(%struct.TYPE_18__*, %struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_20__* @uvalue(i32*) #1

declare dso_local i32 @luaC_objbarrier(%struct.TYPE_18__*, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @rawuvalue(i32*) #1

declare dso_local %struct.TYPE_17__* @G(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_lparser.c_singlevar.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_lparser.c_singlevar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, i32* }
%struct.TYPE_11__ = type { i64 }

@VVOID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_11__*)* @singlevar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @singlevar(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %9 = call i32* @str_checkname(%struct.TYPE_12__* %8)
  store i32* %9, i32** %5, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = call i32 @singlevaraux(i32* %13, i32* %14, %struct.TYPE_11__* %15, i32 1)
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @VVOID, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %2
  %23 = load i32*, i32** %6, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = call i32 @singlevaraux(i32* %23, i32* %26, %struct.TYPE_11__* %27, i32 1)
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @VVOID, align 8
  %33 = icmp ne i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @lua_assert(i32 %34)
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @codestring(%struct.TYPE_12__* %36, %struct.TYPE_11__* %7, i32* %37)
  %39 = load i32*, i32** %6, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %41 = call i32 @luaK_indexed(i32* %39, %struct.TYPE_11__* %40, %struct.TYPE_11__* %7)
  br label %42

42:                                               ; preds = %22, %2
  ret void
}

declare dso_local i32* @str_checkname(%struct.TYPE_12__*) #1

declare dso_local i32 @singlevaraux(i32*, i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @codestring(%struct.TYPE_12__*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @luaK_indexed(i32*, %struct.TYPE_11__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

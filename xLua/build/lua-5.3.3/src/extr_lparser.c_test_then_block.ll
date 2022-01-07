; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_lparser.c_test_then_block.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_lparser.c_test_then_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__, i32* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i32, i32 }

@TK_THEN = common dso_local global i32 0, align 4
@TK_GOTO = common dso_local global i64 0, align 8
@TK_BREAK = common dso_local global i64 0, align 8
@TK_ELSE = common dso_local global i64 0, align 8
@TK_ELSEIF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, i32*)* @test_then_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_then_block(%struct.TYPE_17__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_16__, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %6, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %13 = call i32 @luaX_next(%struct.TYPE_17__* %12)
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %15 = call i32 @expr(%struct.TYPE_17__* %14, %struct.TYPE_16__* %7)
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %17 = load i32, i32* @TK_THEN, align 4
  %18 = call i32 @checknext(%struct.TYPE_17__* %16, i32 %17)
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TK_GOTO, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %32, label %25

25:                                               ; preds = %2
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TK_BREAK, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %25, %2
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @luaK_goiffalse(i32* %35, %struct.TYPE_16__* %7)
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @enterblock(i32* %37, i32* %5, i32 0)
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @gotostat(%struct.TYPE_17__* %39, i32 %41)
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %44 = call i32 @skipnoopstat(%struct.TYPE_17__* %43)
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %46 = call i64 @block_follow(%struct.TYPE_17__* %45, i32 0)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %32
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @leaveblock(i32* %49)
  br label %92

51:                                               ; preds = %32
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @luaK_jump(i32* %52)
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %51
  br label %64

55:                                               ; preds = %25
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @luaK_goiftrue(i32* %58, %struct.TYPE_16__* %7)
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @enterblock(i32* %60, i32* %5, i32 0)
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %55, %54
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %66 = call i32 @statlist(%struct.TYPE_17__* %65)
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @leaveblock(i32* %67)
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @TK_ELSE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %82, label %75

75:                                               ; preds = %64
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @TK_ELSEIF, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %75, %64
  %83 = load i32*, i32** %6, align 8
  %84 = load i32*, i32** %4, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @luaK_jump(i32* %85)
  %87 = call i32 @luaK_concat(i32* %83, i32* %84, i32 %86)
  br label %88

88:                                               ; preds = %82, %75
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @luaK_patchtohere(i32* %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %48
  ret void
}

declare dso_local i32 @luaX_next(%struct.TYPE_17__*) #1

declare dso_local i32 @expr(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @checknext(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @luaK_goiffalse(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @enterblock(i32*, i32*, i32) #1

declare dso_local i32 @gotostat(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @skipnoopstat(%struct.TYPE_17__*) #1

declare dso_local i64 @block_follow(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @leaveblock(i32*) #1

declare dso_local i32 @luaK_jump(i32*) #1

declare dso_local i32 @luaK_goiftrue(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @statlist(%struct.TYPE_17__*) #1

declare dso_local i32 @luaK_concat(i32*, i32*, i32) #1

declare dso_local i32 @luaK_patchtohere(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

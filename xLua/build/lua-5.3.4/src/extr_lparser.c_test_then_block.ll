; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_lparser.c_test_then_block.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_lparser.c_test_then_block.c"
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
  br i1 %31, label %32, label %59

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
  br label %43

43:                                               ; preds = %47, %32
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %45 = call i64 @testnext(%struct.TYPE_17__* %44, i8 signext 59)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %43

48:                                               ; preds = %43
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %50 = call i64 @block_follow(%struct.TYPE_17__* %49, i32 0)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @leaveblock(i32* %53)
  br label %96

55:                                               ; preds = %48
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @luaK_jump(i32* %56)
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %55
  br label %68

59:                                               ; preds = %25
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @luaK_goiftrue(i32* %62, %struct.TYPE_16__* %7)
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @enterblock(i32* %64, i32* %5, i32 0)
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %59, %58
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %70 = call i32 @statlist(%struct.TYPE_17__* %69)
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @leaveblock(i32* %71)
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @TK_ELSE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %86, label %79

79:                                               ; preds = %68
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @TK_ELSEIF, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %79, %68
  %87 = load i32*, i32** %6, align 8
  %88 = load i32*, i32** %4, align 8
  %89 = load i32*, i32** %6, align 8
  %90 = call i32 @luaK_jump(i32* %89)
  %91 = call i32 @luaK_concat(i32* %87, i32* %88, i32 %90)
  br label %92

92:                                               ; preds = %86, %79
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @luaK_patchtohere(i32* %93, i32 %94)
  br label %96

96:                                               ; preds = %92, %52
  ret void
}

declare dso_local i32 @luaX_next(%struct.TYPE_17__*) #1

declare dso_local i32 @expr(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @checknext(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @luaK_goiffalse(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @enterblock(i32*, i32*, i32) #1

declare dso_local i32 @gotostat(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @testnext(%struct.TYPE_17__*, i8 signext) #1

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

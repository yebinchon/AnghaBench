; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lparser.c_ifstat.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lparser.c_ifstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, i32* }
%struct.TYPE_8__ = type { i64 }

@NO_JUMP = common dso_local global i32 0, align 4
@TK_ELSEIF = common dso_local global i64 0, align 8
@TK_ELSE = common dso_local global i64 0, align 8
@TK_END = common dso_local global i32 0, align 4
@TK_IF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32)* @ifstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ifstat(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %5, align 8
  %11 = load i32, i32* @NO_JUMP, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = call i32 @test_then_block(%struct.TYPE_9__* %12)
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %21, %2
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TK_ELSEIF, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %14
  %22 = load i32*, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @luaK_jump(i32* %23)
  %25 = call i32 @luaK_concat(i32* %22, i32* %7, i32 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @luaK_patchtohere(i32* %26, i32 %27)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = call i32 @test_then_block(%struct.TYPE_9__* %29)
  store i32 %30, i32* %6, align 4
  br label %14

31:                                               ; preds = %14
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TK_ELSE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %31
  %39 = load i32*, i32** %5, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @luaK_jump(i32* %40)
  %42 = call i32 @luaK_concat(i32* %39, i32* %7, i32 %41)
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @luaK_patchtohere(i32* %43, i32 %44)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %47 = call i32 @luaX_next(%struct.TYPE_9__* %46)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %49 = call i32 @block(%struct.TYPE_9__* %48)
  br label %54

50:                                               ; preds = %31
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @luaK_concat(i32* %51, i32* %7, i32 %52)
  br label %54

54:                                               ; preds = %50, %38
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @luaK_patchtohere(i32* %55, i32 %56)
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %59 = load i32, i32* @TK_END, align 4
  %60 = load i32, i32* @TK_IF, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @check_match(%struct.TYPE_9__* %58, i32 %59, i32 %60, i32 %61)
  ret void
}

declare dso_local i32 @test_then_block(%struct.TYPE_9__*) #1

declare dso_local i32 @luaK_concat(i32*, i32*, i32) #1

declare dso_local i32 @luaK_jump(i32*) #1

declare dso_local i32 @luaK_patchtohere(i32*, i32) #1

declare dso_local i32 @luaX_next(%struct.TYPE_9__*) #1

declare dso_local i32 @block(%struct.TYPE_9__*) #1

declare dso_local i32 @check_match(%struct.TYPE_9__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lparser.c_repeatstat.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lparser.c_repeatstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.TYPE_10__ = type { i32, i64 }

@TK_UNTIL = common dso_local global i32 0, align 4
@TK_REPEAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32)* @repeatstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @repeatstat(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @luaK_getlabel(i32* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @enterblock(i32* %15, %struct.TYPE_10__* %8, i32 1)
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @enterblock(i32* %17, %struct.TYPE_10__* %9, i32 0)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = call i32 @luaX_next(%struct.TYPE_9__* %19)
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = call i32 @statlist(%struct.TYPE_9__* %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = load i32, i32* @TK_UNTIL, align 4
  %25 = load i32, i32* @TK_REPEAT, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @check_match(%struct.TYPE_9__* %23, i32 %24, i32 %25, i32 %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = call i32 @cond(%struct.TYPE_9__* %28)
  store i32 %29, i32* %5, align 4
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %2
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %5, align 4
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @luaK_patchclose(i32* %34, i32 %35, i32 %37)
  br label %39

39:                                               ; preds = %33, %2
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @leaveblock(i32* %40)
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @luaK_patchlist(i32* %42, i32 %43, i32 %44)
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @leaveblock(i32* %46)
  ret void
}

declare dso_local i32 @luaK_getlabel(i32*) #1

declare dso_local i32 @enterblock(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @luaX_next(%struct.TYPE_9__*) #1

declare dso_local i32 @statlist(%struct.TYPE_9__*) #1

declare dso_local i32 @check_match(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @cond(%struct.TYPE_9__*) #1

declare dso_local i32 @luaK_patchclose(i32*, i32, i32) #1

declare dso_local i32 @leaveblock(i32*) #1

declare dso_local i32 @luaK_patchlist(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

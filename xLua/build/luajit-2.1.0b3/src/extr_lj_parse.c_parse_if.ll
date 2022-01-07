; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_parse_if.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_parse_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32* }

@NO_JMP = common dso_local global i32 0, align 4
@TK_elseif = common dso_local global i64 0, align 8
@TK_else = common dso_local global i64 0, align 8
@TK_end = common dso_local global i32 0, align 4
@TK_if = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32)* @parse_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_if(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %5, align 8
  %11 = load i32, i32* @NO_JMP, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = call i32 @parse_then(%struct.TYPE_7__* %12)
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %20, %2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TK_elseif, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %14
  %21 = load i32*, i32** %5, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @bcemit_jmp(i32* %22)
  %24 = call i32 @jmp_append(i32* %21, i32* %7, i32 %23)
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @jmp_tohere(i32* %25, i32 %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = call i32 @parse_then(%struct.TYPE_7__* %28)
  store i32 %29, i32* %6, align 4
  br label %14

30:                                               ; preds = %14
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TK_else, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %30
  %37 = load i32*, i32** %5, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @bcemit_jmp(i32* %38)
  %40 = call i32 @jmp_append(i32* %37, i32* %7, i32 %39)
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @jmp_tohere(i32* %41, i32 %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = call i32 @lj_lex_next(%struct.TYPE_7__* %44)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %47 = call i32 @parse_block(%struct.TYPE_7__* %46)
  br label %52

48:                                               ; preds = %30
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @jmp_append(i32* %49, i32* %7, i32 %50)
  br label %52

52:                                               ; preds = %48, %36
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @jmp_tohere(i32* %53, i32 %54)
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = load i32, i32* @TK_end, align 4
  %58 = load i32, i32* @TK_if, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @lex_match(%struct.TYPE_7__* %56, i32 %57, i32 %58, i32 %59)
  ret void
}

declare dso_local i32 @parse_then(%struct.TYPE_7__*) #1

declare dso_local i32 @jmp_append(i32*, i32*, i32) #1

declare dso_local i32 @bcemit_jmp(i32*) #1

declare dso_local i32 @jmp_tohere(i32*, i32) #1

declare dso_local i32 @lj_lex_next(%struct.TYPE_7__*) #1

declare dso_local i32 @parse_block(%struct.TYPE_7__*) #1

declare dso_local i32 @lex_match(%struct.TYPE_7__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

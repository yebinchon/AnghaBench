; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_parse_while.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_parse_while.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32 }

@FSCOPE_LOOP = common dso_local global i32 0, align 4
@TK_do = common dso_local global i32 0, align 4
@BC_LOOP = common dso_local global i32 0, align 4
@TK_end = common dso_local global i32 0, align 4
@TK_while = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i32)* @parse_while to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_while(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  store %struct.TYPE_17__* %12, %struct.TYPE_17__** %5, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %14 = call i32 @lj_lex_next(%struct.TYPE_16__* %13)
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  store i32 %17, i32* %6, align 4
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %21 = call i32 @expr_cond(%struct.TYPE_16__* %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %23 = load i32, i32* @FSCOPE_LOOP, align 4
  %24 = call i32 @fscope_begin(%struct.TYPE_17__* %22, i32* %9, i32 %23)
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %26 = load i32, i32* @TK_do, align 4
  %27 = call i32 @lex_check(%struct.TYPE_16__* %25, i32 %26)
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %29 = load i32, i32* @BC_LOOP, align 4
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @bcemit_AD(%struct.TYPE_17__* %28, i32 %29, i32 %32, i32 0)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %35 = call i32 @parse_block(%struct.TYPE_16__* %34)
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %38 = call i32 @bcemit_jmp(%struct.TYPE_17__* %37)
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @jmp_patch(%struct.TYPE_17__* %36, i32 %38, i32 %39)
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %42 = load i32, i32* @TK_end, align 4
  %43 = load i32, i32* @TK_while, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @lex_match(%struct.TYPE_16__* %41, i32 %42, i32 %43, i32 %44)
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %47 = call i32 @fscope_end(%struct.TYPE_17__* %46)
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @jmp_tohere(%struct.TYPE_17__* %48, i32 %49)
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @jmp_patchins(%struct.TYPE_17__* %51, i32 %52, i32 %55)
  ret void
}

declare dso_local i32 @lj_lex_next(%struct.TYPE_16__*) #1

declare dso_local i32 @expr_cond(%struct.TYPE_16__*) #1

declare dso_local i32 @fscope_begin(%struct.TYPE_17__*, i32*, i32) #1

declare dso_local i32 @lex_check(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @bcemit_AD(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @parse_block(%struct.TYPE_16__*) #1

declare dso_local i32 @jmp_patch(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @bcemit_jmp(%struct.TYPE_17__*) #1

declare dso_local i32 @lex_match(%struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i32 @fscope_end(%struct.TYPE_17__*) #1

declare dso_local i32 @jmp_tohere(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @jmp_patchins(%struct.TYPE_17__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

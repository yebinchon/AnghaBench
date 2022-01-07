; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_parse_goto.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_parse_goto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@BC_LOOP = common dso_local global i32 0, align 4
@FSCOPE_GOLA = common dso_local global i32 0, align 4
@VSTACK_GOTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @parse_goto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_goto(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_15__* %8, %struct.TYPE_15__** %3, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %10 = call i32* @lex_str(%struct.TYPE_14__* %9)
  store i32* %10, i32** %4, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call %struct.TYPE_13__* @gola_findlabel(%struct.TYPE_14__* %11, i32* %12)
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %5, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %15 = icmp ne %struct.TYPE_13__* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %18 = load i32, i32* @BC_LOOP, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @bcemit_AJ(%struct.TYPE_15__* %17, i32 %18, i32 %21, i32 -1)
  br label %23

23:                                               ; preds = %16, %1
  %24 = load i32, i32* @FSCOPE_GOLA, align 4
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %24
  store i32 %30, i32* %28, align 4
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @VSTACK_GOTO, align 4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %35 = call i32 @bcemit_jmp(%struct.TYPE_15__* %34)
  %36 = call i32 @gola_new(%struct.TYPE_14__* %31, i32* %32, i32 %33, i32 %35)
  ret void
}

declare dso_local i32* @lex_str(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_13__* @gola_findlabel(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @bcemit_AJ(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @gola_new(%struct.TYPE_14__*, i32*, i32, i32) #1

declare dso_local i32 @bcemit_jmp(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_parse_stmt.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_parse_stmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32 }

@TK_end = common dso_local global i32 0, align 4
@LJ_52 = common dso_local global i32 0, align 4
@TK_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*)* @parse_stmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_stmt(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %5 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %74 [
    i32 133, label %11
    i32 128, label %15
    i32 137, label %19
    i32 136, label %28
    i32 130, label %32
    i32 135, label %36
    i32 131, label %40
    i32 129, label %45
    i32 138, label %48
    i32 132, label %57
    i32 134, label %60
  ]

11:                                               ; preds = %1
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @parse_if(%struct.TYPE_18__* %12, i32 %13)
  br label %77

15:                                               ; preds = %1
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @parse_while(%struct.TYPE_18__* %16, i32 %17)
  br label %77

19:                                               ; preds = %1
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %21 = call i32 @lj_lex_next(%struct.TYPE_18__* %20)
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %23 = call i32 @parse_block(%struct.TYPE_18__* %22)
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %25 = load i32, i32* @TK_end, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @lex_match(%struct.TYPE_18__* %24, i32 %25, i32 137, i32 %26)
  br label %77

28:                                               ; preds = %1
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @parse_for(%struct.TYPE_18__* %29, i32 %30)
  br label %77

32:                                               ; preds = %1
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @parse_repeat(%struct.TYPE_18__* %33, i32 %34)
  br label %77

36:                                               ; preds = %1
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @parse_func(%struct.TYPE_18__* %37, i32 %38)
  br label %77

40:                                               ; preds = %1
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %42 = call i32 @lj_lex_next(%struct.TYPE_18__* %41)
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %44 = call i32 @parse_local(%struct.TYPE_18__* %43)
  br label %77

45:                                               ; preds = %1
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %47 = call i32 @parse_return(%struct.TYPE_18__* %46)
  store i32 1, i32* %2, align 4
  br label %78

48:                                               ; preds = %1
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %50 = call i32 @lj_lex_next(%struct.TYPE_18__* %49)
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %52 = call i32 @parse_break(%struct.TYPE_18__* %51)
  %53 = load i32, i32* @LJ_52, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %2, align 4
  br label %78

57:                                               ; preds = %1
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %59 = call i32 @parse_label(%struct.TYPE_18__* %58)
  br label %77

60:                                               ; preds = %1
  %61 = load i32, i32* @LJ_52, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %60
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %65 = call i32 @lj_lex_lookahead(%struct.TYPE_18__* %64)
  %66 = load i32, i32* @TK_name, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %63, %60
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %70 = call i32 @lj_lex_next(%struct.TYPE_18__* %69)
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %72 = call i32 @parse_goto(%struct.TYPE_18__* %71)
  br label %77

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %1, %73
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %76 = call i32 @parse_call_assign(%struct.TYPE_18__* %75)
  br label %77

77:                                               ; preds = %74, %68, %57, %40, %36, %32, %28, %19, %15, %11
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %48, %45
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @parse_if(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @parse_while(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @lj_lex_next(%struct.TYPE_18__*) #1

declare dso_local i32 @parse_block(%struct.TYPE_18__*) #1

declare dso_local i32 @lex_match(%struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i32 @parse_for(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @parse_repeat(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @parse_func(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @parse_local(%struct.TYPE_18__*) #1

declare dso_local i32 @parse_return(%struct.TYPE_18__*) #1

declare dso_local i32 @parse_break(%struct.TYPE_18__*) #1

declare dso_local i32 @parse_label(%struct.TYPE_18__*) #1

declare dso_local i32 @lj_lex_lookahead(%struct.TYPE_18__*) #1

declare dso_local i32 @parse_goto(%struct.TYPE_18__*) #1

declare dso_local i32 @parse_call_assign(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

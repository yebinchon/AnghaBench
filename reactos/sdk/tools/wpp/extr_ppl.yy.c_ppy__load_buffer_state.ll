; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/wpp/extr_ppl.yy.c_ppy__load_buffer_state.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/wpp/extr_ppl.yy.c_ppy__load_buffer_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32 }

@YY_CURRENT_BUFFER_LVALUE = common dso_local global %struct.TYPE_2__* null, align 8
@yy_n_chars = common dso_local global i32 0, align 4
@yy_c_buf_p = common dso_local global i32* null, align 8
@yytext_ptr = common dso_local global i32* null, align 8
@ppy_in = common dso_local global i32 0, align 4
@yy_hold_char = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ppy__load_buffer_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppy__load_buffer_state() #0 {
  %1 = load %struct.TYPE_2__*, %struct.TYPE_2__** @YY_CURRENT_BUFFER_LVALUE, align 8
  %2 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 2
  %3 = load i32, i32* %2, align 8
  store i32 %3, i32* @yy_n_chars, align 4
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @YY_CURRENT_BUFFER_LVALUE, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  store i32* %6, i32** @yy_c_buf_p, align 8
  store i32* %6, i32** @yytext_ptr, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @YY_CURRENT_BUFFER_LVALUE, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* @ppy_in, align 4
  %10 = load i32*, i32** @yy_c_buf_p, align 8
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* @yy_hold_char, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

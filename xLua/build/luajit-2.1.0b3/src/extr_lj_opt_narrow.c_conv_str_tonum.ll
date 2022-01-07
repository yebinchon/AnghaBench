; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_opt_narrow.c_conv_str_tonum.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_opt_narrow.c_conv_str_tonum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IR_STRTO = common dso_local global i32 0, align 4
@IRT_NUM = common dso_local global i32 0, align 4
@LJ_TRERR_BADTYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*)* @conv_str_tonum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conv_str_tonum(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = call i64 @tref_isstr(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %3
  %11 = load i32, i32* @IR_STRTO, align 4
  %12 = load i32, i32* @IRT_NUM, align 4
  %13 = call i32 @IRTG(i32 %11, i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @emitir(i32 %13, i32 %14, i32 0)
  store i32 %15, i32* %5, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @strV(i32* %16)
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @lj_strscan_num(i32 %17, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %10
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @LJ_TRERR_BADTYPE, align 4
  %24 = call i32 @lj_trace_err(i32* %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %10
  br label %26

26:                                               ; preds = %25, %3
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i64 @tref_isstr(i32) #1

declare dso_local i32 @emitir(i32, i32, i32) #1

declare dso_local i32 @IRTG(i32, i32) #1

declare dso_local i32 @lj_strscan_num(i32, i32*) #1

declare dso_local i32 @strV(i32*) #1

declare dso_local i32 @lj_trace_err(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

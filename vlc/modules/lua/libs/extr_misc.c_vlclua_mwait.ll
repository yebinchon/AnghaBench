; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_misc.c_vlclua_mwait.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_misc.c_vlclua_mwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Interrupted.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @vlclua_mwait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlclua_mwait(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca double, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call double @luaL_checknumber(i32* %7, i32 1)
  store double %8, double* %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32* @vlclua_set_interrupt(i32* %9)
  store i32* %10, i32** %5, align 8
  %11 = load double, double* %4, align 8
  %12 = call i32 @llround(double %11)
  %13 = call i32 @vlc_mwait_i11e(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @vlc_interrupt_set(i32* %14)
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @luaL_error(i32* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %2, align 4
  br label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %18
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local double @luaL_checknumber(i32*, i32) #1

declare dso_local i32* @vlclua_set_interrupt(i32*) #1

declare dso_local i32 @vlc_mwait_i11e(i32) #1

declare dso_local i32 @llround(double) #1

declare dso_local i32 @vlc_interrupt_set(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

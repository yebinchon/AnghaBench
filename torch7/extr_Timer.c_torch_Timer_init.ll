; ModuleID = '/home/carl/AnghaBench/torch7/extr_Timer.c_torch_Timer_init.c'
source_filename = "/home/carl/AnghaBench/torch7/extr_Timer.c_torch_Timer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"torch.Timer\00", align 1
@torch_Timer_new = common dso_local global i32 0, align 4
@torch_Timer_free = common dso_local global i32 0, align 4
@torch_Timer__ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @torch_Timer_init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @torch_Timer_new, align 4
  %5 = load i32, i32* @torch_Timer_free, align 4
  %6 = call i32 @luaT_newmetatable(i32* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null, i32 %4, i32 %5, i32* null)
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* @torch_Timer__, align 4
  %9 = call i32 @luaT_setfuncs(i32* %7, i32 %8, i32 0)
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @lua_pop(i32* %10, i32 1)
  ret void
}

declare dso_local i32 @luaT_newmetatable(i32*, i8*, i32*, i32, i32, i32*) #1

declare dso_local i32 @luaT_setfuncs(i32*, i32, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

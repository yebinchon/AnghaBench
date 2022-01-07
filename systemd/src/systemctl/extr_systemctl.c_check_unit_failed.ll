; ModuleID = '/home/carl/AnghaBench/systemd/src/systemctl/extr_systemctl.c_check_unit_failed.c'
source_filename = "/home/carl/AnghaBench/systemd/src/systemctl/extr_systemctl.c_check_unit_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@check_unit_failed.states = internal constant [1 x i32] [i32 128], align 4
@EXIT_PROGRAM_DEAD_AND_PID_EXISTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @check_unit_failed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_unit_failed(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* @EXIT_PROGRAM_DEAD_AND_PID_EXISTS, align 4
  %8 = call i32 @ELEMENTSOF(i32* getelementptr inbounds ([1 x i32], [1 x i32]* @check_unit_failed.states, i64 0, i64 0))
  %9 = load i8**, i8*** %5, align 8
  %10 = call i32 @strv_skip(i8** %9, i32 1)
  %11 = call i32 @check_unit_generic(i32 %7, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @check_unit_failed.states, i64 0, i64 0), i32 %8, i32 %10)
  ret i32 %11
}

declare dso_local i32 @check_unit_generic(i32, i32*, i32, i32) #1

declare dso_local i32 @ELEMENTSOF(i32*) #1

declare dso_local i32 @strv_skip(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

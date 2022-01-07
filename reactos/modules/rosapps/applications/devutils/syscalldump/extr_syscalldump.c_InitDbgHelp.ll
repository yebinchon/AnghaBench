; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/syscalldump/extr_syscalldump.c_InitDbgHelp.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/syscalldump/extr_syscalldump.c_InitDbgHelp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@SYMOPT_ALLOW_ABSOLUTE_SYMBOLS = common dso_local global i32 0, align 4
@SYMOPT_DEFERRED_LOADS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"srv**symbols*http://msdl.microsoft.com/download/symbols\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InitDbgHelp(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @FALSE, align 4
  %6 = call i32 @SymInitialize(i32 %4, i32 0, i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %2, align 4
  br label %23

10:                                               ; preds = %1
  %11 = call i32 (...) @SymGetOptions()
  %12 = load i32, i32* @SYMOPT_ALLOW_ABSOLUTE_SYMBOLS, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @SymSetOptions(i32 %13)
  %15 = call i32 (...) @SymGetOptions()
  %16 = load i32, i32* @SYMOPT_DEFERRED_LOADS, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = call i32 @SymSetOptions(i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @SymSetSearchPath(i32 %20, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @TRUE, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %10, %8
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @SymInitialize(i32, i32, i32) #1

declare dso_local i32 @SymSetOptions(i32) #1

declare dso_local i32 @SymGetOptions(...) #1

declare dso_local i32 @SymSetSearchPath(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

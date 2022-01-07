; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_parse.c_UnassembleOneLineDown.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_parse.c_UnassembleOneLineDown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"UnassembleOneLineDown()\0A\00", align 1
@usOldDisasmSegment = common dso_local global i32 0, align 4
@ulOldDisasmOffset = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"UnassembleOneLineDown(): addr = %.8X\0A\00", align 1
@tempCmd = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"UnassembleOneLineDown(): addr after = %.8X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UnassembleOneLineDown() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = call i32 @DPRINT(i32 ptrtoint ([25 x i8]* @.str to i32))
  %4 = load i32, i32* @usOldDisasmSegment, align 4
  %5 = load i32, i32* @ulOldDisasmOffset, align 4
  %6 = call i64 @GetLinearAddress(i32 %4, i32 %5)
  store i64 %6, i64* %1, align 8
  store i64 %6, i64* %2, align 8
  %7 = load i64, i64* %1, align 8
  %8 = trunc i64 %7 to i32
  %9 = call i32 @DPRINT(i32 %8)
  %10 = load i64*, i64** @tempCmd, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  store i64 0, i64* %11, align 8
  %12 = load i64*, i64** @tempCmd, align 8
  %13 = call i32 @Disasm(i64* %1, i64* %12)
  %14 = load i64, i64* %1, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 @DPRINT(i32 %15)
  %17 = load i64, i64* %1, align 8
  %18 = load i64, i64* %2, align 8
  %19 = sub nsw i64 %17, %18
  %20 = load i32, i32* @ulOldDisasmOffset, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %19
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* @ulOldDisasmOffset, align 4
  %24 = call i32 (...) @RepaintSource()
  ret void
}

declare dso_local i32 @DPRINT(i32) #1

declare dso_local i64 @GetLinearAddress(i32, i32) #1

declare dso_local i32 @Disasm(i64*, i64*) #1

declare dso_local i32 @RepaintSource(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

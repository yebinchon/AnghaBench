; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_parse.c_UnassembleOneLineUp.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_parse.c_UnassembleOneLineUp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"UnassembleOneLineUp()\0A\00", align 1
@usOldDisasmSegment = common dso_local global i32 0, align 4
@ulOldDisasmOffset = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"UnassembleOneLineUp(): addrorg = %.8X\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"UnassembleOneLineUp(): %s @ offset = %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"UnassembleOneLineUp(): offset = %u addrorg %x addr %x\0A\00", align 1
@tempCmd = common dso_local global i64* null, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"%.8X: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"UnassembleOneLineUp(): new addr = %.4X:%.8X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UnassembleOneLineUp() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = call i32 @DPRINT(i32 ptrtoint ([23 x i8]* @.str to i32))
  %10 = load i32, i32* @usOldDisasmSegment, align 4
  %11 = load i64, i64* @ulOldDisasmOffset, align 8
  %12 = call i64 @GetLinearAddress(i32 %10, i64 %11)
  store i64 %12, i64* %1, align 8
  store i64 %12, i64* %2, align 8
  %13 = load i64, i64* %1, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i32 @DPRINT(i32 %14)
  store i32 1, i32* %7, align 4
  %16 = load i64, i64* %2, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = sub nsw i64 %16, %18
  %20 = call i32 @FindFunctionByAddress(i64 %19, i64* %4, i64* %5)
  store i32 %20, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %0
  %23 = load i64, i64* %2, align 8
  %24 = load i64, i64* %4, align 8
  %25 = sub nsw i64 %23, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @DPRINT(i32 %28)
  br label %31

30:                                               ; preds = %0
  store i32 15, i32* %7, align 4
  br label %31

31:                                               ; preds = %30, %22
  %32 = load i64, i64* %2, align 8
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %2, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = sub nsw i64 %33, %35
  store i64 %36, i64* %1, align 8
  br label %37

37:                                               ; preds = %60, %31
  %38 = load i32, i32* %7, align 4
  %39 = load i64, i64* %2, align 8
  %40 = load i64, i64* %1, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @DPRINT(i32 %41)
  %43 = load i64, i64* %1, align 8
  store i64 %43, i64* %3, align 8
  %44 = load i64*, i64** @tempCmd, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  store i64 0, i64* %45, align 8
  %46 = load i64*, i64** @tempCmd, align 8
  %47 = call i32 @Disasm(i64* %1, i64* %46)
  %48 = load i64, i64* %3, align 8
  %49 = load i64*, i64** @tempCmd, align 8
  %50 = ptrtoint i64* %49 to i32
  %51 = call i32 @DPRINT(i32 %50)
  br label %52

52:                                               ; preds = %37
  %53 = load i64, i64* %1, align 8
  %54 = load i64, i64* %2, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i64, i64* %3, align 8
  %58 = load i64, i64* %2, align 8
  %59 = icmp slt i64 %57, %58
  br label %60

60:                                               ; preds = %56, %52
  %61 = phi i1 [ false, %52 ], [ %59, %56 ]
  br i1 %61, label %37, label %62

62:                                               ; preds = %60
  %63 = load i64, i64* %2, align 8
  %64 = load i64, i64* %6, align 8
  %65 = sub nsw i64 %63, %64
  %66 = icmp sle i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i64, i64* @ulOldDisasmOffset, align 8
  %69 = add nsw i64 %68, -1
  store i64 %69, i64* @ulOldDisasmOffset, align 8
  br label %76

70:                                               ; preds = %62
  %71 = load i64, i64* %2, align 8
  %72 = load i64, i64* %3, align 8
  %73 = sub nsw i64 %71, %72
  %74 = load i64, i64* @ulOldDisasmOffset, align 8
  %75 = sub nsw i64 %74, %73
  store i64 %75, i64* @ulOldDisasmOffset, align 8
  br label %76

76:                                               ; preds = %70, %67
  %77 = load i32, i32* @usOldDisasmSegment, align 4
  %78 = load i64, i64* @ulOldDisasmOffset, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i32 @DPRINT(i32 %79)
  %81 = call i32 (...) @RepaintSource()
  ret void
}

declare dso_local i32 @DPRINT(i32) #1

declare dso_local i64 @GetLinearAddress(i32, i64) #1

declare dso_local i32 @FindFunctionByAddress(i64, i64*, i64*) #1

declare dso_local i32 @Disasm(i64*, i64*) #1

declare dso_local i32 @RepaintSource(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

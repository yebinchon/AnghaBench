; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_parse.c_UnassembleOnePageUp.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_parse.c_UnassembleOnePageUp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"UnassembleOnePageUp()\0A\00", align 1
@usOldDisasmSegment = common dso_local global i32 0, align 4
@ulOldDisasmOffset = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"UnassembleOnePageUp(): addrorg = %.8X\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"UnassembleOnePageUp(): %s @ offset = %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"UnassembleOnePageUp(): offset = %u addrorg %x addr %x\0A\00", align 1
@tempCmd = common dso_local global i64* null, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"%.8X: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"UnassembleOnePageUp(): new addr = %.4X:%.8X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UnassembleOnePageUp(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %12 = call i32 @DPRINT(i32 ptrtoint ([23 x i8]* @.str to i32))
  store i64 0, i64* %8, align 8
  br label %13

13:                                               ; preds = %85, %1
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %2, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %88

17:                                               ; preds = %13
  %18 = load i32, i32* @usOldDisasmSegment, align 4
  %19 = load i64, i64* @ulOldDisasmOffset, align 8
  %20 = call i64 @GetLinearAddress(i32 %18, i64 %19)
  store i64 %20, i64* %3, align 8
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %3, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @DPRINT(i32 %22)
  store i32 1, i32* %10, align 4
  %24 = load i64, i64* %4, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = sub nsw i64 %24, %26
  %28 = call i32 @FindFunctionByAddress(i64 %27, i64* %6, i64* %7)
  store i32 %28, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %17
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* %6, align 8
  %33 = sub nsw i64 %31, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @DPRINT(i32 %36)
  br label %39

38:                                               ; preds = %17
  store i32 15, i32* %10, align 4
  br label %39

39:                                               ; preds = %38, %30
  %40 = load i64, i64* %4, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = sub nsw i64 %40, %42
  store i64 %43, i64* %3, align 8
  %44 = load i64, i64* %4, align 8
  store i64 %44, i64* %9, align 8
  br label %45

45:                                               ; preds = %68, %39
  %46 = load i32, i32* %10, align 4
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* %3, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 @DPRINT(i32 %49)
  %51 = load i64, i64* %3, align 8
  store i64 %51, i64* %5, align 8
  %52 = load i64*, i64** @tempCmd, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  store i64 0, i64* %53, align 8
  %54 = load i64*, i64** @tempCmd, align 8
  %55 = call i32 @Disasm(i64* %3, i64* %54)
  %56 = load i64, i64* %5, align 8
  %57 = load i64*, i64** @tempCmd, align 8
  %58 = ptrtoint i64* %57 to i32
  %59 = call i32 @DPRINT(i32 %58)
  br label %60

60:                                               ; preds = %45
  %61 = load i64, i64* %3, align 8
  %62 = load i64, i64* %4, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* %4, align 8
  %67 = icmp slt i64 %65, %66
  br label %68

68:                                               ; preds = %64, %60
  %69 = phi i1 [ false, %60 ], [ %67, %64 ]
  br i1 %69, label %45, label %70

70:                                               ; preds = %68
  %71 = load i64, i64* %4, align 8
  %72 = load i64, i64* %9, align 8
  %73 = sub nsw i64 %71, %72
  %74 = icmp sle i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i64, i64* @ulOldDisasmOffset, align 8
  %77 = add nsw i64 %76, -1
  store i64 %77, i64* @ulOldDisasmOffset, align 8
  br label %84

78:                                               ; preds = %70
  %79 = load i64, i64* %4, align 8
  %80 = load i64, i64* %5, align 8
  %81 = sub nsw i64 %79, %80
  %82 = load i64, i64* @ulOldDisasmOffset, align 8
  %83 = sub nsw i64 %82, %81
  store i64 %83, i64* @ulOldDisasmOffset, align 8
  br label %84

84:                                               ; preds = %78, %75
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %8, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %8, align 8
  br label %13

88:                                               ; preds = %13
  %89 = load i32, i32* @usOldDisasmSegment, align 4
  %90 = load i64, i64* @ulOldDisasmOffset, align 8
  %91 = trunc i64 %90 to i32
  %92 = call i32 @DPRINT(i32 %91)
  %93 = call i32 (...) @RepaintSource()
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

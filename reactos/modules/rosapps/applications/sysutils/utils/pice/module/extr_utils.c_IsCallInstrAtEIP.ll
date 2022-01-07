; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_utils.c_IsCallInstrAtEIP.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_utils.c_IsCallInstrAtEIP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"IsCallInstrAtEIP()\0A\00", align 1
@CurrentCS = common dso_local global i32 0, align 4
@CurrentEIP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IsCallInstrAtEIP() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @FALSE, align 4
  store i32 %3, i32* %2, align 4
  %4 = call i32 (...) @ENTER_FUNC()
  %5 = call i32 @DPRINT(i32 ptrtoint ([20 x i8]* @.str to i32))
  %6 = load i32, i32* @CurrentCS, align 4
  %7 = load i32, i32* @CurrentEIP, align 4
  %8 = call i64 @GetLinearAddress(i32 %6, i32 %7)
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** %1, align 8
  %10 = load i32*, i32** %1, align 8
  %11 = ptrtoint i32* %10 to i32
  %12 = call i64 @IsRangeValid(i32 %11, i32 2)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %51

14:                                               ; preds = %0
  %15 = load i32*, i32** %1, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 232
  br i1 %17, label %48, label %18

18:                                               ; preds = %14
  %19 = load i32*, i32** %1, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 255
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load i32*, i32** %1, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 3
  %27 = and i32 %26, 7
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %48, label %29

29:                                               ; preds = %22
  %30 = load i32*, i32** %1, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 3
  %34 = and i32 %33, 7
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %48, label %36

36:                                               ; preds = %29, %18
  %37 = load i32*, i32** %1, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 154
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %41 = load i32*, i32** %1, align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 242
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i32*, i32** %1, align 8
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 243
  br i1 %47, label %48, label %50

48:                                               ; preds = %44, %40, %36, %29, %22, %14
  %49 = load i32, i32* @TRUE, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %44
  br label %51

51:                                               ; preds = %50, %0
  %52 = call i32 (...) @LEAVE_FUNC()
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @ENTER_FUNC(...) #1

declare dso_local i32 @DPRINT(i32) #1

declare dso_local i64 @GetLinearAddress(i32, i32) #1

declare dso_local i64 @IsRangeValid(i32, i32) #1

declare dso_local i32 @LEAVE_FUNC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

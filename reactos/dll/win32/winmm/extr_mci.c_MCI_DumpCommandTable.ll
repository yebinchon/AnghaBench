; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/winmm/extr_mci.c_MCI_DumpCommandTable.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/winmm/extr_mci.c_MCI_DumpCommandTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [24 x i8] c"Ooops: %d is not valid\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@S_MciCmdTable = common dso_local global %struct.TYPE_2__* null, align 8
@MCI_END_COMMAND = common dso_local global i64 0, align 8
@MCI_END_COMMAND_LIST = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @MCI_DumpCommandTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MCI_DumpCommandTable(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @MCI_IsCommandTableValid(i64 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %2, align 4
  br label %57

15:                                               ; preds = %1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @S_MciCmdTable, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %4, align 8
  br label %21

21:                                               ; preds = %51, %15
  br label %22

22:                                               ; preds = %48, %21
  %23 = load i32*, i32** %4, align 8
  %24 = ptrtoint i32* %23 to i64
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @strlenW(i64 %25)
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 %29
  store i32* %31, i32** %4, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %6, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  %36 = bitcast i32* %35 to i64*
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %7, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 12
  store i32* %39, i32** %4, align 8
  br label %40

40:                                               ; preds = %22
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* @MCI_END_COMMAND, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @MCI_END_COMMAND_LIST, align 8
  %47 = icmp ne i64 %45, %46
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi i1 [ false, %40 ], [ %47, %44 ]
  br i1 %49, label %22, label %50

50:                                               ; preds = %48
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* @MCI_END_COMMAND_LIST, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %21, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* @TRUE, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %11
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @MCI_IsCommandTableValid(i64) #1

declare dso_local i32 @ERR(i8*, i64) #1

declare dso_local i32 @strlenW(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

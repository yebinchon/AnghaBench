; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_utils.c_IntelStackWalk.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_utils.c_IntelStackWalk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [45 x i8] c"IntelStackWalk(): pc = %X ebp = %X esp = %X\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"EIP      FRAME    NAME\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"IntelStackWalk(): pFrame = %X pPrevFrame = %X pc =%X\0A\00", align 1
@.str.3 = private unnamed_addr constant [72 x i8] c"IntelStackWalk(): pFrame is either unaligned or not less than previous\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"IntelStackWalk(): pFrame not valid pointer!\0A\00", align 1
@tempUtil = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"%08X %08X %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"%08X %08X\0A\00", align 1
@OUTPUT_WINDOW = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IntelStackWalk(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @DPRINT(i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %8, align 8
  store i32* %16, i32** %7, align 8
  %17 = call i32 @PutStatusText(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %3, %67
  %19 = load i32*, i32** %7, align 8
  %20 = ptrtoint i32* %19 to i32
  %21 = load i32*, i32** %8, align 8
  %22 = ptrtoint i32* %21 to i32
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @DPRINT(i32 %23)
  %25 = load i32*, i32** %7, align 8
  %26 = ptrtoint i32* %25 to i32
  %27 = and i32 %26, 3
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %18
  %30 = load i32*, i32** %7, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = icmp ule i32* %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %29, %18
  %34 = call i32 @DPRINT(i32 ptrtoint ([72 x i8]* @.str.3 to i32))
  %35 = load i32*, i32** %7, align 8
  %36 = ptrtoint i32* %35 to i32
  %37 = call i32 @IsRangeValid(i32 %36, i32 8)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = call i32 @DPRINT(i32 ptrtoint ([45 x i8]* @.str.4 to i32))
  br label %77

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %29
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @FindFunctionByAddress(i32 %43, i32* null, i32* null)
  store i32 %44, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load i32, i32* @tempUtil, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = ptrtoint i32* %49 to i32
  %51 = load i32, i32* %9, align 4
  %52 = call i32 (i32, i8*, i32, i32, ...) @PICE_sprintf(i32 %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %48, i32 %50, i32 %51)
  br label %59

53:                                               ; preds = %42
  %54 = load i32, i32* @tempUtil, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = ptrtoint i32* %56 to i32
  %58 = call i32 (i32, i8*, i32, i32, ...) @PICE_sprintf(i32 %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %55, i32 %57)
  br label %59

59:                                               ; preds = %53, %46
  %60 = load i32, i32* @OUTPUT_WINDOW, align 4
  %61 = load i32, i32* @tempUtil, align 4
  %62 = call i32 @Print(i32 %60, i32 %61)
  %63 = call i64 (...) @WaitForKey()
  %64 = load i64, i64* @FALSE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %77

67:                                               ; preds = %59
  %68 = load i32*, i32** %7, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %4, align 4
  %71 = load i32*, i32** %7, align 8
  store i32* %71, i32** %8, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i32*
  store i32* %76, i32** %7, align 8
  br label %18

77:                                               ; preds = %66, %39
  ret void
}

declare dso_local i32 @DPRINT(i32) #1

declare dso_local i32 @PutStatusText(i8*) #1

declare dso_local i32 @IsRangeValid(i32, i32) #1

declare dso_local i32 @FindFunctionByAddress(i32, i32*, i32*) #1

declare dso_local i32 @PICE_sprintf(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @Print(i32, i32) #1

declare dso_local i64 @WaitForKey(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

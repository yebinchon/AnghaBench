; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/matlab/extr_icctrans.c_HandleSwitches.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/matlab/extr_icctrans.c_HandleSwitches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"C:c:VvbBI:i:O:o:T:t:L:l:r:r:P:p:Mm\00", align 1
@EOF = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@BlackPointCompensation = common dso_local global i8* null, align 8
@xoptarg = common dso_local global i8* null, align 8
@PrecalcMode = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Unknown precalc mode '%d'\00", align 1
@Verbose = common dso_local global i8* null, align 8
@lIsDeviceLink = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Device-link already specified\00", align 1
@cInProf = common dso_local global i8* null, align 8
@cOutProf = common dso_local global i8* null, align 8
@Intent = common dso_local global i8* null, align 8
@cProofing = common dso_local global i8* null, align 8
@ProofingIntent = common dso_local global i8* null, align 8
@lMultiProfileChain = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"Unknown option.\00", align 1
@xoptind = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"Use %cm for multiprofile transforms\00", align 1
@SW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @HandleSwitches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HandleSwitches(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %6 = call i32 (...) @xoptinit()
  br label %7

7:                                                ; preds = %69, %2
  %8 = load i32, i32* %3, align 4
  %9 = load i8**, i8*** %4, align 8
  %10 = call i32 @xgetopt(i32 %8, i8** %9, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @EOF, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %70

13:                                               ; preds = %7
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %67 [
    i32 98, label %15
    i32 66, label %15
    i32 99, label %17
    i32 67, label %17
    i32 118, label %30
    i32 86, label %30
    i32 105, label %32
    i32 73, label %32
    i32 111, label %39
    i32 79, label %39
    i32 116, label %46
    i32 84, label %46
    i32 108, label %53
    i32 76, label %53
    i32 112, label %56
    i32 80, label %56
    i32 114, label %58
    i32 82, label %58
    i32 109, label %65
    i32 77, label %65
  ]

15:                                               ; preds = %13, %13
  %16 = load i8*, i8** @TRUE, align 8
  store i8* %16, i8** @BlackPointCompensation, align 8
  br label %69

17:                                               ; preds = %13, %13
  %18 = load i8*, i8** @xoptarg, align 8
  %19 = call i8* @atoi(i8* %18)
  %20 = ptrtoint i8* %19 to i32
  store i32 %20, i32* @PrecalcMode, align 4
  %21 = load i32, i32* @PrecalcMode, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @PrecalcMode, align 4
  %25 = icmp sgt i32 %24, 3
  br i1 %25, label %26, label %29

26:                                               ; preds = %23, %17
  %27 = load i32, i32* @PrecalcMode, align 4
  %28 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %26, %23
  br label %69

30:                                               ; preds = %13, %13
  %31 = load i8*, i8** @TRUE, align 8
  store i8* %31, i8** @Verbose, align 8
  br label %69

32:                                               ; preds = %13, %13
  %33 = load i8*, i8** @lIsDeviceLink, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %32
  %38 = load i8*, i8** @xoptarg, align 8
  store i8* %38, i8** @cInProf, align 8
  br label %69

39:                                               ; preds = %13, %13
  %40 = load i8*, i8** @lIsDeviceLink, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %39
  %45 = load i8*, i8** @xoptarg, align 8
  store i8* %45, i8** @cOutProf, align 8
  br label %69

46:                                               ; preds = %13, %13
  %47 = load i8*, i8** @xoptarg, align 8
  %48 = call i8* @atoi(i8* %47)
  store i8* %48, i8** @Intent, align 8
  %49 = load i8*, i8** @Intent, align 8
  %50 = icmp ult i8* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i8* null, i8** @Intent, align 8
  br label %52

52:                                               ; preds = %51, %46
  br label %69

53:                                               ; preds = %13, %13
  %54 = load i8*, i8** @xoptarg, align 8
  store i8* %54, i8** @cInProf, align 8
  %55 = load i8*, i8** @TRUE, align 8
  store i8* %55, i8** @lIsDeviceLink, align 8
  br label %69

56:                                               ; preds = %13, %13
  %57 = load i8*, i8** @xoptarg, align 8
  store i8* %57, i8** @cProofing, align 8
  br label %69

58:                                               ; preds = %13, %13
  %59 = load i8*, i8** @xoptarg, align 8
  %60 = call i8* @atoi(i8* %59)
  store i8* %60, i8** @ProofingIntent, align 8
  %61 = load i8*, i8** @ProofingIntent, align 8
  %62 = icmp ult i8* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i8* null, i8** @ProofingIntent, align 8
  br label %64

64:                                               ; preds = %63, %58
  br label %69

65:                                               ; preds = %13, %13
  %66 = load i8*, i8** @TRUE, align 8
  store i8* %66, i8** @lMultiProfileChain, align 8
  br label %69

67:                                               ; preds = %13
  %68 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %65, %64, %56, %53, %52, %44, %37, %30, %29, %15
  br label %7

70:                                               ; preds = %7
  %71 = load i32, i32* @xoptind, align 4
  %72 = load i32, i32* %3, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = load i8*, i8** @lMultiProfileChain, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* @SW, align 4
  %79 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %77, %74
  br label %81

81:                                               ; preds = %80, %70
  ret void
}

declare dso_local i32 @xoptinit(...) #1

declare dso_local i32 @xgetopt(i32, i8**, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @FatalError(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

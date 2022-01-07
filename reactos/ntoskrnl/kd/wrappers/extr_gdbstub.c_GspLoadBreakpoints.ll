; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/kd/wrappers/extr_gdbstub.c_GspLoadBreakpoints.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/kd/wrappers/extr_gdbstub.c_GspLoadBreakpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"GspLoadBreakpoints\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"DR7 on entry: 0x%08x\0A\00", align 1
@DR7_L0 = common dso_local global i32 0, align 4
@DR7_L1 = common dso_local global i32 0, align 4
@DR7_L2 = common dso_local global i32 0, align 4
@DR7_L3 = common dso_local global i32 0, align 4
@DR7_G0 = common dso_local global i32 0, align 4
@DR7_G1 = common dso_local global i32 0, align 4
@DR7_G2 = common dso_local global i32 0, align 4
@DR7_G3 = common dso_local global i32 0, align 4
@DR7_TYPE0_MASK = common dso_local global i32 0, align 4
@DR7_LEN0_MASK = common dso_local global i32 0, align 4
@DR7_TYPE1_MASK = common dso_local global i32 0, align 4
@DR7_LEN1_MASK = common dso_local global i32 0, align 4
@DR7_TYPE2_MASK = common dso_local global i32 0, align 4
@DR7_LEN2_MASK = common dso_local global i32 0, align 4
@DR7_TYPE3_MASK = common dso_local global i32 0, align 4
@DR7_LEN3_MASK = common dso_local global i32 0, align 4
@GspHwBreakpointCount = common dso_local global i32 0, align 4
@GspHwBreakpoints = common dso_local global %struct.TYPE_6__* null, align 8
@I386_BP_TYPE_EXECUTE = common dso_local global i32 0, align 4
@I386_BP_TYPE_DATA_WRITE = common dso_local global i32 0, align 4
@I386_BP_TYPE_DATA_READWRITE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@GspSwBreakpointCount = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Using real software breakpoint\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Final DR7 value 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @GspLoadBreakpoints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GspLoadBreakpoints(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* @DR7_L0, align 4
  %11 = load i32, i32* @DR7_L1, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @DR7_L2, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @DR7_L3, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @DR7_G0, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @DR7_G1, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @DR7_G2, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @DR7_G3, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @DR7_TYPE0_MASK, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @DR7_LEN0_MASK, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @DR7_TYPE1_MASK, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @DR7_LEN1_MASK, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @DR7_TYPE2_MASK, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @DR7_LEN2_MASK, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @DR7_TYPE3_MASK, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @DR7_LEN3_MASK, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %85, %1
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @GspHwBreakpointCount, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %88

50:                                               ; preds = %46
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** @GspHwBreakpoints, align 8
  %52 = load i32, i32* %3, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %63 [
    i32 129, label %57
    i32 128, label %59
    i32 130, label %61
  ]

57:                                               ; preds = %50
  %58 = load i32, i32* @I386_BP_TYPE_EXECUTE, align 4
  store i32 %58, i32* %4, align 4
  br label %67

59:                                               ; preds = %50
  %60 = load i32, i32* @I386_BP_TYPE_DATA_WRITE, align 4
  store i32 %60, i32* %4, align 4
  br label %67

61:                                               ; preds = %50
  %62 = load i32, i32* @I386_BP_TYPE_DATA_READWRITE, align 4
  store i32 %62, i32* %4, align 4
  br label %67

63:                                               ; preds = %50
  %64 = load i32, i32* @FALSE, align 4
  %65 = call i32 @ASSERT(i32 %64)
  %66 = load i32, i32* @I386_BP_TYPE_EXECUTE, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %63, %61, %59, %57
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %69 = load i32, i32* %3, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** @GspHwBreakpoints, align 8
  %71 = load i32, i32* %3, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** @GspHwBreakpoints, align 8
  %77 = load i32, i32* %3, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = sub nsw i64 %81, 1
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @GspLoadHwBreakpoint(%struct.TYPE_5__* %68, i32 %69, i32 %75, i64 %82, i32 %83)
  br label %85

85:                                               ; preds = %67
  %86 = load i32, i32* %3, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %3, align 4
  br label %46

88:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %97, %88
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* @GspSwBreakpointCount, align 4
  %92 = icmp ult i32 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %89
  %94 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @GspLoadSwBreakpoint(i32 %95)
  br label %97

97:                                               ; preds = %93
  %98 = load i32, i32* %3, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %3, align 4
  br label %89

100:                                              ; preds = %89
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  ret void
}

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @GspLoadHwBreakpoint(%struct.TYPE_5__*, i32, i32, i64, i32) #1

declare dso_local i32 @GspLoadSwBreakpoint(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

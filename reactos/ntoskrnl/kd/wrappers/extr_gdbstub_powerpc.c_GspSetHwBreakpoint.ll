; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/kd/wrappers/extr_gdbstub_powerpc.c_GspSetHwBreakpoint.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/kd/wrappers/extr_gdbstub_powerpc.c_GspSetHwBreakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [36 x i8] c"GspSetHwBreakpoint(%lu, 0x%p, %lu)\0A\00", align 1
@GDB_ZTYPE_READ_WATCHPOINT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Read watchpoint not supported\0A\00", align 1
@GspOutBuffer = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"E22\00", align 1
@GDB_ZTYPE_HARDWARE_BREAKPOINT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [44 x i8] c"Invalid length %lu for hardware breakpoint\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Invalid length %lu for GDB Z type %lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Invalid alignment for address 0x%p and length %d\0A\00", align 1
@MAX_HW_BREAKPOINTS = common dso_local global i64 0, align 8
@GspHwBreakpointCount = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [45 x i8] c"Trying to set too many hardware breakpoints\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Stored at index %u\0A\00", align 1
@GspHwBreakpoints = common dso_local global %struct.TYPE_2__* null, align 8
@.str.8 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64)* @GspSetHwBreakpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GspSetHwBreakpoint(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i32 (i8*, i64, ...) @DPRINT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %7, i64 %8, i64 %9)
  %11 = load i64, i64* @GDB_ZTYPE_READ_WATCHPOINT, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* @GspOutBuffer, align 4
  %17 = call i32 @strcpy(i32 %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %91

18:                                               ; preds = %3
  %19 = load i64, i64* @GDB_ZTYPE_HARDWARE_BREAKPOINT, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 1, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i64, i64* %6, align 8
  %27 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i64 %26)
  %28 = load i32, i32* @GspOutBuffer, align 4
  %29 = call i32 @strcpy(i32 %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %90

30:                                               ; preds = %22, %18
  %31 = load i64, i64* %6, align 8
  %32 = icmp ne i64 1, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %30
  %34 = load i64, i64* %6, align 8
  %35 = icmp ne i64 2, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load i64, i64* %6, align 8
  %38 = icmp ne i64 4, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %4, align 8
  %42 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i64 %40, i64 %41)
  %43 = load i32, i32* @GspOutBuffer, align 4
  %44 = call i32 @strcpy(i32 %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %89

45:                                               ; preds = %36, %33, %30
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = sub nsw i64 %47, 1
  %49 = and i64 %46, %48
  %50 = icmp ne i64 0, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i64 %52, i64 %53)
  %55 = load i32, i32* @GspOutBuffer, align 4
  %56 = call i32 @strcpy(i32 %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %88

57:                                               ; preds = %45
  %58 = load i64, i64* @MAX_HW_BREAKPOINTS, align 8
  %59 = load i64, i64* @GspHwBreakpointCount, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  %63 = load i32, i32* @GspOutBuffer, align 4
  %64 = call i32 @strcpy(i32 %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %87

65:                                               ; preds = %57
  %66 = load i64, i64* @GspHwBreakpointCount, align 8
  %67 = call i32 (i8*, i64, ...) @DPRINT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i64 %66)
  %68 = load i64, i64* %4, align 8
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @GspHwBreakpoints, align 8
  %70 = load i64, i64* @GspHwBreakpointCount, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  store i64 %68, i64* %72, align 8
  %73 = load i64, i64* %5, align 8
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @GspHwBreakpoints, align 8
  %75 = load i64, i64* @GspHwBreakpointCount, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  store i64 %73, i64* %77, align 8
  %78 = load i64, i64* %6, align 8
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @GspHwBreakpoints, align 8
  %80 = load i64, i64* @GspHwBreakpointCount, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i64 %78, i64* %82, align 8
  %83 = load i64, i64* @GspHwBreakpointCount, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* @GspHwBreakpointCount, align 8
  %85 = load i32, i32* @GspOutBuffer, align 4
  %86 = call i32 @strcpy(i32 %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %87

87:                                               ; preds = %65, %61
  br label %88

88:                                               ; preds = %87, %51
  br label %89

89:                                               ; preds = %88, %39
  br label %90

90:                                               ; preds = %89, %25
  br label %91

91:                                               ; preds = %90, %14
  ret void
}

declare dso_local i32 @DPRINT(i8*, i64, ...) #1

declare dso_local i32 @DPRINT1(i8*, ...) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

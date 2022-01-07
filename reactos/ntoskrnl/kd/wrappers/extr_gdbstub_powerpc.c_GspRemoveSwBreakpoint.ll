; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/kd/wrappers/extr_gdbstub_powerpc.c_GspRemoveSwBreakpoint.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/kd/wrappers/extr_gdbstub_powerpc.c_GspRemoveSwBreakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@.str = private unnamed_addr constant [29 x i8] c"GspRemoveSwBreakpoint(0x%p)\0A\00", align 1
@GspSwBreakpointCount = common dso_local global i32 0, align 4
@GspSwBreakpoints = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Found match at index %u\0A\00", align 1
@GspOutBuffer = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Not found\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"E22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @GspRemoveSwBreakpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GspRemoveSwBreakpoint(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = trunc i64 %4 to i32
  %6 = call i32 @DPRINT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %5)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %61, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @GspSwBreakpointCount, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %64

11:                                               ; preds = %7
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @GspSwBreakpoints, align 8
  %13 = load i32, i32* %3, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %2, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %60

20:                                               ; preds = %11
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @DPRINT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @GspSwBreakpoints, align 8
  %24 = load i32, i32* %3, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load i32, i32* %3, align 4
  %34 = add i32 %33, 1
  %35 = load i32, i32* @GspSwBreakpointCount, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %20
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @GspSwBreakpoints, align 8
  %39 = load i32, i32* %3, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @GspSwBreakpoints, align 8
  %43 = load i32, i32* %3, align 4
  %44 = add i32 %43, 1
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %45
  %47 = load i32, i32* @GspSwBreakpointCount, align 4
  %48 = load i32, i32* %3, align 4
  %49 = sub i32 %47, %48
  %50 = sub i32 %49, 1
  %51 = zext i32 %50 to i64
  %52 = mul i64 %51, 4
  %53 = trunc i64 %52 to i32
  %54 = call i32 @memmove(%struct.TYPE_4__* %41, %struct.TYPE_4__* %46, i32 %53)
  br label %55

55:                                               ; preds = %37, %20
  %56 = load i32, i32* @GspSwBreakpointCount, align 4
  %57 = add i32 %56, -1
  store i32 %57, i32* @GspSwBreakpointCount, align 4
  %58 = load i32, i32* @GspOutBuffer, align 4
  %59 = call i32 @strcpy(i32 %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %68

60:                                               ; preds = %11
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %3, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %7

64:                                               ; preds = %7
  %65 = call i32 @DPRINT1(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %66 = load i32, i32* @GspOutBuffer, align 4
  %67 = call i32 @strcpy(i32 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %68

68:                                               ; preds = %64, %55
  ret void
}

declare dso_local i32 @DPRINT(i8*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @memmove(%struct.TYPE_4__*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @DPRINT1(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

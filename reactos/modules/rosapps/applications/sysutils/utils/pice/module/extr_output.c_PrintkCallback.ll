; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_output.c_PrintkCallback.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_output.c_PrintkCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"In PrintkCallback\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@bInPrintk = common dso_local global i32 0, align 4
@CurrentSS = common dso_local global i32 0, align 4
@CurrentESP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"In PrintkCallback: ulAddress: %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"PrintkCallback: %s\0A\00", align 1
@PICE_KdpPrintString = common dso_local global i64 0, align 8
@CurrentEIP = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PrintkCallback() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca [128 x i32], align 16
  %9 = call i32 @DPRINT(i32 ptrtoint ([19 x i8]* @.str to i32))
  %10 = load i32, i32* @TRUE, align 4
  store i32 %10, i32* @bInPrintk, align 4
  %11 = load i32, i32* @CurrentSS, align 4
  %12 = load i32, i32* @CurrentESP, align 4
  %13 = call i32 @GetLinearAddress(i32 %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %0
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @DPRINT(i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 %20, 8
  %22 = trunc i64 %21 to i32
  %23 = call i64 @IsAddressValid(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %16
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = add i64 %27, 8
  %29 = inttoptr i64 %28 to i64*
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %31, %struct.TYPE_2__** %7, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @DPRINT(i32 %34)
  %36 = load i64, i64* @PICE_KdpPrintString, align 8
  store i64 %36, i64* @CurrentEIP, align 8
  br label %37

37:                                               ; preds = %25, %16
  br label %38

38:                                               ; preds = %37, %0
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* @bInPrintk, align 4
  ret void
}

declare dso_local i32 @DPRINT(i32) #1

declare dso_local i32 @GetLinearAddress(i32, i32) #1

declare dso_local i64 @IsAddressValid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

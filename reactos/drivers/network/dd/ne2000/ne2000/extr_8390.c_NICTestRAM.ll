; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/dd/ne2000/ne2000/extr_8390.c_NICTestRAM.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/dd/ne2000/ne2000/extr_8390.c_NICTestRAM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@MAX_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Called.\0A\00", align 1
@MIN_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"No RAM found on board.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@MID_TRACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"RAM is at (0x%X). Size is (0x%X).\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @NICTestRAM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NICTestRAM(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %5 = load i32, i32* @MAX_TRACE, align 4
  %6 = call i32 @NDIS_DbgPrint(i32 %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 1024, i32* %4, align 4
  br label %7

7:                                                ; preds = %17, %1
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 65536
  br i1 %9, label %10, label %20

10:                                               ; preds = %7
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @NICTestAddress(%struct.TYPE_4__* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %20

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %16
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 1024
  store i32 %19, i32* %4, align 4
  br label %7

20:                                               ; preds = %15, %7
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 65536
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* @MIN_TRACE, align 4
  %25 = call i32 @NDIS_DbgPrint(i32 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %2, align 4
  br label %65

27:                                               ; preds = %20
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %42, %27
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 65536
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i64 @NICTestAddress(%struct.TYPE_4__* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %45

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1024
  store i32 %44, i32* %4, align 4
  br label %32

45:                                               ; preds = %40, %32
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = sub nsw i32 %46, %50
  %52 = sext i32 %51 to i64
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load i32, i32* @MID_TRACE, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = call i32 @NDIS_DbgPrint(i32 %55, i8* %62)
  %64 = load i32, i32* @TRUE, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %45, %23
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @NDIS_DbgPrint(i32, i8*) #1

declare dso_local i64 @NICTestAddress(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

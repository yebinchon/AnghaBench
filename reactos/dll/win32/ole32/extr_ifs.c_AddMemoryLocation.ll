; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_ifs.c_AddMemoryLocation.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_ifs.c_AddMemoryLocation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32******* }

@Malloc32 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*****)* @AddMemoryLocation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AddMemoryLocation(i32***** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*****, align 8
  %4 = alloca i32*****, align 8
  %5 = alloca i32, align 4
  store i32***** %0, i32****** %3, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Malloc32, i32 0, i32 0), align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = call i32 @SetSpyedBlockTableLength(i32 4096)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %2, align 4
  br label %52

13:                                               ; preds = %8, %1
  %14 = load i32*******, i32******** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Malloc32, i32 0, i32 2), align 8
  %15 = bitcast i32******* %14 to i32*****
  store i32***** %15, i32****** %4, align 8
  br label %16

16:                                               ; preds = %44, %13
  %17 = load i32*****, i32****** %4, align 8
  %18 = load i32****, i32***** %17, align 8
  %19 = icmp ne i32**** %18, null
  br i1 %19, label %20, label %45

20:                                               ; preds = %16
  %21 = load i32*****, i32****** %4, align 8
  %22 = getelementptr inbounds i32****, i32***** %21, i32 1
  store i32***** %22, i32****** %4, align 8
  %23 = load i32*****, i32****** %4, align 8
  %24 = load i32*******, i32******** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Malloc32, i32 0, i32 2), align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Malloc32, i32 0, i32 0), align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32******, i32******* %24, i64 %26
  %28 = bitcast i32******* %27 to i32*****
  %29 = icmp uge i32***** %23, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %20
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Malloc32, i32 0, i32 0), align 8
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Malloc32, i32 0, i32 0), align 8
  %33 = add nsw i32 %32, 4096
  %34 = call i32 @SetSpyedBlockTableLength(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %2, align 4
  br label %52

38:                                               ; preds = %30
  %39 = load i32*******, i32******** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Malloc32, i32 0, i32 2), align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32******, i32******* %39, i64 %41
  %43 = bitcast i32******* %42 to i32*****
  store i32***** %43, i32****** %4, align 8
  br label %44

44:                                               ; preds = %38, %20
  br label %16

45:                                               ; preds = %16
  %46 = load i32*****, i32****** %3, align 8
  %47 = bitcast i32***** %46 to i32****
  %48 = load i32*****, i32****** %4, align 8
  store i32**** %47, i32***** %48, align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Malloc32, i32 0, i32 1), align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Malloc32, i32 0, i32 1), align 4
  %51 = load i32, i32* @TRUE, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %45, %36, %11
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @SetSpyedBlockTableLength(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

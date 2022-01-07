; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_emsdrv.c_EmsMap.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_emsdrv.c_EmsMap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EMS_STATUS_INVALID_HANDLE = common dso_local global i64 0, align 8
@EMS_PHYSICAL_PAGES = common dso_local global i64 0, align 8
@EMS_STATUS_INV_PHYSICAL_PAGE = common dso_local global i64 0, align 8
@Mapping = common dso_local global i32** null, align 8
@EMS_STATUS_SUCCESS = common dso_local global i64 0, align 8
@EMS_STATUS_INV_LOGICAL_PAGE = common dso_local global i64 0, align 8
@EmsMemory = common dso_local global i64 0, align 8
@EmsPageTable = common dso_local global i32 0, align 4
@EMS_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i32)* @EmsMap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @EmsMap(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @GetEmsHandleRecord(i32 %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = call i32 @ValidateHandle(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* @EMS_STATUS_INVALID_HANDLE, align 8
  store i64 %16, i64* %4, align 8
  br label %53

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @EMS_PHYSICAL_PAGES, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i64, i64* @EMS_STATUS_INV_PHYSICAL_PAGE, align 8
  store i64 %22, i64* %4, align 8
  br label %53

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 65535
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32**, i32*** @Mapping, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds i32*, i32** %27, i64 %28
  store i32* null, i32** %29, align 8
  %30 = load i64, i64* @EMS_STATUS_SUCCESS, align 8
  store i64 %30, i64* %4, align 8
  br label %53

31:                                               ; preds = %23
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @GetLogicalPage(i32 %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %31
  %38 = load i64, i64* @EMS_STATUS_INV_LOGICAL_PAGE, align 8
  store i64 %38, i64* %4, align 8
  br label %53

39:                                               ; preds = %31
  %40 = load i64, i64* @EmsMemory, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @EmsPageTable, align 4
  %43 = call i32 @ARRAY_INDEX(i32 %41, i32 %42)
  %44 = load i32, i32* @EMS_PAGE_SIZE, align 4
  %45 = mul nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %40, %46
  %48 = inttoptr i64 %47 to i32*
  %49 = load i32**, i32*** @Mapping, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds i32*, i32** %49, i64 %50
  store i32* %48, i32** %51, align 8
  %52 = load i64, i64* @EMS_STATUS_SUCCESS, align 8
  store i64 %52, i64* %4, align 8
  br label %53

53:                                               ; preds = %39, %37, %26, %21, %15
  %54 = load i64, i64* %4, align 8
  ret i64 %54
}

declare dso_local i32 @GetEmsHandleRecord(i32) #1

declare dso_local i32 @ValidateHandle(i32) #1

declare dso_local i32 @GetLogicalPage(i32, i32) #1

declare dso_local i32 @ARRAY_INDEX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

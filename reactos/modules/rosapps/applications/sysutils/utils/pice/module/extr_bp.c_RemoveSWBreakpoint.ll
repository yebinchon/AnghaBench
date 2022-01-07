; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_bp.c_RemoveSWBreakpoint.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_bp.c_RemoveSWBreakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32, i64 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"RemoveSWBreakpoint()\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @RemoveSWBreakpoint(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i64, i64* @FALSE, align 8
  store i64 %6, i64* %4, align 8
  %7 = call i32 (...) @ENTER_FUNC()
  %8 = call i32 @DPRINT(i32 ptrtoint ([22 x i8]* @.str to i32))
  %9 = load i32, i32* %2, align 4
  %10 = call %struct.TYPE_4__* @FindSwBp(i32 %9)
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %3, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %55

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = call i64 @IsAddressValid(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %51

16:                                               ; preds = %12
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TRUE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %51

22:                                               ; preds = %16
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @FALSE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %22
  %29 = load i32, i32* %2, align 4
  %30 = call i64 @IsAddressWriteable(i32 %29)
  store i64 %30, i64* %5, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %2, align 4
  %34 = load i64, i64* @TRUE, align 8
  %35 = call i32 @SetAddressWriteable(i32 %33, i64 %34)
  br label %36

36:                                               ; preds = %32, %28
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i32*
  store i32 %39, i32* %43, align 4
  %44 = load i64, i64* %5, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %36
  %47 = load i32, i32* %2, align 4
  %48 = load i64, i64* @FALSE, align 8
  %49 = call i32 @SetAddressWriteable(i32 %47, i64 %48)
  br label %50

50:                                               ; preds = %46, %36
  br label %51

51:                                               ; preds = %50, %22, %16, %12
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %53 = call i32 @PICE_memset(%struct.TYPE_4__* %52, i32 0, i32 32)
  %54 = load i64, i64* @TRUE, align 8
  store i64 %54, i64* %4, align 8
  br label %55

55:                                               ; preds = %51, %1
  %56 = call i32 (...) @LEAVE_FUNC()
  %57 = load i64, i64* %4, align 8
  ret i64 %57
}

declare dso_local i32 @ENTER_FUNC(...) #1

declare dso_local i32 @DPRINT(i32) #1

declare dso_local %struct.TYPE_4__* @FindSwBp(i32) #1

declare dso_local i64 @IsAddressValid(i32) #1

declare dso_local i64 @IsAddressWriteable(i32) #1

declare dso_local i32 @SetAddressWriteable(i32, i64) #1

declare dso_local i32 @PICE_memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @LEAVE_FUNC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

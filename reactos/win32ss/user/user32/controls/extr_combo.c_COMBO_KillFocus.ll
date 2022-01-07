; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_combo.c_COMBO_KillFocus.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_combo.c_COMBO_KillFocus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@CBF_FOCUSED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@CBS_DROPDOWNLIST = common dso_local global i64 0, align 8
@LB_CARETOFF = common dso_local global i32 0, align 4
@CBF_EDIT = common dso_local global i32 0, align 4
@CBN_KILLFOCUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @COMBO_KillFocus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @COMBO_KillFocus(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @CBF_FOCUSED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %58

13:                                               ; preds = %1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = load i32, i32* @FALSE, align 4
  %16 = load i32, i32* @TRUE, align 4
  %17 = call i32 @CBRollUp(%struct.TYPE_6__* %14, i32 %15, i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @IsWindow(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %57

21:                                               ; preds = %13
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = call i64 @CB_GETTYPE(%struct.TYPE_6__* %22)
  %24 = load i64, i64* @CBS_DROPDOWNLIST, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @LB_CARETOFF, align 4
  %31 = call i32 @SendMessageW(i32 %29, i32 %30, i32 0, i32 0)
  br label %32

32:                                               ; preds = %26, %21
  %33 = load i32, i32* @CBF_FOCUSED, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @CBF_EDIT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %32
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* @TRUE, align 4
  %52 = call i32 @InvalidateRect(i32 %48, i32* %50, i32 %51)
  br label %53

53:                                               ; preds = %45, %32
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %55 = load i32, i32* @CBN_KILLFOCUS, align 4
  %56 = call i32 @CB_NOTIFY(%struct.TYPE_6__* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %13
  br label %58

58:                                               ; preds = %57, %1
  ret void
}

declare dso_local i32 @CBRollUp(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @IsWindow(i32) #1

declare dso_local i64 @CB_GETTYPE(%struct.TYPE_6__*) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @InvalidateRect(i32, i32*, i32) #1

declare dso_local i32 @CB_NOTIFY(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

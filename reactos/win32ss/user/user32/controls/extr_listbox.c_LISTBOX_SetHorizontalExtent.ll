; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_listbox.c_LISTBOX_SetHorizontalExtent.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_listbox.c_LISTBOX_SetHorizontalExtent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i64, i64, i32 }
%struct.TYPE_6__ = type { i32, i64, i32, i64 }

@LBS_MULTICOLUMN = common dso_local global i32 0, align 4
@LB_OKAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"[%p]: new horz extent = %d\0A\00", align 1
@WS_HSCROLL = common dso_local global i32 0, align 4
@SIF_RANGE = common dso_local global i32 0, align 4
@LBS_DISABLENOSCROLL = common dso_local global i32 0, align 4
@SIF_DISABLENOSCROLL = common dso_local global i32 0, align 4
@SB_HORZ = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64)* @LISTBOX_SetHorizontalExtent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LISTBOX_SetHorizontalExtent(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @LBS_MULTICOLUMN, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @LB_OKAY, align 4
  store i32 %14, i32* %3, align 4
  br label %94

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @LB_OKAY, align 4
  store i32 %22, i32* %3, align 4
  br label %94

23:                                               ; preds = %15
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %26, i64 %27)
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @WS_HSCROLL, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %74

38:                                               ; preds = %23
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32 32, i32* %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %48, 1
  br label %51

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50, %45
  %52 = phi i64 [ %49, %45 ], [ 0, %50 ]
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  store i64 %52, i64* %53, align 8
  %54 = load i32, i32* @SIF_RANGE, align 4
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  store i32 %54, i32* %55, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @LBS_DISABLENOSCROLL, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %51
  %63 = load i32, i32* @SIF_DISABLENOSCROLL, align 4
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %63
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %62, %51
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @SB_HORZ, align 4
  %72 = load i32, i32* @TRUE, align 4
  %73 = call i32 @SetScrollInfo(i32 %70, i32 %71, %struct.TYPE_6__* %6, i32 %72)
  br label %74

74:                                               ; preds = %67, %23
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %5, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = sub nsw i64 %78, %81
  %83 = icmp sgt i64 %77, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %74
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %86 = load i64, i64* %5, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %86, %89
  %91 = call i32 @LISTBOX_SetHorizontalPos(%struct.TYPE_7__* %85, i64 %90)
  br label %92

92:                                               ; preds = %84, %74
  %93 = load i32, i32* @LB_OKAY, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %92, %21, %13
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @TRACE(i8*, i32, i64) #1

declare dso_local i32 @SetScrollInfo(i32, i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @LISTBOX_SetHorizontalPos(%struct.TYPE_7__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

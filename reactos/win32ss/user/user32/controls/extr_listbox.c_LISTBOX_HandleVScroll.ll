; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_listbox.c_LISTBOX_HandleVScroll.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_listbox.c_LISTBOX_HandleVScroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@LBS_MULTICOLUMN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SIF_TRACKPOS = common dso_local global i32 0, align 4
@SB_VERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32)* @LISTBOX_HandleVScroll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LISTBOX_HandleVScroll(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @LBS_MULTICOLUMN, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %85

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %84 [
    i32 133, label %18
    i32 134, label %26
    i32 131, label %34
    i32 132, label %44
    i32 130, label %54
    i32 129, label %59
    i32 128, label %73
    i32 135, label %77
  ]

18:                                               ; preds = %16
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, 1
  %24 = load i32, i32* @TRUE, align 4
  %25 = call i32 @LISTBOX_SetTopItem(%struct.TYPE_8__* %19, i32 %23, i32 %24)
  br label %84

26:                                               ; preds = %16
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  %32 = load i32, i32* @TRUE, align 4
  %33 = call i32 @LISTBOX_SetTopItem(%struct.TYPE_8__* %27, i32 %31, i32 %32)
  br label %84

34:                                               ; preds = %16
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = call i32 @LISTBOX_GetCurrentPageSize(%struct.TYPE_8__* %39)
  %41 = sub nsw i32 %38, %40
  %42 = load i32, i32* @TRUE, align 4
  %43 = call i32 @LISTBOX_SetTopItem(%struct.TYPE_8__* %35, i32 %41, i32 %42)
  br label %84

44:                                               ; preds = %16
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %50 = call i32 @LISTBOX_GetCurrentPageSize(%struct.TYPE_8__* %49)
  %51 = add nsw i32 %48, %50
  %52 = load i32, i32* @TRUE, align 4
  %53 = call i32 @LISTBOX_SetTopItem(%struct.TYPE_8__* %45, i32 %51, i32 %52)
  br label %84

54:                                               ; preds = %16
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @TRUE, align 4
  %58 = call i32 @LISTBOX_SetTopItem(%struct.TYPE_8__* %55, i32 %56, i32 %57)
  br label %84

59:                                               ; preds = %16
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i32 12, i32* %60, align 4
  %61 = load i32, i32* @SIF_TRACKPOS, align 4
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  store i32 %61, i32* %62, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @SB_VERT, align 4
  %67 = call i32 @GetScrollInfo(i32 %65, i32 %66, %struct.TYPE_7__* %8)
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @TRUE, align 4
  %72 = call i32 @LISTBOX_SetTopItem(%struct.TYPE_8__* %68, i32 %70, i32 %71)
  br label %84

73:                                               ; preds = %16
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = load i32, i32* @TRUE, align 4
  %76 = call i32 @LISTBOX_SetTopItem(%struct.TYPE_8__* %74, i32 0, i32 %75)
  br label %84

77:                                               ; preds = %16
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @TRUE, align 4
  %83 = call i32 @LISTBOX_SetTopItem(%struct.TYPE_8__* %78, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %16, %77, %73, %59, %54, %44, %34, %26, %18
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %15
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @LISTBOX_SetTopItem(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @LISTBOX_GetCurrentPageSize(%struct.TYPE_8__*) #1

declare dso_local i32 @GetScrollInfo(i32, i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

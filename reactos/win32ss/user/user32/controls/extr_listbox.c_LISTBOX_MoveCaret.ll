; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_listbox.c_LISTBOX_MoveCaret.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_listbox.c_LISTBOX_MoveCaret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, i64 }

@.str = private unnamed_addr constant [24 x i8] c"old focus %d, index %d\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@LBS_EXTENDEDSEL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@LBS_MULTIPLESEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i64, i32)* @LISTBOX_MoveCaret to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LISTBOX_MoveCaret(%struct.TYPE_7__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %11, i64 %12)
  %14 = load i64, i64* %5, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %3
  br label %94

23:                                               ; preds = %16
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = load i32, i32* @FALSE, align 4
  %26 = call i32 @LISTBOX_DrawFocusRect(%struct.TYPE_7__* %24, i32 %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @LBS_EXTENDEDSEL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %69

33:                                               ; preds = %23
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, -1
  br i1 %37, label %38, label %68

38:                                               ; preds = %33
  %39 = load i64, i64* %5, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @min(i64 %39, i32 %42)
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @max(i64 %44, i32 %47)
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %38
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = load i64, i64* %7, align 8
  %54 = sub nsw i64 %53, 1
  %55 = load i32, i32* @FALSE, align 4
  %56 = call i32 @LISTBOX_SelectItemRange(%struct.TYPE_7__* %52, i64 0, i64 %54, i32 %55)
  br label %57

57:                                               ; preds = %51, %38
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = load i64, i64* %8, align 8
  %60 = add nsw i64 %59, 1
  %61 = load i32, i32* @FALSE, align 4
  %62 = call i32 @LISTBOX_SelectItemRange(%struct.TYPE_7__* %58, i64 %60, i64 -1, i32 %61)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load i32, i32* @TRUE, align 4
  %67 = call i32 @LISTBOX_SelectItemRange(%struct.TYPE_7__* %63, i64 %64, i64 %65, i32 %66)
  br label %68

68:                                               ; preds = %57, %33
  br label %83

69:                                               ; preds = %23
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @LBS_MULTIPLESEL, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %69
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %78 = load i64, i64* %5, align 8
  %79 = load i32, i32* @TRUE, align 4
  %80 = load i32, i32* @FALSE, align 4
  %81 = call i32 @LISTBOX_SetSelection(%struct.TYPE_7__* %77, i64 %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %76, %69
  br label %83

83:                                               ; preds = %82, %68
  %84 = load i64, i64* %5, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 3
  store i64 %84, i64* %86, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %88 = load i64, i64* %5, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @LISTBOX_MakeItemVisible(%struct.TYPE_7__* %87, i64 %88, i32 %89)
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %92 = load i32, i32* @TRUE, align 4
  %93 = call i32 @LISTBOX_DrawFocusRect(%struct.TYPE_7__* %91, i32 %92)
  br label %94

94:                                               ; preds = %83, %22
  ret void
}

declare dso_local i32 @TRACE(i8*, i64, i64) #1

declare dso_local i32 @LISTBOX_DrawFocusRect(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i64 @max(i64, i32) #1

declare dso_local i32 @LISTBOX_SelectItemRange(%struct.TYPE_7__*, i64, i64, i32) #1

declare dso_local i32 @LISTBOX_SetSelection(%struct.TYPE_7__*, i64, i32, i32) #1

declare dso_local i32 @LISTBOX_MakeItemVisible(%struct.TYPE_7__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

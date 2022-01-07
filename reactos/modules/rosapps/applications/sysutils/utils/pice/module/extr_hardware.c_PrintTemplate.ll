; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_hardware.c_PrintTemplate.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_hardware.c_PrintTemplate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@wWindow = common dso_local global %struct.TYPE_2__* null, align 8
@COLOR_TEXT = common dso_local global i32 0, align 4
@COLOR_CAPTION = common dso_local global i32 0, align 4
@DATA_WINDOW = common dso_local global i64 0, align 8
@SOURCE_WINDOW = common dso_local global i64 0, align 8
@OUTPUT_WINDOW = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PrintTemplate() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @ENTER_FUNC()
  %4 = call i32 (...) @ResetColor()
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %38, %0
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 4
  br i1 %7, label %8, label %41

8:                                                ; preds = %5
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %1, align 4
  br label %15

15:                                               ; preds = %34, %8
  %16 = load i32, i32* %1, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %22, %28
  %30 = icmp slt i32 %16, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %15
  %32 = load i32, i32* %1, align 4
  %33 = call i32 @ClrLine(i32 %32)
  br label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %1, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %1, align 4
  br label %15

37:                                               ; preds = %15
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %2, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %2, align 4
  br label %5

41:                                               ; preds = %5
  %42 = call i32 (...) @PrintCaption()
  %43 = load i32, i32* @COLOR_TEXT, align 4
  %44 = call i32 @SetForegroundColor(i32 %43)
  %45 = load i32, i32* @COLOR_CAPTION, align 4
  %46 = call i32 @SetBackgroundColor(i32 %45)
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %48 = load i64, i64* @DATA_WINDOW, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %51, 1
  %53 = call i32 @ClrLine(i32 %52)
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %55 = load i64, i64* @SOURCE_WINDOW, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %58, 1
  %60 = call i32 @ClrLine(i32 %59)
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %62 = load i64, i64* @OUTPUT_WINDOW, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %65, 1
  %67 = call i32 @ClrLine(i32 %66)
  %68 = call i32 (...) @ResetColor()
  %69 = call i32 (...) @ShowRunningMsg()
  %70 = load i32, i32* @TRUE, align 4
  %71 = call i32 @PrintLogo(i32 %70)
  %72 = call i32 (...) @LEAVE_FUNC()
  ret void
}

declare dso_local i32 @ENTER_FUNC(...) #1

declare dso_local i32 @ResetColor(...) #1

declare dso_local i32 @ClrLine(i32) #1

declare dso_local i32 @PrintCaption(...) #1

declare dso_local i32 @SetForegroundColor(i32) #1

declare dso_local i32 @SetBackgroundColor(i32) #1

declare dso_local i32 @ShowRunningMsg(...) #1

declare dso_local i32 @PrintLogo(i32) #1

declare dso_local i32 @LEAVE_FUNC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

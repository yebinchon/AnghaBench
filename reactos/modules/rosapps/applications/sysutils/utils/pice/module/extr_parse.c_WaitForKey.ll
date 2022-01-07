; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_parse.c_WaitForKey.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_parse.c_WaitForKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@TRUE = common dso_local global i32 0, align 4
@ulCountForWaitKey = common dso_local global i64 0, align 8
@wWindow = common dso_local global %struct.TYPE_2__* null, align 8
@OUTPUT_WINDOW = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@WHITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c" Press any key to continue listing or press ESC to stop... \00", align 1
@ucKeyPressedWhileIdle = common dso_local global i64 0, align 8
@BLACK = common dso_local global i32 0, align 4
@SCANCODE_ESC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WaitForKey() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @TRUE, align 4
  store i32 %2, i32* %1, align 4
  %3 = load i64, i64* @ulCountForWaitKey, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32, i32* @TRUE, align 4
  %7 = call i32 @SuspendPrintRingBuffer(i32 %6)
  br label %8

8:                                                ; preds = %5, %0
  %9 = load i64, i64* @ulCountForWaitKey, align 8
  %10 = add nsw i64 %9, 1
  store i64 %10, i64* @ulCountForWaitKey, align 8
  %11 = load i64, i64* @ulCountForWaitKey, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %13 = load i64, i64* @OUTPUT_WINDOW, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = icmp eq i64 %11, %18
  br i1 %19, label %20, label %74

20:                                               ; preds = %8
  %21 = load i32, i32* @FALSE, align 4
  %22 = call i32 @SuspendPrintRingBuffer(i32 %21)
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %24 = load i64, i64* @OUTPUT_WINDOW, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  %29 = call i32 @PrintRingBuffer(i32 %28)
  store i64 0, i64* @ulCountForWaitKey, align 8
  %30 = load i32, i32* @WHITE, align 4
  %31 = call i32 @SetBackgroundColor(i32 %30)
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %33 = load i64, i64* @OUTPUT_WINDOW, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %38 = load i64, i64* @OUTPUT_WINDOW, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %36, %42
  %44 = call i32 @ClrLine(i64 %43)
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %46 = load i64, i64* @OUTPUT_WINDOW, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %51 = load i64, i64* @OUTPUT_WINDOW, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %49, %55
  %57 = call i32 @PutChar(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 1, i64 %56)
  store i64 0, i64* @ucKeyPressedWhileIdle, align 8
  br label %58

58:                                               ; preds = %62, %20
  %59 = call i64 (...) @GetKeyPolled()
  store i64 %59, i64* @ucKeyPressedWhileIdle, align 8
  %60 = icmp ne i64 %59, 0
  %61 = xor i1 %60, true
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* @FALSE, align 4
  %64 = call i32 @PrintCursor(i32 %63)
  br label %58

65:                                               ; preds = %58
  %66 = load i32, i32* @BLACK, align 4
  %67 = call i32 @SetBackgroundColor(i32 %66)
  %68 = load i64, i64* @ucKeyPressedWhileIdle, align 8
  %69 = load i64, i64* @SCANCODE_ESC, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* @FALSE, align 4
  store i32 %72, i32* %1, align 4
  br label %73

73:                                               ; preds = %71, %65
  store i64 0, i64* @ucKeyPressedWhileIdle, align 8
  br label %74

74:                                               ; preds = %73, %8
  %75 = load i32, i32* %1, align 4
  ret i32 %75
}

declare dso_local i32 @SuspendPrintRingBuffer(i32) #1

declare dso_local i32 @PrintRingBuffer(i32) #1

declare dso_local i32 @SetBackgroundColor(i32) #1

declare dso_local i32 @ClrLine(i64) #1

declare dso_local i32 @PutChar(i8*, i32, i64) #1

declare dso_local i64 @GetKeyPolled(...) #1

declare dso_local i32 @PrintCursor(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

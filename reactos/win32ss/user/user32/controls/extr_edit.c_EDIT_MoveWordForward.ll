; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_MoveWordForward.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_MoveWordForward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i32, i32 }

@ES_MULTILINE = common dso_local global i32 0, align 4
@WB_RIGHT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32)* @EDIT_MoveWordForward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EDIT_MoveWordForward(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i64 @EDIT_EM_LineFromChar(%struct.TYPE_9__* %16, i64 %17)
  store i64 %18, i64* %7, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @EDIT_EM_LineLength(%struct.TYPE_9__* %19, i64 %20)
  store i64 %21, i64* %8, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i64 @EDIT_EM_LineIndex(%struct.TYPE_9__* %22, i64 %23)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %9, align 8
  %27 = sub nsw i64 %25, %26
  %28 = load i64, i64* %8, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %2
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @ES_MULTILINE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %30
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = icmp ne i64 %38, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %47 = load i64, i64* %7, align 8
  %48 = add nsw i64 %47, 1
  %49 = call i64 @EDIT_EM_LineIndex(%struct.TYPE_9__* %46, i64 %48)
  store i64 %49, i64* %6, align 8
  br label %50

50:                                               ; preds = %45, %37, %30
  br label %63

51:                                               ; preds = %2
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* %9, align 8
  %57 = sub nsw i64 %55, %56
  %58 = add nsw i64 %57, 1
  %59 = load i64, i64* %8, align 8
  %60 = load i32, i32* @WB_RIGHT, align 4
  %61 = call i64 @EDIT_CallWordBreakProc(%struct.TYPE_9__* %53, i64 %54, i64 %58, i64 %59, i32 %60)
  %62 = add nsw i64 %52, %61
  store i64 %62, i64* %6, align 8
  br label %63

63:                                               ; preds = %51, %50
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = load i64, i64* %6, align 8
  store i64 %67, i64* %5, align 8
  br label %68

68:                                               ; preds = %66, %63
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %70 = load i64, i64* %5, align 8
  %71 = load i64, i64* %6, align 8
  %72 = load i32, i32* @FALSE, align 4
  %73 = call i32 @EDIT_EM_SetSel(%struct.TYPE_9__* %69, i64 %70, i64 %71, i32 %72)
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %75 = call i32 @EDIT_EM_ScrollCaret(%struct.TYPE_9__* %74)
  ret void
}

declare dso_local i64 @EDIT_EM_LineFromChar(%struct.TYPE_9__*, i64) #1

declare dso_local i64 @EDIT_EM_LineLength(%struct.TYPE_9__*, i64) #1

declare dso_local i64 @EDIT_EM_LineIndex(%struct.TYPE_9__*, i64) #1

declare dso_local i64 @EDIT_CallWordBreakProc(%struct.TYPE_9__*, i64, i64, i64, i32) #1

declare dso_local i32 @EDIT_EM_SetSel(%struct.TYPE_9__*, i64, i64, i32) #1

declare dso_local i32 @EDIT_EM_ScrollCaret(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

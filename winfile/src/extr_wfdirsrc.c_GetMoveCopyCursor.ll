; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfdirsrc.c_GetMoveCopyCursor.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfdirsrc.c_GetMoveCopyCursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fShowSourceBitmaps = common dso_local global i64 0, align 8
@hAppInstance = common dso_local global i32 0, align 4
@iCurDrag = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetMoveCopyCursor() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @fShowSourceBitmaps, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  %5 = load i32, i32* @hAppInstance, align 4
  %6 = load i32, i32* @iCurDrag, align 4
  %7 = or i32 %6, 1
  %8 = call i64 @MAKEINTRESOURCE(i32 %7)
  %9 = trunc i64 %8 to i32
  %10 = call i32 @LoadCursor(i32 %5, i32 %9)
  store i32 %10, i32* %1, align 4
  br label %18

11:                                               ; preds = %0
  %12 = load i32, i32* @hAppInstance, align 4
  %13 = load i32, i32* @iCurDrag, align 4
  %14 = and i32 %13, -2
  %15 = call i64 @MAKEINTRESOURCE(i32 %14)
  %16 = trunc i64 %15 to i32
  %17 = call i32 @LoadCursor(i32 %12, i32 %16)
  store i32 %17, i32* %1, align 4
  br label %18

18:                                               ; preds = %11, %4
  %19 = load i32, i32* %1, align 4
  ret i32 %19
}

declare dso_local i32 @LoadCursor(i32, i32) #1

declare dso_local i64 @MAKEINTRESOURCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

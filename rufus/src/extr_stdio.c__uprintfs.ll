; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_stdio.c__uprintfs.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_stdio.c__uprintfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hLog = common dso_local global i32* null, align 8
@INVALID_HANDLE_VALUE = common dso_local global i32* null, align 8
@MAX_LOG_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_uprintfs(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32* @utf8_to_wchar(i8* %4)
  store i32* %5, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @OutputDebugStringW(i32* %6)
  %8 = load i32*, i32** @hLog, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = load i32*, i32** @hLog, align 8
  %12 = load i32*, i32** @INVALID_HANDLE_VALUE, align 8
  %13 = icmp ne i32* %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %10
  %15 = load i32*, i32** @hLog, align 8
  %16 = load i32, i32* @MAX_LOG_SIZE, align 4
  %17 = load i32, i32* @MAX_LOG_SIZE, align 4
  %18 = call i32 @Edit_SetSel(i32* %15, i32 %16, i32 %17)
  %19 = load i32*, i32** @hLog, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @Edit_ReplaceSel(i32* %19, i32* %20)
  %22 = load i32*, i32** @hLog, align 8
  %23 = load i32*, i32** @hLog, align 8
  %24 = call i32 @Edit_GetLineCount(i32* %23)
  %25 = call i32 @Edit_Scroll(i32* %22, i32 %24, i32 0)
  br label %26

26:                                               ; preds = %14, %10, %1
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @free(i32* %27)
  ret void
}

declare dso_local i32* @utf8_to_wchar(i8*) #1

declare dso_local i32 @OutputDebugStringW(i32*) #1

declare dso_local i32 @Edit_SetSel(i32*, i32, i32) #1

declare dso_local i32 @Edit_ReplaceSel(i32*, i32*) #1

declare dso_local i32 @Edit_Scroll(i32*, i32, i32) #1

declare dso_local i32 @Edit_GetLineCount(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

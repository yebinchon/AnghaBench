; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/edit/extr_edittest.c_HandleSetHandlePrintHex.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/edit/extr_edittest.c_HandleSetHandlePrintHex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EM_GETHANDLE = common dso_local global i32 0, align 4
@UnicodeUsed = common dso_local global i64 0, align 8
@LMEM_MOVEABLE = common dso_local global i32 0, align 4
@LMEM_ZEROINIT = common dso_local global i32 0, align 4
@NewTextW = common dso_local global i32 0, align 4
@NewText = common dso_local global i32 0, align 4
@EM_SETHANDLE = common dso_local global i32 0, align 4
@TextBuffer = common dso_local global i32* null, align 8
@ResultX = common dso_local global i32 0, align 4
@ResultY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @HandleSetHandlePrintHex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HandleSetHandlePrintHex(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @EM_GETHANDLE, align 4
  %15 = call i32 @SendMessage(i32 %13, i32 %14, i32 0, i64 0)
  %16 = call i32 @LocalFree(i32 %15)
  %17 = load i64, i64* @UnicodeUsed, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %4
  %20 = load i32, i32* @LMEM_MOVEABLE, align 4
  %21 = load i32, i32* @LMEM_ZEROINIT, align 4
  %22 = or i32 %20, %21
  %23 = call i64 @LocalAlloc(i32 %22, i32 100)
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* %11, align 8
  %25 = call i64 @LocalLock(i64 %24)
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = inttoptr i64 %26 to i32*
  %28 = load i32, i32* @NewTextW, align 4
  %29 = call i32 @strcpyw_(i32* %27, i32 %28)
  br label %41

30:                                               ; preds = %4
  %31 = load i32, i32* @LMEM_MOVEABLE, align 4
  %32 = load i32, i32* @LMEM_ZEROINIT, align 4
  %33 = or i32 %31, %32
  %34 = call i64 @LocalAlloc(i32 %33, i32 50)
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %11, align 8
  %36 = call i64 @LocalLock(i64 %35)
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = load i32, i32* @NewText, align 4
  %40 = call i32 @strcpy_(i8* %38, i32 %39)
  br label %41

41:                                               ; preds = %30, %19
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @LocalUnlock(i64 %42)
  %44 = load i64, i64* %10, align 8
  %45 = call i64 @LocalHandle(i64 %44)
  store i64 %45, i64* %11, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @EM_SETHANDLE, align 4
  %48 = load i64, i64* %11, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 @SendMessage(i32 %46, i32 %47, i32 %49, i64 0)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32*, i32** @TextBuffer, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 8
  %54 = call i32 @htoa(i32 %51, i32* %53)
  %55 = load i32*, i32** @TextBuffer, align 8
  %56 = load i32, i32* @ResultX, align 4
  %57 = load i32, i32* @ResultY, align 4
  %58 = call i32 @PrintTextXY(i32* %55, i32 %56, i32 %57, i32 16)
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @LocalFree(i32) #1

declare dso_local i32 @SendMessage(i32, i32, i32, i64) #1

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local i64 @LocalLock(i64) #1

declare dso_local i32 @strcpyw_(i32*, i32) #1

declare dso_local i32 @strcpy_(i8*, i32) #1

declare dso_local i32 @LocalUnlock(i64) #1

declare dso_local i64 @LocalHandle(i64) #1

declare dso_local i32 @htoa(i32, i32*) #1

declare dso_local i32 @PrintTextXY(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

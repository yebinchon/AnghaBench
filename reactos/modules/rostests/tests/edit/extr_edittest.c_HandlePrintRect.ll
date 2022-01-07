; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/edit/extr_edittest.c_HandlePrintRect.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/edit/extr_edittest.c_HandlePrintRect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@BUFFERLEN = common dso_local global i32 0, align 4
@TextBuffer = common dso_local global i8* null, align 8
@rect = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ResultX = common dso_local global i32 0, align 4
@ResultY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @HandlePrintRect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HandlePrintRect(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* @BUFFERLEN, align 4
  %11 = sub nsw i32 %10, 8
  %12 = trunc i32 %11 to i8
  %13 = load i8*, i8** @TextBuffer, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 8
  store i8 %12, i8* %14, align 1
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @SendMessage(i32 %15, i32 %16, i32 %17, i32 %18)
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rect, i32 0, i32 3), align 4
  %21 = load i8*, i8** @TextBuffer, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 8
  %23 = call i32 @htoa(i32 %20, i8* %22)
  %24 = load i8*, i8** @TextBuffer, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 16
  store i8 32, i8* %25, align 1
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rect, i32 0, i32 2), align 4
  %27 = load i8*, i8** @TextBuffer, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 17
  %29 = call i32 @htoa(i32 %26, i8* %28)
  %30 = load i8*, i8** @TextBuffer, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 25
  store i8 32, i8* %31, align 1
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rect, i32 0, i32 1), align 4
  %33 = load i8*, i8** @TextBuffer, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 26
  %35 = call i32 @htoa(i32 %32, i8* %34)
  %36 = load i8*, i8** @TextBuffer, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 34
  store i8 32, i8* %37, align 1
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rect, i32 0, i32 0), align 4
  %39 = load i8*, i8** @TextBuffer, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 35
  %41 = call i32 @htoa(i32 %38, i8* %40)
  %42 = load i8*, i8** @TextBuffer, align 8
  %43 = load i32, i32* @ResultX, align 4
  %44 = load i32, i32* @ResultY, align 4
  %45 = call i32 @PrintTextXY(i8* %42, i32 %43, i32 %44, i32 43)
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @SendMessage(i32, i32, i32, i32) #1

declare dso_local i32 @htoa(i32, i8*) #1

declare dso_local i32 @PrintTextXY(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

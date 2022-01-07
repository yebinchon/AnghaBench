; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_writer.c_ME_StreamOut.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_writer.c_ME_StreamOut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }

@SFF_SELECTION = common dso_local global i32 0, align 4
@SF_RTF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ME_StreamOut(%struct.TYPE_7__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @SFF_SELECTION, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %3
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = call i64 @ME_GetSelectionOfs(%struct.TYPE_7__* %19, i32* %9, i32* %10)
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %9, align 4
  %25 = sub nsw i32 %23, %24
  store i32 %25, i32* %8, align 4
  br label %39

26:                                               ; preds = %3
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = call i32 @ME_SetCursorToStart(%struct.TYPE_7__* %27, i32* %7)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = call i32 @ME_GetTextLength(%struct.TYPE_7__* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @SF_RTF, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %35, %26
  br label %39

39:                                               ; preds = %38, %15
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @ME_StreamOutRange(%struct.TYPE_7__* %40, i32 %41, i32* %7, i32 %42, i32* %43)
  ret i32 %44
}

declare dso_local i64 @ME_GetSelectionOfs(%struct.TYPE_7__*, i32*, i32*) #1

declare dso_local i32 @ME_SetCursorToStart(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @ME_GetTextLength(%struct.TYPE_7__*) #1

declare dso_local i32 @ME_StreamOutRange(%struct.TYPE_7__*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

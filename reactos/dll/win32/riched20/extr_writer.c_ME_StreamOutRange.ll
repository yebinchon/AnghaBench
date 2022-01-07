; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_writer.c_ME_StreamOutRange.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_writer.c_ME_StreamOutRange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@SF_RTF = common dso_local global i32 0, align 4
@SF_TEXT = common dso_local global i32 0, align 4
@SF_TEXTIZED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ME_StreamOutRange(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32*, i32** %10, align 8
  %14 = call %struct.TYPE_9__* @ME_StreamOutInit(i32* %12, i32* %13)
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %11, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @SF_RTF, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %5
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @ME_StreamOutRTF(i32* %20, %struct.TYPE_9__* %21, i32* %22, i32 %23, i32 %24)
  br label %44

26:                                               ; preds = %5
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @SF_TEXT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @SF_TEXTIZED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31, %26
  %37 = load i32*, i32** %6, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @ME_StreamOutText(i32* %37, %struct.TYPE_9__* %38, i32* %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %36, %31
  br label %44

44:                                               ; preds = %43, %19
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %44
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %53 = call i32 @ME_StreamOutFlush(%struct.TYPE_9__* %52)
  br label %54

54:                                               ; preds = %51, %44
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %56 = call i32 @ME_StreamOutFree(%struct.TYPE_9__* %55)
  ret i32 %56
}

declare dso_local %struct.TYPE_9__* @ME_StreamOutInit(i32*, i32*) #1

declare dso_local i32 @ME_StreamOutRTF(i32*, %struct.TYPE_9__*, i32*, i32, i32) #1

declare dso_local i32 @ME_StreamOutText(i32*, %struct.TYPE_9__*, i32*, i32, i32) #1

declare dso_local i32 @ME_StreamOutFlush(%struct.TYPE_9__*) #1

declare dso_local i32 @ME_StreamOutFree(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

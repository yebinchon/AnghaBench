; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msg711.acm/extr_msg711.c_G711_GetFormatIndex.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msg711.acm/extr_msg711.c_G711_GetFormatIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64 }
%struct.TYPE_8__ = type { i32, i64, i64, i64 }

@PCM_Formats = common dso_local global %struct.TYPE_9__* null, align 8
@ALaw_Formats = common dso_local global %struct.TYPE_9__* null, align 8
@ULaw_Formats = common dso_local global %struct.TYPE_9__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @G711_GetFormatIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @G711_GetFormatIndex(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %22 [
    i32 128, label %10
    i32 130, label %14
    i32 129, label %18
  ]

10:                                               ; preds = %1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** @PCM_Formats, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** @PCM_Formats, align 8
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %6, align 8
  br label %23

14:                                               ; preds = %1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ALaw_Formats, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ALaw_Formats, align 8
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %6, align 8
  br label %23

18:                                               ; preds = %1
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ULaw_Formats, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ULaw_Formats, align 8
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %6, align 8
  br label %23

22:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %68

23:                                               ; preds = %18, %14, %10
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %64, %23
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %67

28:                                               ; preds = %24
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %31, %37
  br i1 %38, label %39, label %63

39:                                               ; preds = %28
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %42, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %39
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %53, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %68

63:                                               ; preds = %50, %39, %28
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %24

67:                                               ; preds = %24
  store i32 -1, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %61, %22
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_dir.c_FsdDosDateTimeToSystemTime.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_dir.c_FsdDosDateTimeToSystemTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.TYPE_7__ = type { i32, i64, i32, i32, i32, i32, i64 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FsdDosDateTimeToSystemTime(%struct.TYPE_10__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_7__, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = bitcast i32* %8 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %10, align 8
  %15 = bitcast i32* %7 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %11, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %5, align 4
  br label %55

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 6
  store i64 0, i64* %21, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 2
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store i32 %25, i32* %26, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 5
  store i32 %29, i32* %30, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 4
  store i32 %33, i32* %34, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 3
  store i32 %37, i32* %38, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  store i32 %41, i32* %42, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %45, %48
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  store i64 %49, i64* %50, align 8
  %51 = call i32 @RtlTimeFieldsToTime(%struct.TYPE_7__* %12, i32* %13)
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @ExLocalTimeToSystemTime(i32* %13, i32* %52)
  %54 = load i32, i32* @TRUE, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %20, %18
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @RtlTimeFieldsToTime(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @ExLocalTimeToSystemTime(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

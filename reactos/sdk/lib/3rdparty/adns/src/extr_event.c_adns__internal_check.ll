; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_event.c_adns__internal_check.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_event.c_adns__internal_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_16__, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_13__, i32* }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }

@EAGAIN = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adns__internal_check(%struct.TYPE_14__* %0, %struct.TYPE_15__** %1, i32** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_15__**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_15__** %1, %struct.TYPE_15__*** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %11 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_15__* %12, %struct.TYPE_15__** %10, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %14 = icmp ne %struct.TYPE_15__* %13, null
  br i1 %14, label %43, label %15

15:                                               ; preds = %4
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %20 = icmp ne %struct.TYPE_15__* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  store %struct.TYPE_15__* %25, %struct.TYPE_15__** %10, align 8
  br label %42

26:                                               ; preds = %15
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32, %26
  %39 = load i32, i32* @EAGAIN, align 4
  store i32 %39, i32* %5, align 4
  br label %75

40:                                               ; preds = %32
  %41 = load i32, i32* @ESRCH, align 4
  store i32 %41, i32* %5, align 4
  br label %75

42:                                               ; preds = %21
  br label %51

43:                                               ; preds = %4
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @EAGAIN, align 4
  store i32 %49, i32* %5, align 4
  br label %75

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %42
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  %57 = call i32 @LIST_UNLINK(%struct.TYPE_15__* %56, %struct.TYPE_15__* %54)
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i32**, i32*** %8, align 8
  store i32* %60, i32** %61, align 8
  %62 = load i8**, i8*** %9, align 8
  %63 = icmp ne i8** %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %51
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i8**, i8*** %9, align 8
  store i8* %68, i8** %69, align 8
  br label %70

70:                                               ; preds = %64, %51
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %72 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  store %struct.TYPE_15__* %71, %struct.TYPE_15__** %72, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %74 = call i32 @free(%struct.TYPE_15__* %73)
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %70, %48, %40, %38
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @LIST_UNLINK(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @free(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

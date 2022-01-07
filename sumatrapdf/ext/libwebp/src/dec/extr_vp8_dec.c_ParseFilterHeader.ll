; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_vp8_dec.c_ParseFilterHeader.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_vp8_dec.c_ParseFilterHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i8*, i8**, i8**, i8*, i8* }

@.str = private unnamed_addr constant [14 x i8] c"global-header\00", align 1
@NUM_REF_LF_DELTAS = common dso_local global i32 0, align 4
@NUM_MODE_LF_DELTAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*)* @ParseFilterHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseFilterHeader(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %5, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = call i8* @VP8Get(%struct.TYPE_11__* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  store i8* %10, i8** %12, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = call i8* @VP8GetValue(%struct.TYPE_11__* %13, i32 6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %15 = ptrtoint i8* %14 to i64
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %19 = call i8* @VP8GetValue(%struct.TYPE_11__* %18, i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 5
  store i8* %19, i8** %21, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = call i8* @VP8Get(%struct.TYPE_11__* %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 4
  store i8* %23, i8** %25, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 4
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %80

30:                                               ; preds = %2
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = call i8* @VP8Get(%struct.TYPE_11__* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %79

34:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %53, %34
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @NUM_REF_LF_DELTAS, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %35
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = call i8* @VP8Get(%struct.TYPE_11__* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = call i8* @VP8GetSignedValue(%struct.TYPE_11__* %44, i32 6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 3
  %48 = load i8**, i8*** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  store i8* %45, i8** %51, align 8
  br label %52

52:                                               ; preds = %43, %39
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %35

56:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %75, %56
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @NUM_MODE_LF_DELTAS, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %78

61:                                               ; preds = %57
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %63 = call i8* @VP8Get(%struct.TYPE_11__* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %74

65:                                               ; preds = %61
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %67 = call i8* @VP8GetSignedValue(%struct.TYPE_11__* %66, i32 6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  %70 = load i8**, i8*** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  store i8* %67, i8** %73, align 8
  br label %74

74:                                               ; preds = %65, %61
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %57

78:                                               ; preds = %57
  br label %79

79:                                               ; preds = %78, %30
  br label %80

80:                                               ; preds = %79, %2
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %93

86:                                               ; preds = %80
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 1, i32 2
  br label %93

93:                                               ; preds = %86, %85
  %94 = phi i32 [ 0, %85 ], [ %92, %86 ]
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  ret i32 %102
}

declare dso_local i8* @VP8Get(%struct.TYPE_11__*, i8*) #1

declare dso_local i8* @VP8GetValue(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local i8* @VP8GetSignedValue(%struct.TYPE_11__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

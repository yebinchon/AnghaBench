; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_parse.c_guess_freeformat_framesize.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_parse.c_guess_freeformat_framesize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_11__*, i64*)*, i32 (%struct.TYPE_11__*, i64*)*, i32 (%struct.TYPE_11__*, i64)* }
%struct.TYPE_9__ = type { i32 }

@READER_SEEKABLE = common dso_local global i32 0, align 4
@READER_BUFFERED = common dso_local global i32 0, align 4
@NOQUIET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [81 x i8] c"Cannot look for freeformat frame size with non-seekable and non-buffered stream!\00", align 1
@PARSE_BAD = common dso_local global i32 0, align 4
@MAXFRAMESIZE = common dso_local global i32 0, align 4
@HDR_SAMEMASK = common dso_local global i64 0, align 8
@PARSE_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i64)* @guess_freeformat_framesize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @guess_freeformat_framesize(%struct.TYPE_11__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @READER_SEEKABLE, align 4
  %14 = load i32, i32* @READER_BUFFERED, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %2
  %19 = load i64, i64* @NOQUIET, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 @error(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %18
  %24 = load i32, i32* @PARSE_BAD, align 4
  store i32 %24, i32* %3, align 4
  br label %91

25:                                               ; preds = %2
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32 (%struct.TYPE_11__*, i64*)*, i32 (%struct.TYPE_11__*, i64*)** %29, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = call i32 %30(%struct.TYPE_11__* %31, i64* %8)
  store i32 %32, i32* %7, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %91

36:                                               ; preds = %25
  store i64 4, i64* %6, align 8
  br label %37

37:                                               ; preds = %78, %36
  %38 = load i64, i64* %6, align 8
  %39 = load i32, i32* @MAXFRAMESIZE, align 4
  %40 = add nsw i32 %39, 4
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %38, %41
  br i1 %42, label %43, label %81

43:                                               ; preds = %37
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32 (%struct.TYPE_11__*, i64*)*, i32 (%struct.TYPE_11__*, i64*)** %47, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %50 = call i32 %48(%struct.TYPE_11__* %49, i64* %8)
  store i32 %50, i32* %7, align 4
  %51 = icmp sle i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %91

54:                                               ; preds = %43
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* @HDR_SAMEMASK, align 8
  %57 = and i64 %55, %56
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* @HDR_SAMEMASK, align 8
  %60 = and i64 %58, %59
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %54
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = load i32 (%struct.TYPE_11__*, i64)*, i32 (%struct.TYPE_11__*, i64)** %66, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %69 = load i64, i64* %6, align 8
  %70 = add nsw i64 %69, 1
  %71 = call i32 %67(%struct.TYPE_11__* %68, i64 %70)
  %72 = load i64, i64* %6, align 8
  %73 = sub nsw i64 %72, 3
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load i32, i32* @PARSE_GOOD, align 4
  store i32 %76, i32* %3, align 4
  br label %91

77:                                               ; preds = %54
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %6, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %6, align 8
  br label %37

81:                                               ; preds = %37
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 2
  %86 = load i32 (%struct.TYPE_11__*, i64)*, i32 (%struct.TYPE_11__*, i64)** %85, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %88 = load i64, i64* %6, align 8
  %89 = call i32 %86(%struct.TYPE_11__* %87, i64 %88)
  %90 = load i32, i32* @PARSE_BAD, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %81, %62, %52, %34, %23
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

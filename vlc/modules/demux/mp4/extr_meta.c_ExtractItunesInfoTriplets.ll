; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_meta.c_ExtractItunesInfoTriplets.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_meta.c_ExtractItunesInfoTriplets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64 }

@ATOM_ITUN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"mean\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"com.apple.iTunes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_11__*)* @ExtractItunesInfoTriplets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ExtractItunesInfoTriplets(i32* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ATOM_ITUN, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %104

16:                                               ; preds = %2
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = call %struct.TYPE_11__* @MP4_BoxGet(%struct.TYPE_11__* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %5, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = call %struct.TYPE_11__* @MP4_BoxGet(%struct.TYPE_11__* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %6, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = call %struct.TYPE_11__* @MP4_BoxGet(%struct.TYPE_11__* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %7, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = icmp ne %struct.TYPE_11__* %23, null
  br i1 %24, label %25, label %51

25:                                               ; preds = %16
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %31, 20
  br i1 %32, label %51, label %33

33:                                               ; preds = %25
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = icmp ne %struct.TYPE_11__* %34, null
  br i1 %35, label %36, label %51

36:                                               ; preds = %33
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %42, 5
  br i1 %43, label %51, label %44

44:                                               ; preds = %36
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %46 = icmp ne %struct.TYPE_11__* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %49 = call i32 @BOXDATA(%struct.TYPE_11__* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47, %44, %36, %33, %25, %16
  br label %104

52:                                               ; preds = %47
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i8*
  %60 = getelementptr inbounds i8, i8* %59, i64 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %66, 4
  %68 = call i32 @strncmp(i8* %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %104, label %70

70:                                               ; preds = %52
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to i8*
  %78 = getelementptr inbounds i8, i8* %77, i64 4
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sub nsw i32 %84, 4
  %86 = call i8* @strndup(i8* %78, i32 %85)
  store i8* %86, i8** %8, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %88 = call i8* @ExtractString(%struct.TYPE_11__* %87)
  store i8* %88, i8** %9, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %99

91:                                               ; preds = %70
  %92 = load i8*, i8** %9, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load i32*, i32** %3, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = call i32 @vlc_meta_AddExtra(i32* %95, i8* %96, i8* %97)
  br label %99

99:                                               ; preds = %94, %91, %70
  %100 = load i8*, i8** %8, align 8
  %101 = call i32 @free(i8* %100)
  %102 = load i8*, i8** %9, align 8
  %103 = call i32 @free(i8* %102)
  br label %104

104:                                              ; preds = %15, %51, %99, %52
  ret void
}

declare dso_local %struct.TYPE_11__* @MP4_BoxGet(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @BOXDATA(%struct.TYPE_11__*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strndup(i8*, i32) #1

declare dso_local i8* @ExtractString(%struct.TYPE_11__*) #1

declare dso_local i32 @vlc_meta_AddExtra(i32*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

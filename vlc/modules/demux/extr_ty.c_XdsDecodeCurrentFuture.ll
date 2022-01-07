; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_ty.c_XdsDecodeCurrentFuture.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_ty.c_XdsDecodeCurrentFuture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_11__, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32*, i32 }

@XdsDecodeCurrentFuture.pppsz_ratings = internal global [8 x [2 x i8*]] [[2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0)]], align 16
@.str = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"No rating (no content advisory)\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"TV-Y\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"All Children (no content advisory)\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"TV-Y7\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Directed to Older Children (V = Fantasy Violence)\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"TV-G\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"General Audience (no content advisory)\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"TV-PG\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Parental Guidance Suggested\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"TV-14\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"Parents Strongly Cautioned\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"TV-MA\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"Mature Audience Only\00", align 1
@XDS_META_PROGRAM_RATING_TPG = common dso_local global i32 0, align 4
@XdsDecodeCurrentFuture.pppsz_ratings.14 = internal global [8 x [2 x i8*]] [[2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0)]], align 16
@.str.15 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"General Audiences\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"PG\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"PG-13\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"Restricted\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"NC-17\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"No one 17 and under admitted\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"No one under 17 admitted\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"NR\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"Not Rated\00", align 1
@XDS_META_PROGRAM_RATING_MPAA = common dso_local global i32 0, align 4
@XDS_META_PROGRAM_RATING_NONE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_10__*)* @XdsDecodeCurrentFuture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XdsDecodeCurrentFuture(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca [65 x i8], align 16
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  br label %20

16:                                               ; preds = %2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi %struct.TYPE_11__* [ %15, %12 ], [ %19, %16 ]
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %5, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %116 [
    i32 3, label %25
    i32 5, label %42
  ]

25:                                               ; preds = %20
  %26 = getelementptr inbounds [65 x i8], [65 x i8]* %6, i64 0, i64 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @XdsStringUtf8(i8* %26, i32* %29, i32 %32)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 2
  %37 = getelementptr inbounds [65 x i8], [65 x i8]* %6, i64 0, i64 0
  %38 = call i32 @XdsChangeString(%struct.TYPE_9__* %34, i32* %36, i8* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %25
  br label %41

41:                                               ; preds = %40, %25
  br label %117

42:                                               ; preds = %20
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 24
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, 8
  br i1 %50, label %51, label %72

51:                                               ; preds = %42
  %52 = load i32, i32* @XDS_META_PROGRAM_RATING_TPG, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 7
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [8 x [2 x i8*]], [8 x [2 x i8*]]* @XdsDecodeCurrentFuture.pppsz_ratings, i64 0, i64 %64
  %66 = getelementptr inbounds [2 x i8*], [2 x i8*]* %65, i64 0, i64 0
  %67 = load i8*, i8** %66, align 16
  %68 = call i32 @XdsChangeString(%struct.TYPE_9__* %55, i32* %57, i8* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %51
  br label %71

71:                                               ; preds = %70, %51
  br label %115

72:                                               ; preds = %42
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %7, align 4
  %77 = icmp eq i32 %76, 16
  br i1 %77, label %78, label %99

78:                                               ; preds = %75, %72
  %79 = load i32, i32* @XDS_META_PROGRAM_RATING_MPAA, align 4
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 7
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [8 x [2 x i8*]], [8 x [2 x i8*]]* @XdsDecodeCurrentFuture.pppsz_ratings.14, i64 0, i64 %91
  %93 = getelementptr inbounds [2 x i8*], [2 x i8*]* %92, i64 0, i64 0
  %94 = load i8*, i8** %93, align 16
  %95 = call i32 @XdsChangeString(%struct.TYPE_9__* %82, i32* %84, i8* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %78
  br label %98

98:                                               ; preds = %97, %78
  br label %114

99:                                               ; preds = %75
  %100 = load i32, i32* %7, align 4
  %101 = icmp eq i32 %100, 24
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  %104 = load i32, i32* @XDS_META_PROGRAM_RATING_NONE, align 4
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = call i32 @XdsChangeString(%struct.TYPE_9__* %107, i32* %109, i8* null)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %99
  br label %113

113:                                              ; preds = %112, %99
  br label %114

114:                                              ; preds = %113, %98
  br label %115

115:                                              ; preds = %114, %71
  br label %117

116:                                              ; preds = %20
  br label %117

117:                                              ; preds = %116, %115, %41
  ret void
}

declare dso_local i32 @XdsStringUtf8(i8*, i32*, i32) #1

declare dso_local i32 @XdsChangeString(%struct.TYPE_9__*, i32*, i8*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

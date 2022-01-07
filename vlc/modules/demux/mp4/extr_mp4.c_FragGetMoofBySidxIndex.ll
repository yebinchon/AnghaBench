; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_mp4.c_FragGetMoofBySidxIndex.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_mp4.c_FragGetMoofBySidxIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64, i64, i64, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_10__*, i32, i64 }
%struct.TYPE_10__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c"sidx\00", align 1
@ATOM_sidx = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, i64*, i32*)* @FragGetMoofBySidxIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FragGetMoofBySidxIndex(%struct.TYPE_11__* %0, i32 %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %10, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_13__* @MP4_BoxGet(i32 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %11, align 8
  br label %24

24:                                               ; preds = %123, %4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %26 = icmp ne %struct.TYPE_13__* %25, null
  br i1 %26, label %27, label %127

27:                                               ; preds = %24
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ATOM_sidx, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %123

34:                                               ; preds = %27
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %36 = call %struct.TYPE_14__* @BOXDATA(%struct.TYPE_13__* %35)
  store %struct.TYPE_14__* %36, %struct.TYPE_14__** %12, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %38 = icmp ne %struct.TYPE_14__* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39, %34
  br label %127

45:                                               ; preds = %39
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @MP4_rescale_qtime(i32 %46, i32 %49)
  store i64 %50, i64* %13, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  store i64 %61, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  br label %62

62:                                               ; preds = %119, %45
  %63 = load i64, i64* %16, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ult i64 %63, %66
  br i1 %67, label %68, label %122

68:                                               ; preds = %62
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = load i64, i64* %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %119

78:                                               ; preds = %68
  %79 = load i64, i64* %15, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = load i64, i64* %16, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %79, %86
  %88 = load i64, i64* %13, align 8
  %89 = icmp sgt i64 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %78
  %91 = load i64, i64* %15, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @MP4_rescale_mtime(i64 %91, i32 %94)
  %96 = load i32*, i32** %9, align 8
  store i32 %95, i32* %96, align 4
  %97 = load i64, i64* %14, align 8
  %98 = load i64*, i64** %8, align 8
  store i64 %97, i64* %98, align 8
  %99 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %99, i32* %5, align 4
  br label %129

100:                                              ; preds = %78
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = load i64, i64* %16, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %14, align 8
  %109 = add nsw i64 %108, %107
  store i64 %109, i64* %14, align 8
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = load i64, i64* %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %15, align 8
  %118 = add nsw i64 %117, %116
  store i64 %118, i64* %15, align 8
  br label %119

119:                                              ; preds = %100, %77
  %120 = load i64, i64* %16, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %16, align 8
  br label %62

122:                                              ; preds = %62
  br label %123

123:                                              ; preds = %122, %33
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %125, align 8
  store %struct.TYPE_13__* %126, %struct.TYPE_13__** %11, align 8
  br label %24

127:                                              ; preds = %44, %24
  %128 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %127, %90
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local %struct.TYPE_13__* @MP4_BoxGet(i32, i8*) #1

declare dso_local %struct.TYPE_14__* @BOXDATA(%struct.TYPE_13__*) #1

declare dso_local i64 @MP4_rescale_qtime(i32, i32) #1

declare dso_local i32 @MP4_rescale_mtime(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

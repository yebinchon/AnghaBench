; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_mpeg4_iod.c_OD_SLDesc_Read.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_mpeg4_iod.c_OD_SLDesc_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }

@USE_TIMESTAMPS_FLAG = common dso_local global i32 0, align 4
@USE_DURATION_FLAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"   * read sl desc predefined: 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, %struct.TYPE_5__*)* @OD_SLDesc_Read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OD_SLDesc_Read(i32* %0, i32 %1, i32* %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %14, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %10, align 8
  %17 = call i8* @ODGetBytes(i32* %8, i32** %9, i32 1)
  %18 = ptrtoint i8* %17 to i32
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  switch i32 %19, label %78 [
    i32 130, label %20
    i32 128, label %65
    i32 129, label %72
  ]

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ult i32 %21, 15
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %127

24:                                               ; preds = %20
  %25 = call i8* @ODGetBytes(i32* %8, i32** %9, i32 1)
  %26 = ptrtoint i8* %25 to i32
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = call i8* @ODGetBytes(i32* %8, i32** %9, i32 4)
  %30 = ptrtoint i8* %29 to i32
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = call i8* @ODGetBytes(i32* %8, i32** %9, i32 4)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 14
  store i8* %33, i8** %35, align 8
  %36 = call i8* @ODGetBytes(i32* %8, i32** %9, i32 1)
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = call i8* @ODGetBytes(i32* %8, i32** %9, i32 1)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 13
  store i8* %40, i8** %42, align 8
  %43 = call i8* @ODGetBytes(i32* %8, i32** %9, i32 1)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 12
  store i8* %43, i8** %45, align 8
  %46 = call i8* @ODGetBytes(i32* %8, i32** %9, i32 1)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 11
  store i8* %46, i8** %48, align 8
  %49 = call i8* @ODGetBytes(i32* %8, i32** %9, i32 2)
  %50 = ptrtoint i8* %49 to i32
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = ashr i32 %51, 12
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %12, align 4
  %56 = ashr i32 %55, 7
  %57 = and i32 %56, 31
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %12, align 4
  %61 = ashr i32 %60, 2
  %62 = and i32 %61, 31
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  br label %79

65:                                               ; preds = %4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %67 = call i32 @memset(%struct.TYPE_5__* %66, i32 0, i32 96)
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  store i32 1000, i32* %69, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  store i32 32, i32* %71, align 8
  br label %79

72:                                               ; preds = %4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %74 = call i32 @memset(%struct.TYPE_5__* %73, i32 0, i32 96)
  %75 = load i32, i32* @USE_TIMESTAMPS_FLAG, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  br label %79

78:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %127

79:                                               ; preds = %72, %65, %24
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @USE_DURATION_FLAG, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %79
  %87 = load i32, i32* %8, align 4
  %88 = icmp ult i32 %87, 8
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i32 0, i32* %5, align 4
  br label %127

90:                                               ; preds = %86
  %91 = call i8* @ODGetBytes(i32* %8, i32** %9, i32 4)
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 10
  store i8* %91, i8** %93, align 8
  %94 = call i8* @ODGetBytes(i32* %8, i32** %9, i32 2)
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 9
  store i8* %94, i8** %96, align 8
  %97 = call i8* @ODGetBytes(i32* %8, i32** %9, i32 2)
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 8
  store i8* %97, i8** %99, align 8
  br label %100

100:                                              ; preds = %90, %79
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @USE_TIMESTAMPS_FLAG, align 4
  %105 = and i32 %103, %104
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %123

107:                                              ; preds = %100
  %108 = load i32*, i32** %9, align 8
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @bs_init(i32* %13, i32* %108, i32 %109)
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i8* @bs_read(i32* %13, i32 %113)
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 7
  store i8* %114, i8** %116, align 8
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i8* @bs_read(i32* %13, i32 %119)
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 6
  store i8* %120, i8** %122, align 8
  br label %123

123:                                              ; preds = %107, %100
  %124 = load i32*, i32** %7, align 8
  %125 = load i32, i32* %11, align 4
  %126 = call i32 @od_debug(i32* %124, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %125)
  store i32 1, i32* %5, align 4
  br label %127

127:                                              ; preds = %123, %89, %78, %23
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local i8* @ODGetBytes(i32*, i32**, i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @bs_init(i32*, i32*, i32) #1

declare dso_local i8* @bs_read(i32*, i32) #1

declare dso_local i32 @od_debug(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

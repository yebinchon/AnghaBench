; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc.c_ParseAUHead.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc.c_ParseAUHead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, %struct.TYPE_18__, i64, %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_21__ = type { i32*, i64 }

@MISSING = common dso_local global i64 0, align 8
@SENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_21__* (%struct.TYPE_19__*, i32, %struct.TYPE_21__*)* @ParseAUHead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_21__* @ParseAUHead(%struct.TYPE_19__* %0, i32 %1, %struct.TYPE_21__* %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %7, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  store %struct.TYPE_20__* %15, %struct.TYPE_20__** %8, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %9, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %3
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %21, %3
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MISSING, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %34, %27
  %40 = phi i1 [ false, %27 ], [ %38, %34 ]
  %41 = zext i1 %40 to i32
  %42 = call %struct.TYPE_21__* @OutputQueues(%struct.TYPE_20__* %28, i32 %41)
  store %struct.TYPE_21__* %42, %struct.TYPE_21__** %9, align 8
  br label %43

43:                                               ; preds = %39, %21
  %44 = load i32, i32* %6, align 4
  switch i32 %44, label %107 [
    i32 132, label %45
    i32 128, label %71
    i32 129, label %71
    i32 131, label %71
    i32 130, label %106
  ]

45:                                               ; preds = %43
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %47 = icmp ne %struct.TYPE_21__* %46, null
  br i1 %47, label %70, label %48

48:                                               ; preds = %45
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %48
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @MISSING, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br label %66

66:                                               ; preds = %61, %54
  %67 = phi i1 [ false, %54 ], [ %65, %61 ]
  %68 = zext i1 %67 to i32
  %69 = call %struct.TYPE_21__* @OutputQueues(%struct.TYPE_20__* %55, i32 %68)
  store %struct.TYPE_21__* %69, %struct.TYPE_21__** %9, align 8
  br label %70

70:                                               ; preds = %66, %48, %45
  br label %108

71:                                               ; preds = %43, %43, %43
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  store i32* %74, i32** %11, align 8
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %12, align 8
  %78 = call i32 @hxxx_strip_AnnexB_startcode(i32** %11, i64* %12)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %71
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @hevc_get_xps_id(i32* %83, i64 %86, i32* %10)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %80
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %94 = call i32 @InsertXPS(%struct.TYPE_19__* %90, i32 %91, i32 %92, %struct.TYPE_21__* %93)
  br label %95

95:                                               ; preds = %89, %80, %71
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @SENT, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %103 = call i32 @block_Release(%struct.TYPE_21__* %102)
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  store %struct.TYPE_21__* %104, %struct.TYPE_21__** %4, align 8
  br label %115

105:                                              ; preds = %95
  br label %108

106:                                              ; preds = %43
  br label %107

107:                                              ; preds = %43, %106
  br label %108

108:                                              ; preds = %107, %105, %70
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %113 = call i32 @block_ChainLastAppend(i32* %111, %struct.TYPE_21__* %112)
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  store %struct.TYPE_21__* %114, %struct.TYPE_21__** %4, align 8
  br label %115

115:                                              ; preds = %108, %101
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  ret %struct.TYPE_21__* %116
}

declare dso_local %struct.TYPE_21__* @OutputQueues(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @hxxx_strip_AnnexB_startcode(i32**, i64*) #1

declare dso_local i32 @hevc_get_xps_id(i32*, i64, i32*) #1

declare dso_local i32 @InsertXPS(%struct.TYPE_19__*, i32, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @block_Release(%struct.TYPE_21__*) #1

declare dso_local i32 @block_ChainLastAppend(i32*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

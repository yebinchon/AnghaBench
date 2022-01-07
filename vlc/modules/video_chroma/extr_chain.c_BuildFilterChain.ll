; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_chroma/extr_chain.c_BuildFilterChain.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_chroma/extr_chain.c_BuildFilterChain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_23__, %struct.TYPE_22__, i32, i32, i32, %struct.TYPE_19__* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32* }
%struct.TYPE_20__ = type { i64, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64, i64, i64, i64 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Trying to use chroma %4.4s as middle man\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@RestartFilterCallback = common dso_local global i32 0, align 4
@ChainMouse = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*)* @BuildFilterChain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BuildFilterChain(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.TYPE_20__, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %9 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 5
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  store %struct.TYPE_19__* %12, %struct.TYPE_19__** %5, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %14 = call i64* @get_allowed_chromas(%struct.TYPE_18__* %13)
  store i64* %14, i64** %6, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %115, %1
  %16 = load i64*, i64** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %118

22:                                               ; preds = %15
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = call i32 @filter_chain_Reset(i32 %25, %struct.TYPE_22__* %27, %struct.TYPE_23__* %29)
  %31 = load i64*, i64** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %36, %40
  br i1 %41, label %49, label %42

42:                                               ; preds = %22
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %43, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %42, %22
  br label %115

50:                                               ; preds = %42
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %52 = bitcast i64* %8 to i8*
  %53 = call i32 @msg_Dbg(%struct.TYPE_18__* %51, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %52)
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 1
  %56 = call i32 @es_format_Copy(%struct.TYPE_20__* %3, %struct.TYPE_22__* %55)
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 0
  store i64 %57, i64* %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 3
  store i64 0, i64* %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 2
  store i64 0, i64* %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 1
  %68 = call i32 @video_format_FixRgb(%struct.TYPE_21__* %67)
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @filter_chain_AppendConverter(i32 %71, %struct.TYPE_20__* %3)
  %73 = load i32, i32* @VLC_SUCCESS, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %113

75:                                               ; preds = %50
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call %struct.TYPE_24__* @filter_chain_AppendFilter(i32 %78, i32 %81, i32 %84, %struct.TYPE_20__* %3)
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 1
  store %struct.TYPE_24__* %85, %struct.TYPE_24__** %87, align 8
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %89, align 8
  %91 = icmp ne %struct.TYPE_24__* %90, null
  br i1 %91, label %92, label %112

92:                                               ; preds = %75
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %95, align 8
  %97 = load i32, i32* @RestartFilterCallback, align 4
  %98 = call i32 @filter_AddProxyCallbacks(%struct.TYPE_18__* %93, %struct.TYPE_24__* %96, i32 %97)
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %92
  %106 = load i32, i32* @ChainMouse, align 4
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  br label %109

109:                                              ; preds = %105, %92
  %110 = call i32 @es_format_Clean(%struct.TYPE_20__* %3)
  %111 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %111, i32* %4, align 4
  br label %118

112:                                              ; preds = %75
  br label %113

113:                                              ; preds = %112, %50
  %114 = call i32 @es_format_Clean(%struct.TYPE_20__* %3)
  br label %115

115:                                              ; preds = %113, %49
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %7, align 4
  br label %15

118:                                              ; preds = %109, %15
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* @VLC_SUCCESS, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %118
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 0
  %130 = call i32 @filter_chain_Reset(i32 %125, %struct.TYPE_22__* %127, %struct.TYPE_23__* %129)
  br label %131

131:                                              ; preds = %122, %118
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i64* @get_allowed_chromas(%struct.TYPE_18__*) #1

declare dso_local i32 @filter_chain_Reset(i32, %struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_18__*, i8*, i8*) #1

declare dso_local i32 @es_format_Copy(%struct.TYPE_20__*, %struct.TYPE_22__*) #1

declare dso_local i32 @video_format_FixRgb(%struct.TYPE_21__*) #1

declare dso_local i32 @filter_chain_AppendConverter(i32, %struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_24__* @filter_chain_AppendFilter(i32, i32, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @filter_AddProxyCallbacks(%struct.TYPE_18__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @es_format_Clean(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

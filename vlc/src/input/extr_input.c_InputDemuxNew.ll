; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_input.c_InputDemuxNew.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_input.c_InputDemuxNew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32*, i32*, i32* }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"stream-filter\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"input-record-native\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"record\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_18__* (i32*, %struct.TYPE_20__*, i8*, i8*, i8*)* @InputDemuxNew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_18__* @InputDemuxNew(i32* %0, %struct.TYPE_20__* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call %struct.TYPE_19__* @input_priv(i32* %17)
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %12, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32* @VLC_OBJECT(i32* %19)
  store i32* %20, i32** %13, align 8
  %21 = load i32*, i32** %13, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = call %struct.TYPE_18__* @stream_AccessNew(i32* %21, i32* %22, i32 %25, i32 %28, i8* %29)
  store %struct.TYPE_18__* %30, %struct.TYPE_18__** %14, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %32 = icmp eq %struct.TYPE_18__* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %5
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %6, align 8
  br label %109

34:                                               ; preds = %5
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %36 = call %struct.TYPE_18__* @stream_FilterAutoNew(%struct.TYPE_18__* %35)
  store %struct.TYPE_18__* %36, %struct.TYPE_18__** %14, align 8
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %63

41:                                               ; preds = %34
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %63

46:                                               ; preds = %41
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %63

51:                                               ; preds = %46
  %52 = load i8*, i8** %11, align 8
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  %61 = call i32 @MRLSections(i8* %52, i32* %54, i32* %56, i32* %58, i32* %60)
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  store %struct.TYPE_18__* %62, %struct.TYPE_18__** %6, align 8
  br label %109

63:                                               ; preds = %46, %41, %34
  %64 = load i32*, i32** %7, align 8
  %65 = call i8* @var_InheritString(i32* %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i8* %65, i8** %15, align 8
  %66 = load i8*, i8** %15, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %70 = load i8*, i8** %15, align 8
  %71 = call %struct.TYPE_18__* @stream_FilterChainNew(%struct.TYPE_18__* %69, i8* %70)
  store %struct.TYPE_18__* %71, %struct.TYPE_18__** %14, align 8
  %72 = load i8*, i8** %15, align 8
  %73 = call i32 @free(i8* %72)
  br label %74

74:                                               ; preds = %68, %63
  %75 = load i32*, i32** %7, align 8
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = call i64 @InputStreamHandleAnchor(i32* %75, %struct.TYPE_20__* %76, %struct.TYPE_18__** %14, i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %106

81:                                               ; preds = %74
  %82 = load i32*, i32** %7, align 8
  %83 = call i64 @var_InheritBool(i32* %82, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %87 = call %struct.TYPE_18__* @stream_FilterChainNew(%struct.TYPE_18__* %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_18__* %87, %struct.TYPE_18__** %14, align 8
  br label %88

88:                                               ; preds = %85, %81
  %89 = load i32*, i32** %13, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call %struct.TYPE_18__* @demux_NewAdvanced(i32* %89, i32* %90, i8* %91, i8* %92, %struct.TYPE_18__* %93, i32 %96, i32 %99)
  store %struct.TYPE_18__* %100, %struct.TYPE_18__** %16, align 8
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %102 = icmp ne %struct.TYPE_18__* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %88
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  store %struct.TYPE_18__* %104, %struct.TYPE_18__** %6, align 8
  br label %109

105:                                              ; preds = %88
  br label %106

106:                                              ; preds = %105, %80
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %108 = call i32 @vlc_stream_Delete(%struct.TYPE_18__* %107)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %6, align 8
  br label %109

109:                                              ; preds = %106, %103, %51, %33
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  ret %struct.TYPE_18__* %110
}

declare dso_local %struct.TYPE_19__* @input_priv(i32*) #1

declare dso_local i32* @VLC_OBJECT(i32*) #1

declare dso_local %struct.TYPE_18__* @stream_AccessNew(i32*, i32*, i32, i32, i8*) #1

declare dso_local %struct.TYPE_18__* @stream_FilterAutoNew(%struct.TYPE_18__*) #1

declare dso_local i32 @MRLSections(i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i8* @var_InheritString(i32*, i8*) #1

declare dso_local %struct.TYPE_18__* @stream_FilterChainNew(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @InputStreamHandleAnchor(i32*, %struct.TYPE_20__*, %struct.TYPE_18__**, i8*) #1

declare dso_local i64 @var_InheritBool(i32*, i8*) #1

declare dso_local %struct.TYPE_18__* @demux_NewAdvanced(i32*, i32*, i8*, i8*, %struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @vlc_stream_Delete(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

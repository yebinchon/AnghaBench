; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_chroma/extr_chain.c_Activate.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_chroma/extr_chain.c_Activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i64 }
%struct.TYPE_20__ = type { %struct.TYPE_18__*, i32* }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@filter_video_chain_cbs = common dso_local global i32 0, align 4
@VLC_VAR_INTEGER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"chain-level\00", align 1
@VLC_VAR_DOINHERIT = common dso_local global i32 0, align 4
@CHAIN_LEVEL_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Too high level of recursion (%d)\00", align 1
@RestartFilterCallback = common dso_local global i32 0, align 4
@Chain = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i32 (%struct.TYPE_18__*)*)* @Activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Activate(%struct.TYPE_18__* %0, i32 (%struct.TYPE_18__*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32 (%struct.TYPE_18__*)*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_20__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32 (%struct.TYPE_18__*)* %1, i32 (%struct.TYPE_18__*)** %5, align 8
  %11 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %11, i32* %7, align 4
  %12 = call %struct.TYPE_19__* @calloc(i32 1, i32 16)
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 3
  store %struct.TYPE_19__* %12, %struct.TYPE_19__** %14, align 8
  store %struct.TYPE_19__* %12, %struct.TYPE_19__** %6, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %16 = icmp ne %struct.TYPE_19__* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %18, i32* %3, align 4
  br label %116

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_18__* %21, %struct.TYPE_18__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  store i32* @filter_video_chain_cbs, i32** %22, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @filter_chain_NewVideo(%struct.TYPE_18__* %23, i64 %26, %struct.TYPE_20__* %8)
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %19
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %36 = call i32 @free(%struct.TYPE_19__* %35)
  %37 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %37, i32* %3, align 4
  br label %116

38:                                               ; preds = %19
  %39 = load i32, i32* @VLC_VAR_INTEGER, align 4
  store i32 %39, i32* %9, align 4
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %41 = call i32 @vlc_object_parent(%struct.TYPE_18__* %40)
  %42 = call i64 @var_Type(i32 %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %46 = load i32, i32* %9, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %44, %38
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @var_Create(%struct.TYPE_18__* %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %53 = call i32 @var_IncInteger(%struct.TYPE_18__* %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %55 = call i32 @var_GetInteger(%struct.TYPE_18__* %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %48
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @CHAIN_LEVEL_MAX, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58, %48
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @msg_Err(%struct.TYPE_18__* %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %70

66:                                               ; preds = %58
  %67 = load i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*)** %5, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %69 = call i32 %67(%struct.TYPE_18__* %68)
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %66, %62
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %72 = call i32 @var_Destroy(%struct.TYPE_18__* %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %95

75:                                               ; preds = %70
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* @RestartFilterCallback, align 4
  %86 = call i32 @filter_DelProxyCallbacks(%struct.TYPE_18__* %81, i64 %84, i32 %85)
  br label %87

87:                                               ; preds = %80, %75
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @filter_chain_Delete(i32 %90)
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %93 = call i32 @free(%struct.TYPE_19__* %92)
  %94 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %94, i32* %3, align 4
  br label %116

95:                                               ; preds = %70
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %95
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 1
  %103 = call i32 @es_format_Clean(i32* %102)
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @filter_chain_GetFmtOut(i32 %108)
  %110 = call i32 @es_format_Copy(i32* %105, i32 %109)
  br label %111

111:                                              ; preds = %100, %95
  %112 = load i32, i32* @Chain, align 4
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %111, %87, %34, %17
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local %struct.TYPE_19__* @calloc(i32, i32) #1

declare dso_local i32 @filter_chain_NewVideo(%struct.TYPE_18__*, i64, %struct.TYPE_20__*) #1

declare dso_local i32 @free(%struct.TYPE_19__*) #1

declare dso_local i64 @var_Type(i32, i8*) #1

declare dso_local i32 @vlc_object_parent(%struct.TYPE_18__*) #1

declare dso_local i32 @var_Create(%struct.TYPE_18__*, i8*, i32) #1

declare dso_local i32 @var_IncInteger(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @var_GetInteger(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_18__*, i8*, i32) #1

declare dso_local i32 @var_Destroy(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @filter_DelProxyCallbacks(%struct.TYPE_18__*, i64, i32) #1

declare dso_local i32 @filter_chain_Delete(i32) #1

declare dso_local i32 @es_format_Clean(i32*) #1

declare dso_local i32 @es_format_Copy(i32*, i32) #1

declare dso_local i32 @filter_chain_GetFmtOut(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

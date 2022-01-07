; ModuleID = '/home/carl/AnghaBench/vlc/modules/spu/extr_audiobargraph_v.c_FilterVideo.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/spu/extr_audiobargraph_v.c_FilterVideo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_21__, %struct.TYPE_25__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32, i32, i32, i32, i32, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32 }

@SUBPICTURE_ALIGN_BOTTOM = common dso_local global i32 0, align 4
@SUBPICTURE_ALIGN_TOP = common dso_local global i32 0, align 4
@SUBPICTURE_ALIGN_RIGHT = common dso_local global i32 0, align 4
@SUBPICTURE_ALIGN_LEFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to blend a picture\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_23__* (%struct.TYPE_24__*, %struct.TYPE_23__*)* @FilterVideo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_23__* @FilterVideo(%struct.TYPE_24__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  store %struct.TYPE_25__* %16, %struct.TYPE_25__** %6, align 8
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 5
  store %struct.TYPE_26__* %18, %struct.TYPE_26__** %7, align 8
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %20 = call %struct.TYPE_23__* @filter_NewPicture(%struct.TYPE_24__* %19)
  store %struct.TYPE_23__* %20, %struct.TYPE_23__** %8, align 8
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %22 = icmp ne %struct.TYPE_23__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %25 = call i32 @picture_Release(%struct.TYPE_23__* %24)
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %3, align 8
  br label %165

26:                                               ; preds = %2
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %29 = call i32 @picture_Copy(%struct.TYPE_23__* %27, %struct.TYPE_23__* %28)
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 3
  %32 = call i32 @vlc_mutex_lock(i32* %31)
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %34, align 8
  store %struct.TYPE_23__* %35, %struct.TYPE_23__** %9, align 8
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %37 = icmp ne %struct.TYPE_23__* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %26
  br label %158

39:                                               ; preds = %26
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 0
  store %struct.TYPE_22__* %41, %struct.TYPE_22__** %10, align 8
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %11, align 4
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %12, align 4
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %127

56:                                               ; preds = %39
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @SUBPICTURE_ALIGN_BOTTOM, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %56
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %64, %67
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  br label %91

71:                                               ; preds = %56
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @SUBPICTURE_ALIGN_TOP, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %71
  %79 = load i32, i32* %12, align 4
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %79, %82
  %84 = sdiv i32 %83, 2
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  br label %90

87:                                               ; preds = %71
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 1
  store i32 0, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %78
  br label %91

91:                                               ; preds = %90, %63
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @SUBPICTURE_ALIGN_RIGHT, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %91
  %99 = load i32, i32* %11, align 4
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 %99, %102
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  br label %126

106:                                              ; preds = %91
  %107 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @SUBPICTURE_ALIGN_LEFT, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %122, label %113

113:                                              ; preds = %106
  %114 = load i32, i32* %11, align 4
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = sub nsw i32 %114, %117
  %119 = sdiv i32 %118, 2
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  br label %125

122:                                              ; preds = %106
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 2
  store i32 0, i32* %124, align 8
  br label %125

125:                                              ; preds = %122, %113
  br label %126

126:                                              ; preds = %125, %98
  br label %127

127:                                              ; preds = %126, %39
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  store i32 %130, i32* %13, align 4
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* %12, align 4
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %137 = call i64 @filter_ConfigureBlend(i32 %133, i32 %134, i32 %135, %struct.TYPE_22__* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %154, label %139

139:                                              ; preds = %127
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %151 = load i32, i32* %13, align 4
  %152 = call i64 @filter_Blend(i32 %142, %struct.TYPE_23__* %143, i32 %146, i32 %149, %struct.TYPE_23__* %150, i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %139, %127
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %156 = call i32 @msg_Err(%struct.TYPE_24__* %155, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %157

157:                                              ; preds = %154, %139
  br label %158

158:                                              ; preds = %157, %38
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %159, i32 0, i32 3
  %161 = call i32 @vlc_mutex_unlock(i32* %160)
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %163 = call i32 @picture_Release(%struct.TYPE_23__* %162)
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  store %struct.TYPE_23__* %164, %struct.TYPE_23__** %3, align 8
  br label %165

165:                                              ; preds = %158, %23
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  ret %struct.TYPE_23__* %166
}

declare dso_local %struct.TYPE_23__* @filter_NewPicture(%struct.TYPE_24__*) #1

declare dso_local i32 @picture_Release(%struct.TYPE_23__*) #1

declare dso_local i32 @picture_Copy(%struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i64 @filter_ConfigureBlend(i32, i32, i32, %struct.TYPE_22__*) #1

declare dso_local i64 @filter_Blend(i32, %struct.TYPE_23__*, i32, i32, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_24__*, i8*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

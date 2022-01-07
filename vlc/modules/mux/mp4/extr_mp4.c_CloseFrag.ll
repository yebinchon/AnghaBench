; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/mp4/extr_mp4.c_CloseFrag.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/mp4/extr_mp4.c_CloseFrag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i64 }
%struct.TYPE_26__ = type { i32, i32, %struct.TYPE_27__** }
%struct.TYPE_27__ = type { %struct.TYPE_25__*, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_28__ = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"mp4frag\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"mfro\00", align 1
@MP4_MFRO_BOXSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @CloseFrag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CloseFrag(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = bitcast i32* %10 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %11, %struct.TYPE_24__** %3, align 8
  %12 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %15, %struct.TYPE_26__** %4, align 8
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %63, %1
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %66

22:                                               ; preds = %16
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %25, i64 %27
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %28, align 8
  store %struct.TYPE_27__* %29, %struct.TYPE_27__** %6, align 8
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %31, align 8
  %33 = icmp ne %struct.TYPE_25__* %32, null
  br i1 %33, label %34, label %62

34:                                               ; preds = %22
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %41, 1
  br i1 %42, label %43, label %52

43:                                               ; preds = %34
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %46 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %49, align 8
  %51 = call i32 @LengthLocalFixup(%struct.TYPE_24__* %44, %struct.TYPE_27__* %45, %struct.TYPE_23__* %50)
  br label %52

52:                                               ; preds = %43, %34
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %57, align 8
  %59 = call i32 @ENQUEUE_ENTRY(i32 %55, %struct.TYPE_25__* %58)
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %60, i32 0, i32 0
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %61, align 8
  br label %62

62:                                               ; preds = %52, %22
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %5, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %16

66:                                               ; preds = %16
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %68 = call i32 @WriteFragments(%struct.TYPE_24__* %67, i32 1)
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @strcmp(i32 %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %108, label %74

74:                                               ; preds = %66
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %76 = call %struct.TYPE_28__* @GetMfraBox(%struct.TYPE_24__* %75)
  store %struct.TYPE_28__* %76, %struct.TYPE_28__** %7, align 8
  %77 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %78 = icmp ne %struct.TYPE_28__* %77, null
  br i1 %78, label %79, label %107

79:                                               ; preds = %74
  %80 = call %struct.TYPE_28__* @box_full_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0)
  store %struct.TYPE_28__* %80, %struct.TYPE_28__** %8, align 8
  %81 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %82 = icmp ne %struct.TYPE_28__* %81, null
  br i1 %82, label %83, label %103

83:                                               ; preds = %79
  %84 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %83
  %89 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %90 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %91 = call i64 @bo_size(%struct.TYPE_28__* %90)
  %92 = call i32 @box_fix(%struct.TYPE_28__* %89, i64 %91)
  %93 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %94 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %95 = call i64 @bo_size(%struct.TYPE_28__* %94)
  %96 = load i64, i64* @MP4_MFRO_BOXSIZE, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @bo_add_32be(%struct.TYPE_28__* %93, i64 %97)
  br label %99

99:                                               ; preds = %88, %83
  %100 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %101 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %102 = call i32 @box_gather(%struct.TYPE_28__* %100, %struct.TYPE_28__* %101)
  br label %103

103:                                              ; preds = %99, %79
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %106 = call i32 @box_send(%struct.TYPE_24__* %104, %struct.TYPE_28__* %105)
  br label %107

107:                                              ; preds = %103, %74
  br label %108

108:                                              ; preds = %107, %66
  store i32 0, i32* %9, align 4
  br label %109

109:                                              ; preds = %124, %108
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp ult i32 %110, %113
  br i1 %114, label %115, label %127

115:                                              ; preds = %109
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %118, i64 %120
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** %121, align 8
  %123 = call i32 @mp4_stream_Delete(%struct.TYPE_27__* %122)
  br label %124

124:                                              ; preds = %115
  %125 = load i32, i32* %9, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %9, align 4
  br label %109

127:                                              ; preds = %109
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %132, align 8
  %134 = call i32 @TAB_CLEAN(i32 %130, %struct.TYPE_27__** %133)
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @mp4mux_Delete(i32 %137)
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %140 = call i32 @free(%struct.TYPE_26__* %139)
  ret void
}

declare dso_local i32 @LengthLocalFixup(%struct.TYPE_24__*, %struct.TYPE_27__*, %struct.TYPE_23__*) #1

declare dso_local i32 @ENQUEUE_ENTRY(i32, %struct.TYPE_25__*) #1

declare dso_local i32 @WriteFragments(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local %struct.TYPE_28__* @GetMfraBox(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_28__* @box_full_new(i8*, i32, i32) #1

declare dso_local i32 @box_fix(%struct.TYPE_28__*, i64) #1

declare dso_local i64 @bo_size(%struct.TYPE_28__*) #1

declare dso_local i32 @bo_add_32be(%struct.TYPE_28__*, i64) #1

declare dso_local i32 @box_gather(%struct.TYPE_28__*, %struct.TYPE_28__*) #1

declare dso_local i32 @box_send(%struct.TYPE_24__*, %struct.TYPE_28__*) #1

declare dso_local i32 @mp4_stream_Delete(%struct.TYPE_27__*) #1

declare dso_local i32 @TAB_CLEAN(i32, %struct.TYPE_27__**) #1

declare dso_local i32 @mp4mux_Delete(i32) #1

declare dso_local i32 @free(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

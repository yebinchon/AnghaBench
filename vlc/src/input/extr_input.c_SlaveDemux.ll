; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_input.c_SlaveDemux.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_input.c_SlaveDemux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, float, i32, %struct.TYPE_7__**, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32, float, i32, i64, i64 }
%struct.TYPE_5__ = type { i32 }

@DEMUX_GET_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"demux doesn't like DEMUX_GET_TIME\00", align 1
@ES_OUT_RESET_PCR = common dso_local global i32 0, align 4
@DEMUX_SET_RATE = common dso_local global i32 0, align 4
@DEMUX_SET_NEXT_DEMUX_TIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"slave[%d] doesn't like DEMUX_GET_TIME -> EOF\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"slave %d EOF\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @SlaveDemux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SlaveDemux(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32****, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca i32****, align 8
  store i32* %0, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call %struct.TYPE_6__* @input_priv(i32* %10)
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %3, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = call %struct.TYPE_6__* @input_priv(i32* %12)
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @DEMUX_GET_TIME, align 4
  %19 = bitcast i32***** %4 to float*
  %20 = call i64 @demux_Control(i32 %17, i32 %18, float* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 (i32*, i8*, ...) @msg_Err(i32* %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %145

25:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %142, %25
  %27 = load i32, i32* %5, align 4
  %28 = load i32*, i32** %2, align 8
  %29 = call %struct.TYPE_6__* @input_priv(i32* %28)
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %27, %31
  br i1 %32, label %33, label %145

33:                                               ; preds = %26
  %34 = load i32*, i32** %2, align 8
  %35 = call %struct.TYPE_6__* @input_priv(i32* %34)
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %37, i64 %39
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %6, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  br label %142

47:                                               ; preds = %33
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load float, float* %49, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load float, float* %52, align 4
  %54 = fcmp une float %50, %53
  br i1 %54, label %55, label %91

55:                                               ; preds = %47
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %85

60:                                               ; preds = %55
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %85

65:                                               ; preds = %60
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load float, float* %67, align 4
  %69 = fcmp une float %68, 0.000000e+00
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @ES_OUT_RESET_PCR, align 4
  %75 = call i32 @es_out_Control(i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %70, %65
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load float, float* %78, align 4
  store float %79, float* %8, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @DEMUX_SET_RATE, align 4
  %84 = call i64 @demux_Control(i32 %82, i32 %83, float* %8)
  br label %85

85:                                               ; preds = %76, %60, %55
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load float, float* %87, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  store float %88, float* %90, align 4
  br label %91

91:                                               ; preds = %85, %47
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @DEMUX_SET_NEXT_DEMUX_TIME, align 4
  %96 = load i32****, i32***** %4, align 8
  %97 = bitcast i32**** %96 to float*
  %98 = call i64 @demux_Control(i32 %94, i32 %95, float* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %127

100:                                              ; preds = %91
  br label %101

101:                                              ; preds = %125, %100
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @DEMUX_GET_TIME, align 4
  %106 = bitcast i32***** %9 to float*
  %107 = call i64 @demux_Control(i32 %104, i32 %105, float* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %101
  %110 = load i32*, i32** %2, align 8
  %111 = load i32, i32* %5, align 4
  %112 = call i32 (i32*, i8*, ...) @msg_Err(i32* %110, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %111)
  store i32 0, i32* %7, align 4
  br label %126

113:                                              ; preds = %101
  %114 = load i32****, i32***** %9, align 8
  %115 = load i32****, i32***** %4, align 8
  %116 = icmp uge i32**** %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  store i32 1, i32* %7, align 4
  br label %126

118:                                              ; preds = %113
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @demux_Demux(i32 %121)
  store i32 %122, i32* %7, align 4
  %123 = icmp sle i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  br label %126

125:                                              ; preds = %118
  br label %101

126:                                              ; preds = %124, %117, %109
  br label %132

127:                                              ; preds = %91
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @demux_Demux(i32 %130)
  store i32 %131, i32* %7, align 4
  br label %132

132:                                              ; preds = %127, %126
  %133 = load i32, i32* %7, align 4
  %134 = icmp sle i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %132
  %136 = load i32*, i32** %2, align 8
  %137 = load i32, i32* %5, align 4
  %138 = call i32 @msg_Dbg(i32* %136, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %137)
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  store i32 1, i32* %140, align 8
  br label %141

141:                                              ; preds = %135, %132
  br label %142

142:                                              ; preds = %141, %46
  %143 = load i32, i32* %5, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %5, align 4
  br label %26

145:                                              ; preds = %22, %26
  ret void
}

declare dso_local %struct.TYPE_6__* @input_priv(i32*) #1

declare dso_local i64 @demux_Control(i32, i32, float*) #1

declare dso_local i32 @msg_Err(i32*, i8*, ...) #1

declare dso_local i32 @es_out_Control(i32, i32) #1

declare dso_local i32 @demux_Demux(i32) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

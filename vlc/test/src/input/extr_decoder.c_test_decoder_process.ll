; ModuleID = '/home/carl/AnghaBench/vlc/test/src/input/extr_decoder.c_test_decoder_process.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/input/extr_decoder.c_test_decoder_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { {}*, %struct.TYPE_22__* (%struct.TYPE_21__*, i32*)*, i32, i32, %struct.TYPE_22__* (%struct.TYPE_21__*, %struct.TYPE_22__**)*, i32* }
%struct.TYPE_22__ = type { %struct.TYPE_22__* }
%struct.decoder_owner = type { %struct.TYPE_21__* }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"restarting module due to input format change\0A\00", align 1
@VLC_SUCCESS = common dso_local global i64 0, align 8
@VLCDEC_ECRITICAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_decoder_process(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.decoder_owner*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_22__**, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %15 = call %struct.decoder_owner* @dec_get_owner(%struct.TYPE_21__* %14)
  store %struct.decoder_owner* %15, %struct.decoder_owner** %6, align 8
  %16 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %17 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %16, i32 0, i32 0
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  store %struct.TYPE_21__* %18, %struct.TYPE_21__** %7, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 5
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %2
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %25 = icmp ne %struct.TYPE_22__* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %28 = call i32 @block_Release(%struct.TYPE_22__* %27)
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %30, i32* %3, align 4
  br label %131

31:                                               ; preds = %2
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %33 = icmp ne %struct.TYPE_22__* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %36

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %35, %34
  %37 = phi %struct.TYPE_22__** [ %5, %34 ], [ null, %35 ]
  store %struct.TYPE_22__** %37, %struct.TYPE_22__*** %8, align 8
  br label %38

38:                                               ; preds = %117, %36
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_22__* (%struct.TYPE_21__*, %struct.TYPE_22__**)*, %struct.TYPE_22__* (%struct.TYPE_21__*, %struct.TYPE_22__**)** %40, align 8
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %43 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %8, align 8
  %44 = call %struct.TYPE_22__* %41(%struct.TYPE_21__* %42, %struct.TYPE_22__** %43)
  store %struct.TYPE_22__* %44, %struct.TYPE_22__** %9, align 8
  %45 = icmp ne %struct.TYPE_22__* %44, null
  br i1 %45, label %46, label %118

46:                                               ; preds = %38
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 2
  %51 = call i32 @es_format_IsSimilar(i32* %48, i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %74, label %53

53:                                               ; preds = %46
  %54 = call i32 @debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 0
  %57 = bitcast {}** %56 to i32 (%struct.TYPE_21__*, %struct.TYPE_22__*)**
  %58 = load i32 (%struct.TYPE_21__*, %struct.TYPE_22__*)*, i32 (%struct.TYPE_21__*, %struct.TYPE_22__*)** %57, align 8
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %60 = call i32 %58(%struct.TYPE_21__* %59, %struct.TYPE_22__* null)
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %62 = call i32 @decoder_Clean(%struct.TYPE_21__* %61)
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 2
  %66 = call i64 @decoder_load(%struct.TYPE_21__* %63, i32 0, i32* %65)
  %67 = load i64, i64* @VLC_SUCCESS, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %53
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %71 = call i32 @block_ChainRelease(%struct.TYPE_22__* %70)
  %72 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %72, i32* %3, align 4
  br label %131

73:                                               ; preds = %53
  br label %74

74:                                               ; preds = %73, %46
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_22__* (%struct.TYPE_21__*, i32*)*, %struct.TYPE_22__* (%struct.TYPE_21__*, i32*)** %76, align 8
  %78 = icmp ne %struct.TYPE_22__* (%struct.TYPE_21__*, i32*)* %77, null
  br i1 %78, label %79, label %91

79:                                               ; preds = %74
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_22__* (%struct.TYPE_21__*, i32*)*, %struct.TYPE_22__* (%struct.TYPE_21__*, i32*)** %81, align 8
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %84 = call %struct.TYPE_22__* %82(%struct.TYPE_21__* %83, i32* %10)
  store %struct.TYPE_22__* %84, %struct.TYPE_22__** %11, align 8
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %86 = icmp ne %struct.TYPE_22__* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %89 = call i32 @block_Release(%struct.TYPE_22__* %88)
  br label %90

90:                                               ; preds = %87, %79
  br label %91

91:                                               ; preds = %90, %74
  br label %92

92:                                               ; preds = %115, %91
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %94 = icmp ne %struct.TYPE_22__* %93, null
  br i1 %94, label %95, label %117

95:                                               ; preds = %92
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %97, align 8
  store %struct.TYPE_22__* %98, %struct.TYPE_22__** %12, align 8
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 0
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %100, align 8
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 0
  %103 = bitcast {}** %102 to i32 (%struct.TYPE_21__*, %struct.TYPE_22__*)**
  %104 = load i32 (%struct.TYPE_21__*, %struct.TYPE_22__*)*, i32 (%struct.TYPE_21__*, %struct.TYPE_22__*)** %103, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %107 = call i32 %104(%struct.TYPE_21__* %105, %struct.TYPE_22__* %106)
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* @VLCDEC_ECRITICAL, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %95
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %113 = call i32 @block_ChainRelease(%struct.TYPE_22__* %112)
  %114 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %114, i32* %3, align 4
  br label %131

115:                                              ; preds = %95
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  store %struct.TYPE_22__* %116, %struct.TYPE_22__** %9, align 8
  br label %92

117:                                              ; preds = %92
  br label %38

118:                                              ; preds = %38
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %120 = icmp eq %struct.TYPE_22__* %119, null
  br i1 %120, label %121, label %128

121:                                              ; preds = %118
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 0
  %124 = bitcast {}** %123 to i32 (%struct.TYPE_21__*, %struct.TYPE_22__*)**
  %125 = load i32 (%struct.TYPE_21__*, %struct.TYPE_22__*)*, i32 (%struct.TYPE_21__*, %struct.TYPE_22__*)** %124, align 8
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %127 = call i32 %125(%struct.TYPE_21__* %126, %struct.TYPE_22__* null)
  br label %128

128:                                              ; preds = %121, %118
  %129 = load i64, i64* @VLC_SUCCESS, align 8
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %128, %111, %69, %29
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local %struct.decoder_owner* @dec_get_owner(%struct.TYPE_21__*) #1

declare dso_local i32 @block_Release(%struct.TYPE_22__*) #1

declare dso_local i32 @es_format_IsSimilar(i32*, i32*) #1

declare dso_local i32 @debug(i8*) #1

declare dso_local i32 @decoder_Clean(%struct.TYPE_21__*) #1

declare dso_local i64 @decoder_load(%struct.TYPE_21__*, i32, i32*) #1

declare dso_local i32 @block_ChainRelease(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

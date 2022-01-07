; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_optimize.c_set_synth_functions.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_optimize.c_set_synth_functions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, {}*, %struct.TYPE_16__, i32, %struct.TYPE_15__, %struct.TYPE_14__, i32, i32, i32 }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_15__ = type { i32**, i32**, i32**, i32** }
%struct.TYPE_14__ = type { i32, i32 }

@r_none = common dso_local global i32 0, align 4
@f_none = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@MPG123_ENC_16 = common dso_local global i32 0, align 4
@f_16 = common dso_local global i32 0, align 4
@MPG123_ENC_8 = common dso_local global i32 0, align 4
@f_8 = common dso_local global i32 0, align 4
@MPG123_ENC_FLOAT = common dso_local global i32 0, align 4
@f_real = common dso_local global i32 0, align 4
@MPG123_ENC_32 = common dso_local global i32 0, align 4
@MPG123_ENC_24 = common dso_local global i32 0, align 4
@f_32 = common dso_local global i32 0, align 4
@NOQUIET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [67 x i8] c"set_synth_functions: This output format is disabled in this build!\00", align 1
@r_1to1 = common dso_local global i32 0, align 4
@r_2to1 = common dso_local global i32 0, align 4
@r_4to1 = common dso_local global i32 0, align 4
@r_ntom = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"set_synth_functions: This resampling mode is not supported in this build!\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"selecting synth: resample=%i format=%i\00", align 1
@MPG123_OK = common dso_local global i64 0, align 8
@MPG123_BAD_DECODER_SETUP = common dso_local global i32 0, align 4
@MPG123_ERR = common dso_local global i32 0, align 4
@MPG123_NO_BUFFERS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Failed to set up decoder buffers!\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to set up conv16to8 table!\00", align 1
@init_layer3_gainpow2 = common dso_local global i32 0, align 4
@init_layer12_table = common dso_local global i32 0, align 4
@avx = common dso_local global i64 0, align 8
@init_layer12_table_mmx = common dso_local global i32 0, align 4
@init_layer3_gainpow2_mmx = common dso_local global i32 0, align 4
@mmxsse = common dso_local global i64 0, align 8
@neon = common dso_local global i64 0, align 8
@neon64 = common dso_local global i64 0, align 8
@sse = common dso_local global i64 0, align 8
@sse_vintage = common dso_local global i64 0, align 8
@x86_64 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_synth_functions(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %6 = load i32, i32* @r_none, align 4
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* @f_none, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i64, i64* @FALSE, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %63

11:                                               ; preds = %1
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MPG123_ENC_16, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i32, i32* @f_16, align 4
  store i32 %20, i32* %5, align 4
  br label %62

21:                                               ; preds = %11
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @MPG123_ENC_8, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @f_8, align 4
  store i32 %30, i32* %5, align 4
  br label %61

31:                                               ; preds = %21
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @MPG123_ENC_FLOAT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @f_real, align 4
  store i32 %40, i32* %5, align 4
  br label %60

41:                                               ; preds = %31
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @MPG123_ENC_32, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %41
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @MPG123_ENC_24, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49, %41
  %58 = load i32, i32* @f_32, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %57, %49
  br label %60

60:                                               ; preds = %59, %39
  br label %61

61:                                               ; preds = %60, %29
  br label %62

62:                                               ; preds = %61, %19
  br label %63

63:                                               ; preds = %62, %10
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @f_none, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load i64, i64* @NOQUIET, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = call i32 @error(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %67
  store i32 -1, i32* %2, align 4
  br label %216

73:                                               ; preds = %63
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  switch i32 %76, label %85 [
    i32 0, label %77
    i32 1, label %79
    i32 2, label %81
    i32 3, label %83
  ]

77:                                               ; preds = %73
  %78 = load i32, i32* @r_1to1, align 4
  store i32 %78, i32* %4, align 4
  br label %85

79:                                               ; preds = %73
  %80 = load i32, i32* @r_2to1, align 4
  store i32 %80, i32* %4, align 4
  br label %85

81:                                               ; preds = %73
  %82 = load i32, i32* @r_4to1, align 4
  store i32 %82, i32* %4, align 4
  br label %85

83:                                               ; preds = %73
  %84 = load i32, i32* @r_ntom, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %73, %83, %81, %79, %77
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @r_none, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = load i64, i64* @NOQUIET, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = call i32 @error(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %89
  store i32 -1, i32* %2, align 4
  br label %216

95:                                               ; preds = %85
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @debug2(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %96, i32 %97)
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 3
  %102 = load i32**, i32*** %101, align 8
  %103 = load i32, i32* %4, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i32*, i32** %102, i64 %104
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 8
  store i32 %110, i32* %112, align 8
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 2
  %116 = load i32**, i32*** %115, align 8
  %117 = load i32, i32* %4, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i32*, i32** %116, i64 %118
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %5, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 7
  store i32 %124, i32* %126, align 4
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 5
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 2
  br i1 %131, label %132, label %145

132:                                              ; preds = %95
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 1
  %136 = load i32**, i32*** %135, align 8
  %137 = load i32, i32* %4, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i32*, i32** %136, i64 %138
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %5, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  br label %158

145:                                              ; preds = %95
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 0
  %149 = load i32**, i32*** %148, align 8
  %150 = load i32, i32* %4, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds i32*, i32** %149, i64 %151
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %5, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  br label %158

158:                                              ; preds = %145, %132
  %159 = phi i32 [ %144, %132 ], [ %157, %145 ]
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 6
  store i32 %159, i32* %161, align 8
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %163 = call i64 @find_dectype(%struct.TYPE_17__* %162)
  %164 = load i64, i64* @MPG123_OK, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %171

166:                                              ; preds = %158
  %167 = load i32, i32* @MPG123_BAD_DECODER_SETUP, align 4
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 3
  store i32 %167, i32* %169, align 8
  %170 = load i32, i32* @MPG123_ERR, align 4
  store i32 %170, i32* %2, align 4
  br label %216

171:                                              ; preds = %158
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %173 = call i64 @frame_buffers(%struct.TYPE_17__* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %185

175:                                              ; preds = %171
  %176 = load i32, i32* @MPG123_NO_BUFFERS, align 4
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 3
  store i32 %176, i32* %178, align 8
  %179 = load i64, i64* @NOQUIET, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %175
  %182 = call i32 @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %183

183:                                              ; preds = %181, %175
  %184 = load i32, i32* @MPG123_ERR, align 4
  store i32 %184, i32* %2, align 4
  br label %216

185:                                              ; preds = %171
  %186 = load i32, i32* %5, align 4
  %187 = load i32, i32* @f_8, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %200

189:                                              ; preds = %185
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %191 = call i64 @make_conv16to8_table(%struct.TYPE_17__* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %189
  %194 = load i64, i64* @NOQUIET, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %193
  %197 = call i32 @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %198

198:                                              ; preds = %196, %193
  store i32 -1, i32* %2, align 4
  br label %216

199:                                              ; preds = %189
  br label %200

200:                                              ; preds = %199, %185
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %202 = load i32, i32* @init_layer3_gainpow2, align 4
  %203 = call i32 @init_layer3_stuff(%struct.TYPE_17__* %201, i32 %202)
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %205 = load i32, i32* @init_layer12_table, align 4
  %206 = call i32 @init_layer12_stuff(%struct.TYPE_17__* %204, i32 %205)
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 1
  %209 = bitcast {}** %208 to i32 (%struct.TYPE_17__*)**
  store i32 (%struct.TYPE_17__*)* @make_decode_tables, i32 (%struct.TYPE_17__*)** %209, align 8
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 1
  %212 = bitcast {}** %211 to i32 (%struct.TYPE_17__*)**
  %213 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** %212, align 8
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %215 = call i32 %213(%struct.TYPE_17__* %214)
  store i32 0, i32* %2, align 4
  br label %216

216:                                              ; preds = %200, %198, %183, %166, %94, %72
  %217 = load i32, i32* %2, align 4
  ret i32 %217
}

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @debug2(i8*, i32, i32) #1

declare dso_local i64 @find_dectype(%struct.TYPE_17__*) #1

declare dso_local i64 @frame_buffers(%struct.TYPE_17__*) #1

declare dso_local i64 @make_conv16to8_table(%struct.TYPE_17__*) #1

declare dso_local i32 @init_layer3_stuff(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @init_layer12_stuff(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @make_decode_tables(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

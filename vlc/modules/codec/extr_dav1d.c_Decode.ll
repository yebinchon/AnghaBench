; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_dav1d.c_Decode.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_dav1d.c_Decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_28__ = type { i32, i64, i64, i32, i32 }
%struct.TYPE_30__ = type { i64, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_29__ = type { %struct.TYPE_24__, %struct.TYPE_25__*, i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32 }

@BLOCK_FLAG_CORRUPTED = common dso_local global i32 0, align 4
@VLCDEC_SUCCESS = common dso_local global i32 0, align 4
@release_block = common dso_local global i32 0, align 4
@VLCDEC_ECRITICAL = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@BLOCK_FLAG_END_OF_SEQUENCE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Decoder feed error %d!\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Decoder error %d!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, %struct.TYPE_28__*)* @Decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Decode(%struct.TYPE_26__* %0, %struct.TYPE_28__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_30__, align 8
  %9 = alloca %struct.TYPE_30__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_29__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_25__*, align 8
  %16 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %5, align 8
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  store %struct.TYPE_27__* %19, %struct.TYPE_27__** %6, align 8
  %20 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %21 = icmp ne %struct.TYPE_28__* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %2
  %23 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %31 = call i32 @block_Release(%struct.TYPE_28__* %30)
  %32 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %32, i32* %3, align 4
  br label %184

33:                                               ; preds = %22, %2
  store i32 0, i32* %7, align 4
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %9, align 8
  %34 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %35 = icmp ne %struct.TYPE_28__* %34, null
  br i1 %35, label %36, label %79

36:                                               ; preds = %33
  store %struct.TYPE_30__* %8, %struct.TYPE_30__** %9, align 8
  %37 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @release_block, align 4
  %44 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %45 = call i64 @dav1d_data_wrap(%struct.TYPE_30__* %8, i32 %39, i32 %42, i32 %43, %struct.TYPE_28__* %44)
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %36
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %52 = call i32 @block_Release(%struct.TYPE_28__* %51)
  %53 = load i32, i32* @VLCDEC_ECRITICAL, align 4
  store i32 %53, i32* %3, align 4
  br label %184

54:                                               ; preds = %36
  %55 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @VLC_TICK_INVALID, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  br label %68

64:                                               ; preds = %54
  %65 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  br label %68

68:                                               ; preds = %64, %60
  %69 = phi i64 [ %63, %60 ], [ %67, %64 ]
  store i64 %69, i64* %10, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 0
  store i64 %70, i64* %73, align 8
  %74 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @BLOCK_FLAG_END_OF_SEQUENCE, align 4
  %78 = and i32 %76, %77
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %68, %33
  %80 = bitcast %struct.TYPE_29__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %80, i8 0, i64 24, i1 false)
  store i32 0, i32* %12, align 4
  %81 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %81, i32* %13, align 4
  br label %82

82:                                               ; preds = %180, %79
  %83 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %84 = icmp ne %struct.TYPE_30__* %83, null
  br i1 %84, label %85, label %104

85:                                               ; preds = %82
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %90 = call i32 @dav1d_send_data(i32 %88, %struct.TYPE_30__* %89)
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %85
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* @EAGAIN, align 4
  %96 = sub nsw i32 0, %95
  %97 = icmp ne i32 %94, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @msg_Err(%struct.TYPE_26__* %99, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %102, i32* %13, align 4
  br label %182

103:                                              ; preds = %93, %85
  br label %104

104:                                              ; preds = %103, %82
  %105 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @dav1d_get_picture(i32 %107, %struct.TYPE_29__* %11)
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %14, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %137

111:                                              ; preds = %104
  %112 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %11, i32 0, i32 1
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %112, align 8
  store %struct.TYPE_25__* %113, %struct.TYPE_25__** %15, align 8
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %115 = call %struct.TYPE_25__* @picture_Clone(%struct.TYPE_25__* %114)
  store %struct.TYPE_25__* %115, %struct.TYPE_25__** %16, align 8
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %117 = icmp eq %struct.TYPE_25__* %116, null
  %118 = zext i1 %117 to i32
  %119 = call i64 @unlikely(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %111
  %122 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %122, i32* %13, align 4
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %124 = call i32 @picture_Release(%struct.TYPE_25__* %123)
  br label %182

125:                                              ; preds = %111
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 0
  store i32 1, i32* %127, align 4
  %128 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %11, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %135 = call i32 @decoder_QueueVideo(%struct.TYPE_26__* %133, %struct.TYPE_25__* %134)
  %136 = call i32 @dav1d_picture_unref(%struct.TYPE_29__* %11)
  br label %148

137:                                              ; preds = %104
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* @EAGAIN, align 4
  %140 = sub nsw i32 0, %139
  %141 = icmp ne i32 %138, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %137
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %144 = load i32, i32* %14, align 4
  %145 = call i32 @msg_Err(%struct.TYPE_26__* %143, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %146, i32* %13, align 4
  br label %182

147:                                              ; preds = %137
  br label %148

148:                                              ; preds = %147, %125
  %149 = load i32, i32* %12, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %166, label %151

151:                                              ; preds = %148
  %152 = load i32, i32* %14, align 4
  %153 = load i32, i32* @EAGAIN, align 4
  %154 = sub nsw i32 0, %153
  %155 = icmp eq i32 %152, %154
  br i1 %155, label %159, label %156

156:                                              ; preds = %151
  %157 = load i32, i32* %14, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %156, %151
  %160 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %161 = icmp eq %struct.TYPE_30__* %160, null
  br i1 %161, label %165, label %162

162:                                              ; preds = %159
  %163 = load i32, i32* %7, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %162, %159
  store i32 1, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %166

166:                                              ; preds = %165, %162, %156, %148
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %14, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %180, label %170

170:                                              ; preds = %167
  %171 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %172 = icmp ne %struct.TYPE_30__* %171, null
  br i1 %172, label %173, label %178

173:                                              ; preds = %170
  %174 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br label %178

178:                                              ; preds = %173, %170
  %179 = phi i1 [ false, %170 ], [ %177, %173 ]
  br label %180

180:                                              ; preds = %178, %167
  %181 = phi i1 [ true, %167 ], [ %179, %178 ]
  br i1 %181, label %82, label %182

182:                                              ; preds = %180, %142, %121, %98
  %183 = load i32, i32* %13, align 4
  store i32 %183, i32* %3, align 4
  br label %184

184:                                              ; preds = %182, %50, %29
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local i32 @block_Release(%struct.TYPE_28__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @dav1d_data_wrap(%struct.TYPE_30__*, i32, i32, i32, %struct.TYPE_28__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dav1d_send_data(i32, %struct.TYPE_30__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_26__*, i8*, i32) #1

declare dso_local i32 @dav1d_get_picture(i32, %struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_25__* @picture_Clone(%struct.TYPE_25__*) #1

declare dso_local i32 @picture_Release(%struct.TYPE_25__*) #1

declare dso_local i32 @decoder_QueueVideo(%struct.TYPE_26__*, %struct.TYPE_25__*) #1

declare dso_local i32 @dav1d_picture_unref(%struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

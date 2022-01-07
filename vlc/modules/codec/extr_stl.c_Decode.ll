; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_stl.c_Decode.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_stl.c_Decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i8* }
%struct.TYPE_22__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, i64, i32* }
%struct.TYPE_24__ = type { i64, i32, i64*, i64, i64, i64 }
%struct.TYPE_20__ = type { i32, i64, i64, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }

@VLCDEC_SUCCESS = common dso_local global i32 0, align 4
@STL_TTI_SIZE = common dso_local global i64 0, align 8
@BLOCK_FLAG_CORRUPTED = common dso_local global i32 0, align 4
@BLOCK_FLAG_DISCONTINUITY = common dso_local global i32 0, align 4
@cct_nums = common dso_local global %struct.TYPE_18__* null, align 8
@CCT_BEGIN = common dso_local global i64 0, align 8
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@VLC_TICK_0 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_24__*)* @Decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Decode(%struct.TYPE_22__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  %11 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %12 = icmp eq %struct.TYPE_24__* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %14, i32* %3, align 4
  br label %184

15:                                               ; preds = %2
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  store %struct.TYPE_23__* %18, %struct.TYPE_23__** %6, align 8
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @STL_TTI_SIZE, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %15
  %25 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  br label %30

30:                                               ; preds = %24, %15
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %35 = load i32, i32* @BLOCK_FLAG_DISCONTINUITY, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %33, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %30
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %41, align 8
  %43 = call i32 @ResetGroups(%struct.TYPE_23__* %42)
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %39
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %52 = call i32 @block_Release(%struct.TYPE_24__* %51)
  %53 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %53, i32* %3, align 4
  br label %184

54:                                               ; preds = %39
  br label %55

55:                                               ; preds = %54, %30
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** @cct_nums, align 8
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @CCT_BEGIN, align 8
  %61 = sub i64 %59, %60
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %7, align 8
  store i64 0, i64* %8, align 8
  br label %65

65:                                               ; preds = %175, %55
  %66 = load i64, i64* %8, align 8
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @STL_TTI_SIZE, align 8
  %71 = udiv i64 %69, %70
  %72 = icmp ult i64 %66, %71
  br i1 %72, label %73, label %178

73:                                               ; preds = %65
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %75, align 8
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 2
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i64 %81
  store %struct.TYPE_21__* %82, %struct.TYPE_21__** %9, align 8
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 2
  %86 = load i64*, i64** %85, align 8
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* @STL_TTI_SIZE, align 8
  %89 = mul i64 %87, %88
  %90 = getelementptr inbounds i64, i64* %86, i64 %89
  %91 = load i8*, i8** %7, align 8
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @ParseTTI(%struct.TYPE_21__* %83, i64* %90, i8* %91, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %174

97:                                               ; preds = %73
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %174

102:                                              ; preds = %97
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %104 = call %struct.TYPE_20__* @decoder_NewSubpictureText(%struct.TYPE_22__* %103)
  store %struct.TYPE_20__* %104, %struct.TYPE_20__** %10, align 8
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %106 = icmp ne %struct.TYPE_20__* %105, null
  br i1 %106, label %107, label %173

107:                                              ; preds = %102
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @FillSubpictureUpdater(%struct.TYPE_21__* %108, i32 %112)
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 0
  store i32 0, i32* %115, align 8
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @VLC_TICK_INVALID, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %146

121:                                              ; preds = %107
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = icmp sge i64 %124, %127
  br i1 %128, label %129, label %146

129:                                              ; preds = %121
  %130 = load i8*, i8** @VLC_TICK_0, align 8
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr i8, i8* %130, i64 %133
  %135 = ptrtoint i8* %134 to i64
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 1
  store i64 %135, i64* %137, align 8
  %138 = load i8*, i8** @VLC_TICK_0, align 8
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr i8, i8* %138, i64 %141
  %143 = ptrtoint i8* %142 to i64
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 2
  store i64 %143, i64* %145, align 8
  br label %169

146:                                              ; preds = %121, %107
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 4
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 1
  store i64 %149, i64* %151, align 8
  %152 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %152, i32 0, i32 4
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 5
  %157 = load i64, i64* %156, align 8
  %158 = add nsw i64 %154, %157
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 2
  store i64 %158, i64* %160, align 8
  %161 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %161, i32 0, i32 5
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @VLC_TICK_INVALID, align 8
  %165 = icmp eq i64 %163, %164
  %166 = zext i1 %165 to i32
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 3
  store i32 %166, i32* %168, align 8
  br label %169

169:                                              ; preds = %146, %129
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %172 = call i32 @decoder_QueueSub(%struct.TYPE_22__* %170, %struct.TYPE_20__* %171)
  br label %173

173:                                              ; preds = %169, %102
  br label %174

174:                                              ; preds = %173, %97, %73
  br label %175

175:                                              ; preds = %174
  %176 = load i64, i64* %8, align 8
  %177 = add i64 %176, 1
  store i64 %177, i64* %8, align 8
  br label %65

178:                                              ; preds = %65
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %180 = call i32 @ResetGroups(%struct.TYPE_23__* %179)
  %181 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %182 = call i32 @block_Release(%struct.TYPE_24__* %181)
  %183 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %183, i32* %3, align 4
  br label %184

184:                                              ; preds = %178, %50, %13
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local i32 @ResetGroups(%struct.TYPE_23__*) #1

declare dso_local i32 @block_Release(%struct.TYPE_24__*) #1

declare dso_local i64 @ParseTTI(%struct.TYPE_21__*, i64*, i8*, i32) #1

declare dso_local %struct.TYPE_20__* @decoder_NewSubpictureText(%struct.TYPE_22__*) #1

declare dso_local i32 @FillSubpictureUpdater(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @decoder_QueueSub(%struct.TYPE_22__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

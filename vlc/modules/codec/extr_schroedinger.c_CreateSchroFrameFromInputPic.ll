; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_schroedinger.c_CreateSchroFrameFromInputPic.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_schroedinger.c_CreateSchroFrameFromInputPic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_16__*, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32 }
%struct.enc_picture_free_t = type { %struct.TYPE_18__*, %struct.TYPE_17__* }

@SCHRO_FRAME_FORMAT_U8_420 = common dso_local global i32 0, align 4
@SCHRO_CHROMA_422 = common dso_local global i64 0, align 8
@SCHRO_FRAME_FORMAT_U8_422 = common dso_local global i32 0, align 4
@SCHRO_CHROMA_444 = common dso_local global i64 0, align 8
@SCHRO_FRAME_FORMAT_U8_444 = common dso_local global i32 0, align 4
@EncSchroFrameFree = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_20__* (%struct.TYPE_18__*, %struct.TYPE_17__*)* @CreateSchroFrameFromInputPic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_20__* @CreateSchroFrameFromInputPic(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.enc_picture_free_t*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  store %struct.TYPE_19__* %12, %struct.TYPE_19__** %6, align 8
  %13 = call %struct.TYPE_20__* (...) @schro_frame_new()
  store %struct.TYPE_20__* %13, %struct.TYPE_20__** %7, align 8
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %15 = icmp ne %struct.TYPE_20__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %3, align 8
  br label %203

17:                                               ; preds = %2
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %19 = icmp ne %struct.TYPE_17__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %3, align 8
  br label %203

21:                                               ; preds = %17
  %22 = load i32, i32* @SCHRO_FRAME_FORMAT_U8_420, align 4
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SCHRO_CHROMA_422, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %21
  %33 = load i32, i32* @SCHRO_FRAME_FORMAT_U8_422, align 4
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  br label %49

36:                                               ; preds = %21
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SCHRO_CHROMA_444, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load i32, i32* @SCHRO_FRAME_FORMAT_U8_444, align 4
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %44, %36
  br label %49

49:                                               ; preds = %48, %32
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = call %struct.enc_picture_free_t* @malloc(i32 16)
  store %struct.enc_picture_free_t* %64, %struct.enc_picture_free_t** %8, align 8
  %65 = load %struct.enc_picture_free_t*, %struct.enc_picture_free_t** %8, align 8
  %66 = icmp eq %struct.enc_picture_free_t* %65, null
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %49
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %72 = call i32 @schro_frame_unref(%struct.TYPE_20__* %71)
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %3, align 8
  br label %203

73:                                               ; preds = %49
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %75 = load %struct.enc_picture_free_t*, %struct.enc_picture_free_t** %8, align 8
  %76 = getelementptr inbounds %struct.enc_picture_free_t, %struct.enc_picture_free_t* %75, i32 0, i32 1
  store %struct.TYPE_17__* %74, %struct.TYPE_17__** %76, align 8
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %78 = load %struct.enc_picture_free_t*, %struct.enc_picture_free_t** %8, align 8
  %79 = getelementptr inbounds %struct.enc_picture_free_t, %struct.enc_picture_free_t* %78, i32 0, i32 0
  store %struct.TYPE_18__* %77, %struct.TYPE_18__** %79, align 8
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %81 = load i32, i32* @EncSchroFrameFree, align 4
  %82 = load %struct.enc_picture_free_t*, %struct.enc_picture_free_t** %8, align 8
  %83 = call i32 @schro_frame_set_free_callback(%struct.TYPE_20__* %80, i32 %81, %struct.enc_picture_free_t* %82)
  store i32 0, i32* %9, align 4
  br label %84

84:                                               ; preds = %198, %73
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %85, 3
  br i1 %86, label %87, label %201

87:                                               ; preds = %84
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 6
  store i32 %95, i32* %102, align 4
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  store i32 %110, i32* %117, align 4
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %127, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 5
  store i32 %125, i32* %132, align 4
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %142, align 8
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = mul nsw i32 %140, %148
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %151, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 1
  store i32 %149, i32* %156, align 4
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %158, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %166, align 8
  %168 = load i32, i32* %9, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 4
  store i32 %164, i32* %171, align 4
  %172 = load i32, i32* %9, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %197

174:                                              ; preds = %87
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @SCHRO_FRAME_FORMAT_V_SHIFT(i32 %177)
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %180, align 8
  %182 = load i32, i32* %9, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 3
  store i32 %178, i32* %185, align 4
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @SCHRO_FRAME_FORMAT_H_SHIFT(i32 %188)
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %191, align 8
  %193 = load i32, i32* %9, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 2
  store i32 %189, i32* %196, align 4
  br label %197

197:                                              ; preds = %174, %87
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %9, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %9, align 4
  br label %84

201:                                              ; preds = %84
  %202 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  store %struct.TYPE_20__* %202, %struct.TYPE_20__** %3, align 8
  br label %203

203:                                              ; preds = %201, %70, %20, %16
  %204 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  ret %struct.TYPE_20__* %204
}

declare dso_local %struct.TYPE_20__* @schro_frame_new(...) #1

declare dso_local %struct.enc_picture_free_t* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @schro_frame_unref(%struct.TYPE_20__*) #1

declare dso_local i32 @schro_frame_set_free_callback(%struct.TYPE_20__*, i32, %struct.enc_picture_free_t*) #1

declare dso_local i32 @SCHRO_FRAME_FORMAT_V_SHIFT(i32) #1

declare dso_local i32 @SCHRO_FRAME_FORMAT_H_SHIFT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

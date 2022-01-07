; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_a52.c_GetOutBuffer.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_a52.c_GetOutBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i64, i64, i64, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_22__, %struct.TYPE_25__* }
%struct.TYPE_22__ = type { i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64, i64, i32, i32, i32, i32 }
%struct.TYPE_25__ = type { i64, %struct.TYPE_18__, %struct.TYPE_23__, %struct.TYPE_20__, i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_23__ = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64 }

@.str = private unnamed_addr constant [42 x i8] c"A/52 channels:%d samplerate:%d bitrate:%d\00", align 1
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_26__* (%struct.TYPE_24__*)* @GetOutBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_26__* @GetOutBuffer(%struct.TYPE_24__* %0) #0 {
  %2 = alloca %struct.TYPE_26__*, align 8
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  %6 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  store %struct.TYPE_25__* %8, %struct.TYPE_25__** %4, align 8
  %9 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.TYPE_26__* @block_Alloc(i32 %18)
  store %struct.TYPE_26__* %19, %struct.TYPE_26__** %5, align 8
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %21 = icmp eq %struct.TYPE_26__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %2, align 8
  br label %228

23:                                               ; preds = %1
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %28, %32
  br i1 %33, label %34, label %71

34:                                               ; preds = %23
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @msg_Dbg(%struct.TYPE_24__* %35, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %39, i64 %43, i32 %47)
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %34
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @date_Change(%struct.TYPE_18__* %56, i64 %60, i32 1)
  br label %70

62:                                               ; preds = %34
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @date_Init(%struct.TYPE_18__* %64, i64 %68, i32 1)
  br label %70

70:                                               ; preds = %62, %54
  br label %71

71:                                               ; preds = %70, %23
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 1
  %80 = call i64 @date_Get(%struct.TYPE_18__* %79)
  %81 = icmp ne i64 %77, %80
  br i1 %81, label %82, label %127

82:                                               ; preds = %71
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @VLC_TICK_INVALID, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %127

91:                                               ; preds = %82
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %97, %100
  br i1 %101, label %102, label %112

102:                                              ; preds = %91
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @date_Set(%struct.TYPE_18__* %104, i64 %110)
  br label %112

112:                                              ; preds = %102, %91
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  %121 = load i64, i64* @VLC_TICK_INVALID, align 8
  %122 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  store i64 %121, i64* %126, align 8
  br label %127

127:                                              ; preds = %112, %82, %71
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 0
  store i64 %131, i64* %135, align 8
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 5
  store i32 %139, i32* %143, align 4
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp slt i64 %148, %152
  br i1 %153, label %154, label %163

154:                                              ; preds = %127
  %155 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 1
  store i64 %158, i64* %162, align 8
  br label %163

163:                                              ; preds = %154, %127
  %164 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 4
  store i32 %167, i32* %171, align 8
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 3
  store i32 %175, i32* %179, align 4
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 2
  store i32 %183, i32* %187, align 8
  %188 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 0
  store i32 %191, i32* %194, align 8
  %195 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %199, i32 0, i32 3
  store i32 %198, i32* %200, align 8
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %201, i32 0, i32 1
  %203 = call i64 @date_Get(%struct.TYPE_18__* %202)
  %204 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %204, i32 0, i32 1
  store i64 %203, i64* %205, align 8
  %206 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %206, i32 0, i32 0
  store i64 %203, i64* %207, align 8
  %208 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @VLC_TICK_INVALID, align 8
  %212 = icmp ne i64 %210, %211
  br i1 %212, label %213, label %226

213:                                              ; preds = %163
  %214 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %214, i32 0, i32 1
  %216 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  %219 = call i64 @date_Increment(%struct.TYPE_18__* %215, i32 %218)
  %220 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = sub nsw i64 %219, %222
  %224 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %224, i32 0, i32 2
  store i64 %223, i64* %225, align 8
  br label %226

226:                                              ; preds = %213, %163
  %227 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  store %struct.TYPE_26__* %227, %struct.TYPE_26__** %2, align 8
  br label %228

228:                                              ; preds = %226, %22
  %229 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  ret %struct.TYPE_26__* %229
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_26__* @block_Alloc(i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_24__*, i8*, i32, i64, i32) #1

declare dso_local i32 @date_Change(%struct.TYPE_18__*, i64, i32) #1

declare dso_local i32 @date_Init(%struct.TYPE_18__*, i64, i32) #1

declare dso_local i64 @date_Get(%struct.TYPE_18__*) #1

declare dso_local i32 @date_Set(%struct.TYPE_18__*, i64) #1

declare dso_local i64 @date_Increment(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

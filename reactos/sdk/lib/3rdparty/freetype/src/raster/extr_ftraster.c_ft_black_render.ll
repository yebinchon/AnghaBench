; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/raster/extr_ftraster.c_ft_black_render.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/raster/extr_ftraster.c_ft_black_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i64, i32, i64*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_15__*, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_11__*, %struct.TYPE_11__* }

@FT_MAX_BLACK_POOL = common dso_local global i32 0, align 4
@Not_Ini = common dso_local global i32 0, align 4
@Invalid = common dso_local global i32 0, align 4
@Raster_Err_None = common dso_local global i32 0, align 4
@FT_RASTER_FLAG_DIRECT = common dso_local global i32 0, align 4
@Unsupported = common dso_local global i32 0, align 4
@FT_RASTER_FLAG_AA = common dso_local global i32 0, align 4
@ras = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@RAS_VAR = common dso_local global i32 0, align 4
@FT_RENDER_POOL_SIZE = common dso_local global i32 0, align 4
@Out_Of_Memory = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_13__*)* @ft_black_render to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ft_black_render(i32 %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca [1 x %struct.TYPE_11__], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %6, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %7, align 8
  %21 = load i32, i32* @FT_MAX_BLACK_POOL, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %9, align 8
  %24 = alloca %struct.TYPE_11__, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @Not_Ini, align 4
  %29 = call i32 @FT_THROW(i32 %28)
  store i32 %29, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %183

30:                                               ; preds = %2
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %32 = icmp ne %struct.TYPE_14__* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @Invalid, align 4
  %35 = call i32 @FT_THROW(i32 %34)
  store i32 %35, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %183

36:                                               ; preds = %30
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41, %36
  %47 = load i32, i32* @Raster_Err_None, align 4
  store i32 %47, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %183

48:                                               ; preds = %41
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 2
  %51 = load i64*, i64** %50, align 8
  %52 = icmp ne i64* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = icmp ne %struct.TYPE_12__* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %53, %48
  %59 = load i32, i32* @Invalid, align 4
  %60 = call i32 @FT_THROW(i32 %59)
  store i32 %60, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %183

61:                                               ; preds = %53
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 2
  %67 = load i64*, i64** %66, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %67, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, 1
  %76 = icmp ne i64 %64, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %61
  %78 = load i32, i32* @Invalid, align 4
  %79 = call i32 @FT_THROW(i32 %78)
  store i32 %79, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %183

80:                                               ; preds = %61
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @FT_RASTER_FLAG_DIRECT, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load i32, i32* @Unsupported, align 4
  %89 = call i32 @FT_THROW(i32 %88)
  store i32 %89, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %183

90:                                               ; preds = %80
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @FT_RASTER_FLAG_AA, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load i32, i32* @Unsupported, align 4
  %99 = call i32 @FT_THROW(i32 %98)
  store i32 %99, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %183

100:                                              ; preds = %90
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %102 = icmp ne %struct.TYPE_15__* %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* @Invalid, align 4
  %105 = call i32 @FT_THROW(i32 %104)
  store i32 %105, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %183

106:                                              ; preds = %100
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %111, %106
  %117 = load i32, i32* @Raster_Err_None, align 4
  store i32 %117, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %183

118:                                              ; preds = %111
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %118
  %124 = load i32, i32* @Invalid, align 4
  %125 = call i32 @FT_THROW(i32 %124)
  store i32 %125, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %183

126:                                              ; preds = %118
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 3
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %128, align 8
  store %struct.TYPE_12__* %129, %struct.TYPE_12__** %12, align 8
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i64 %133
  store %struct.TYPE_12__* %134, %struct.TYPE_12__** %13, align 8
  br label %135

135:                                              ; preds = %167, %126
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %138 = icmp ult %struct.TYPE_12__* %136, %137
  br i1 %138, label %139, label %170

139:                                              ; preds = %135
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = icmp slt i64 %143, -16777216
  br i1 %144, label %163, label %145

145:                                              ; preds = %139
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = icmp sgt i64 %149, 16777216
  br i1 %150, label %163, label %151

151:                                              ; preds = %145
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = icmp slt i64 %155, -16777216
  br i1 %156, label %163, label %157

157:                                              ; preds = %151
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = icmp sgt i64 %161, 16777216
  br i1 %162, label %163, label %166

163:                                              ; preds = %157, %151, %145, %139
  %164 = load i32, i32* @Invalid, align 4
  %165 = call i32 @FT_THROW(i32 %164)
  store i32 %165, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %183

166:                                              ; preds = %157
  br label %167

167:                                              ; preds = %166
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 1
  store %struct.TYPE_12__* %169, %struct.TYPE_12__** %12, align 8
  br label %135

170:                                              ; preds = %135
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %172 = bitcast %struct.TYPE_14__* %171 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_14__* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ras, i32 0, i32 1) to i8*), i8* align 8 %172, i64 32, i1 false)
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %174 = bitcast %struct.TYPE_15__* %173 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_16__* @ras to i8*), i8* align 4 %174, i64 12, i1 false)
  %175 = getelementptr inbounds [1 x %struct.TYPE_11__], [1 x %struct.TYPE_11__]* %8, i64 0, i64 0
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 1
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %176, align 8
  %177 = mul nsw i64 1, %22
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i64 %177
  %179 = getelementptr inbounds [1 x %struct.TYPE_11__], [1 x %struct.TYPE_11__]* %8, i64 0, i64 0
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  store %struct.TYPE_11__* %178, %struct.TYPE_11__** %180, align 16
  %181 = load i32, i32* @RAS_VAR, align 4
  %182 = call i32 @Render_Glyph(i32 %181)
  store i32 %182, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %183

183:                                              ; preds = %170, %163, %123, %116, %103, %97, %87, %77, %58, %46, %33, %27
  %184 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %184)
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @FT_THROW(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @Render_Glyph(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

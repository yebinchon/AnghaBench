; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/raster/extr_ftraster.c_ft_black_render.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/raster/extr_ftraster.c_ft_black_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i32, i64*, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_10__*, i64 }
%struct.TYPE_7__ = type { i32*, i32* }

@FT_MAX_BLACK_POOL = common dso_local global i32 0, align 4
@Not_Ini = common dso_local global i32 0, align 4
@Invalid = common dso_local global i32 0, align 4
@Raster_Err_None = common dso_local global i32 0, align 4
@FT_RASTER_FLAG_DIRECT = common dso_local global i32 0, align 4
@Unsupported = common dso_local global i32 0, align 4
@FT_RASTER_FLAG_AA = common dso_local global i32 0, align 4
@ras = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@RAS_VAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_8__*)* @ft_black_render to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ft_black_render(i32 %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca [1 x %struct.TYPE_7__], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %6, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %7, align 8
  %19 = load i32, i32* @FT_MAX_BLACK_POOL, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %9, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @Not_Ini, align 4
  %27 = call i32 @FT_THROW(i32 %26)
  store i32 %27, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %137

28:                                               ; preds = %2
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %30 = icmp ne %struct.TYPE_9__* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* @Invalid, align 4
  %33 = call i32 @FT_THROW(i32 %32)
  store i32 %33, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %137

34:                                               ; preds = %28
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp sle i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39, %34
  %45 = load i32, i32* @Raster_Err_None, align 4
  store i32 %45, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %137

46:                                               ; preds = %39
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = load i64*, i64** %48, align 8
  %50 = icmp ne i64* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51, %46
  %57 = load i32, i32* @Invalid, align 4
  %58 = call i32 @FT_THROW(i32 %57)
  store i32 %58, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %137

59:                                               ; preds = %51
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  %65 = load i64*, i64** %64, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %65, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, 1
  %74 = icmp ne i64 %62, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %59
  %76 = load i32, i32* @Invalid, align 4
  %77 = call i32 @FT_THROW(i32 %76)
  store i32 %77, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %137

78:                                               ; preds = %59
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @FT_RASTER_FLAG_DIRECT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load i32, i32* @Unsupported, align 4
  %87 = call i32 @FT_THROW(i32 %86)
  store i32 %87, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %137

88:                                               ; preds = %78
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @FT_RASTER_FLAG_AA, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load i32, i32* @Unsupported, align 4
  %97 = call i32 @FT_THROW(i32 %96)
  store i32 %97, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %137

98:                                               ; preds = %88
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %100 = icmp ne %struct.TYPE_10__* %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* @Invalid, align 4
  %103 = call i32 @FT_THROW(i32 %102)
  store i32 %103, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %137

104:                                              ; preds = %98
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %109, %104
  %115 = load i32, i32* @Raster_Err_None, align 4
  store i32 %115, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %137

116:                                              ; preds = %109
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %116
  %122 = load i32, i32* @Invalid, align 4
  %123 = call i32 @FT_THROW(i32 %122)
  store i32 %123, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %137

124:                                              ; preds = %116
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %126 = bitcast %struct.TYPE_9__* %125 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_9__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ras, i32 0, i32 1) to i8*), i8* align 8 %126, i64 32, i1 false)
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %128 = bitcast %struct.TYPE_10__* %127 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_11__* @ras to i8*), i8* align 4 %128, i64 12, i1 false)
  %129 = getelementptr inbounds [1 x %struct.TYPE_7__], [1 x %struct.TYPE_7__]* %8, i64 0, i64 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  store i32* %22, i32** %130, align 8
  %131 = mul nsw i64 1, %20
  %132 = getelementptr inbounds i32, i32* %22, i64 %131
  %133 = getelementptr inbounds [1 x %struct.TYPE_7__], [1 x %struct.TYPE_7__]* %8, i64 0, i64 0
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  store i32* %132, i32** %134, align 16
  %135 = load i32, i32* @RAS_VAR, align 4
  %136 = call i32 @Render_Glyph(i32 %135)
  store i32 %136, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %137

137:                                              ; preds = %124, %121, %114, %101, %95, %85, %75, %56, %44, %31, %25
  %138 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %138)
  %139 = load i32, i32* %3, align 4
  ret i32 %139
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

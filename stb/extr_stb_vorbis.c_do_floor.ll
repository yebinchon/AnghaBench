; ModuleID = '/home/carl/AnghaBench/stb/extr_stb_vorbis.c_do_floor.c'
source_filename = "/home/carl/AnghaBench/stb/extr_stb_vorbis.c_do_floor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32*, i32* }
%struct.TYPE_13__ = type { i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@VORBIS_invalid_stream = common dso_local global i32 0, align 4
@inverse_db_table = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_13__*, i32, i32, float*, i32*, i64*)* @do_floor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_floor(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, i32 %2, i32 %3, float* %4, i32* %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_14__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store float* %4, float** %13, align 8
  store i32* %5, i32** %14, align 8
  store i64* %6, i64** %15, align 8
  %26 = load i32, i32* %12, align 4
  %27 = ashr i32 %26, 1
  store i32 %27, i32* %16, align 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %17, align 4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %17, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %18, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %18, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %7
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %53 = load i32, i32* @VORBIS_invalid_stream, align 4
  %54 = call i32 @error(%struct.TYPE_12__* %52, i32 %53)
  store i32 %54, i32* %8, align 4
  br label %158

55:                                               ; preds = %7
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = load i32, i32* %18, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  store %struct.TYPE_14__* %62, %struct.TYPE_14__** %19, align 8
  store i32 0, i32* %22, align 4
  %63 = load i32*, i32** %14, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = mul nsw i32 %65, %68
  store i32 %69, i32* %23, align 4
  store i32 1, i32* %21, align 4
  br label %70

70:                                               ; preds = %124, %55
  %71 = load i32, i32* %21, align 4
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %127

76:                                               ; preds = %70
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %21, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %20, align 4
  %84 = load i32*, i32** %14, align 8
  %85 = load i32, i32* %20, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = icmp sge i32 %88, 0
  br i1 %89, label %90, label %123

90:                                               ; preds = %76
  %91 = load i32*, i32** %14, align 8
  %92 = load i32, i32* %20, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = mul nsw i32 %95, %98
  store i32 %99, i32* %24, align 4
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %20, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %25, align 4
  %107 = load i32, i32* %22, align 4
  %108 = load i32, i32* %25, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %90
  %111 = load float*, float** %13, align 8
  %112 = load i32, i32* %22, align 4
  %113 = load i32, i32* %23, align 4
  %114 = load i32, i32* %25, align 4
  %115 = load i32, i32* %24, align 4
  %116 = load i32, i32* %16, align 4
  %117 = call i32 @draw_line(float* %111, i32 %112, i32 %113, i32 %114, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %110, %90
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %120 = call i32 @CHECK(%struct.TYPE_12__* %119)
  %121 = load i32, i32* %25, align 4
  store i32 %121, i32* %22, align 4
  %122 = load i32, i32* %24, align 4
  store i32 %122, i32* %23, align 4
  br label %123

123:                                              ; preds = %118, %76
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %21, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %21, align 4
  br label %70

127:                                              ; preds = %70
  %128 = load i32, i32* %22, align 4
  %129 = load i32, i32* %16, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %155

131:                                              ; preds = %127
  %132 = load i32, i32* %22, align 4
  store i32 %132, i32* %20, align 4
  br label %133

133:                                              ; preds = %149, %131
  %134 = load i32, i32* %20, align 4
  %135 = load i32, i32* %16, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %152

137:                                              ; preds = %133
  %138 = load float*, float** %13, align 8
  %139 = load i32, i32* %20, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds float, float* %138, i64 %140
  %142 = load float, float* %141, align 4
  %143 = load i32*, i32** @inverse_db_table, align 8
  %144 = load i32, i32* %23, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @LINE_OP(float %142, i32 %147)
  br label %149

149:                                              ; preds = %137
  %150 = load i32, i32* %20, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %20, align 4
  br label %133

152:                                              ; preds = %133
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %154 = call i32 @CHECK(%struct.TYPE_12__* %153)
  br label %155

155:                                              ; preds = %152, %127
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* @TRUE, align 4
  store i32 %157, i32* %8, align 4
  br label %158

158:                                              ; preds = %156, %51
  %159 = load i32, i32* %8, align 4
  ret i32 %159
}

declare dso_local i32 @error(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @draw_line(float*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CHECK(%struct.TYPE_12__*) #1

declare dso_local i32 @LINE_OP(float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

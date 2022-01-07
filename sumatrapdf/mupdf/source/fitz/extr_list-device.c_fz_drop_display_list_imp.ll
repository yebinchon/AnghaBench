; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_list-device.c_fz_drop_display_list_imp.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_list-device.c_fz_drop_display_list_imp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i64, i32, i32, %struct.TYPE_4__*, i64, i64, i64, i64 }

@ALPHA_PRESENT = common dso_local global i64 0, align 8
@CTM_CHANGE_AD = common dso_local global i32 0, align 4
@CTM_CHANGE_BC = common dso_local global i32 0, align 4
@CTM_CHANGE_EF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @fz_drop_display_list_imp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_drop_display_list_imp(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = bitcast i32* %13 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %5, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 6
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %6, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 6
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %24
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %7, align 8
  store i32 1, i32* %8, align 4
  br label %26

26:                                               ; preds = %191, %2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %29 = icmp ne %struct.TYPE_4__* %27, %28
  br i1 %29, label %30, label %193

30:                                               ; preds = %26
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = bitcast %struct.TYPE_4__* %10 to i8*
  %33 = bitcast %struct.TYPE_4__* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 72, i1 false)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %37
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %11, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 1
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 10
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %30
  %45 = call i32 @SIZE_IN_NODES(i32 4)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %47
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %6, align 8
  br label %49

49:                                               ; preds = %44, %30
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %52 [
    i32 139, label %53
    i32 144, label %54
    i32 143, label %54
    i32 141, label %55
    i32 140, label %55
    i32 146, label %56
    i32 145, label %56
    i32 142, label %57
  ]

52:                                               ; preds = %49
  br label %53

53:                                               ; preds = %49, %52
  br label %71

54:                                               ; preds = %49, %49
  store i32 1, i32* %8, align 4
  br label %71

55:                                               ; preds = %49, %49
  store i32 3, i32* %8, align 4
  br label %71

56:                                               ; preds = %49, %49
  store i32 4, i32* %8, align 4
  br label %71

57:                                               ; preds = %49
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %59 = bitcast %struct.TYPE_4__* %58 to i32**
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %9, align 8
  %61 = load i32*, i32** %3, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @fz_colorspace_n(i32* %61, i32* %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32*, i32** %3, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = call i32 @fz_drop_colorspace(i32* %64, i32* %65)
  %67 = call i32 @SIZE_IN_NODES(i32 8)
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %69
  store %struct.TYPE_4__* %70, %struct.TYPE_4__** %6, align 8
  br label %71

71:                                               ; preds = %57, %56, %55, %54, %53
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 9
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %71
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 %77, 4
  %79 = trunc i64 %78 to i32
  %80 = call i32 @SIZE_IN_NODES(i32 %79)
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %82
  store %struct.TYPE_4__* %83, %struct.TYPE_4__** %6, align 8
  br label %84

84:                                               ; preds = %75, %71
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @ALPHA_PRESENT, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = call i32 @SIZE_IN_NODES(i32 4)
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %92
  store %struct.TYPE_4__* %93, %struct.TYPE_4__** %6, align 8
  br label %94

94:                                               ; preds = %89, %84
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @CTM_CHANGE_AD, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %94
  %101 = call i32 @SIZE_IN_NODES(i32 8)
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %103
  store %struct.TYPE_4__* %104, %struct.TYPE_4__** %6, align 8
  br label %105

105:                                              ; preds = %100, %94
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @CTM_CHANGE_BC, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %105
  %112 = call i32 @SIZE_IN_NODES(i32 8)
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i64 %114
  store %struct.TYPE_4__* %115, %struct.TYPE_4__** %6, align 8
  br label %116

116:                                              ; preds = %111, %105
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @CTM_CHANGE_EF, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %116
  %123 = call i32 @SIZE_IN_NODES(i32 8)
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i64 %125
  store %struct.TYPE_4__* %126, %struct.TYPE_4__** %6, align 8
  br label %127

127:                                              ; preds = %122, %116
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 8
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %127
  %132 = load i32*, i32** %3, align 8
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %134 = bitcast %struct.TYPE_4__* %133 to i32**
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @fz_drop_stroke_state(i32* %132, i32* %135)
  %137 = call i32 @SIZE_IN_NODES(i32 8)
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i64 %139
  store %struct.TYPE_4__* %140, %struct.TYPE_4__** %6, align 8
  br label %141

141:                                              ; preds = %131, %127
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 7
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %158

145:                                              ; preds = %141
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %147 = bitcast %struct.TYPE_4__* %146 to i32*
  %148 = call i32 @fz_packed_path_size(i32* %147)
  store i32 %148, i32* %12, align 4
  %149 = load i32*, i32** %3, align 8
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %151 = bitcast %struct.TYPE_4__* %150 to i32*
  %152 = call i32 @fz_drop_path(i32* %149, i32* %151)
  %153 = load i32, i32* %12, align 4
  %154 = call i32 @SIZE_IN_NODES(i32 %153)
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %156 = sext i32 %154 to i64
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i64 %156
  store %struct.TYPE_4__* %157, %struct.TYPE_4__** %6, align 8
  br label %158

158:                                              ; preds = %145, %141
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 5
  %160 = load i32, i32* %159, align 4
  switch i32 %160, label %191 [
    i32 130, label %161
    i32 128, label %161
    i32 135, label %161
    i32 136, label %161
    i32 129, label %161
    i32 131, label %167
    i32 133, label %173
    i32 132, label %173
    i32 137, label %173
    i32 138, label %179
    i32 134, label %185
  ]

161:                                              ; preds = %158, %158, %158, %158, %158
  %162 = load i32*, i32** %3, align 8
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %164 = bitcast %struct.TYPE_4__* %163 to i32**
  %165 = load i32*, i32** %164, align 8
  %166 = call i32 @fz_drop_text(i32* %162, i32* %165)
  br label %191

167:                                              ; preds = %158
  %168 = load i32*, i32** %3, align 8
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %170 = bitcast %struct.TYPE_4__* %169 to i32**
  %171 = load i32*, i32** %170, align 8
  %172 = call i32 @fz_drop_shade(i32* %168, i32* %171)
  br label %191

173:                                              ; preds = %158, %158, %158
  %174 = load i32*, i32** %3, align 8
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %176 = bitcast %struct.TYPE_4__* %175 to i32**
  %177 = load i32*, i32** %176, align 8
  %178 = call i32 @fz_drop_image(i32* %174, i32* %177)
  br label %191

179:                                              ; preds = %158
  %180 = load i32*, i32** %3, align 8
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %182 = bitcast %struct.TYPE_4__* %181 to i32**
  %183 = load i32*, i32** %182, align 8
  %184 = call i32 @fz_drop_colorspace(i32* %180, i32* %183)
  br label %191

185:                                              ; preds = %158
  %186 = load i32*, i32** %3, align 8
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %188 = bitcast %struct.TYPE_4__* %187 to i32**
  %189 = load i32*, i32** %188, align 8
  %190 = call i32 @fz_drop_default_colorspaces(i32* %186, i32* %189)
  br label %191

191:                                              ; preds = %158, %185, %179, %173, %167, %161
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  store %struct.TYPE_4__* %192, %struct.TYPE_4__** %6, align 8
  br label %26

193:                                              ; preds = %26
  %194 = load i32*, i32** %3, align 8
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 6
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %196, align 8
  %198 = call i32 @fz_free(i32* %194, %struct.TYPE_4__* %197)
  %199 = load i32*, i32** %3, align 8
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %201 = call i32 @fz_free(i32* %199, %struct.TYPE_4__* %200)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @SIZE_IN_NODES(i32) #2

declare dso_local i32 @fz_colorspace_n(i32*, i32*) #2

declare dso_local i32 @fz_drop_colorspace(i32*, i32*) #2

declare dso_local i32 @fz_drop_stroke_state(i32*, i32*) #2

declare dso_local i32 @fz_packed_path_size(i32*) #2

declare dso_local i32 @fz_drop_path(i32*, i32*) #2

declare dso_local i32 @fz_drop_text(i32*, i32*) #2

declare dso_local i32 @fz_drop_shade(i32*, i32*) #2

declare dso_local i32 @fz_drop_image(i32*, i32*) #2

declare dso_local i32 @fz_drop_default_colorspaces(i32*, i32*) #2

declare dso_local i32 @fz_free(i32*, %struct.TYPE_4__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

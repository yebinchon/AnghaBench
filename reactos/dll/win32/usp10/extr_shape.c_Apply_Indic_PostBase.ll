; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_Apply_Indic_PostBase.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_Apply_Indic_PostBase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i64 }

@GSUB_E_NOGLYPH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32*, i64, %struct.TYPE_5__*, i32*, i64*, i32*, i32, %struct.TYPE_5__*, i32, i8*)* @Apply_Indic_PostBase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Apply_Indic_PostBase(i32 %0, i32* %1, i32* %2, i32* %3, i64 %4, %struct.TYPE_5__* %5, i32* %6, i64* %7, i32* %8, i32 %9, %struct.TYPE_5__* %10, i32 %11, i8* %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_5__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_5__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store i32 %0, i32* %14, align 4
  store i32* %1, i32** %15, align 8
  store i32* %2, i32** %16, align 8
  store i32* %3, i32** %17, align 8
  store i64 %4, i64* %18, align 8
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %19, align 8
  store i32* %6, i32** %20, align 8
  store i64* %7, i64** %21, align 8
  store i32* %8, i32** %22, align 8
  store i32 %9, i32* %23, align 4
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %24, align 8
  store i32 %11, i32* %25, align 4
  store i8* %12, i8** %26, align 8
  store i64 0, i64* %30, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %31, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = sub i64 %40, %43
  store i64 %44, i64* %29, align 8
  %45 = load i32*, i32** %17, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i64, i64* %29, align 8
  %51 = load i32, i32* %23, align 4
  %52 = call i64 @find_halant_consonant(i32* %49, i64 0, i64 %50, i32 %51)
  store i64 %52, i64* %27, align 8
  br label %53

53:                                               ; preds = %205, %13
  %54 = load i64, i64* %27, align 8
  %55 = icmp uge i64 %54, 0
  br i1 %55, label %56, label %217

56:                                               ; preds = %53
  %57 = load i64*, i64** %21, align 8
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %32, align 8
  %59 = load i64, i64* %31, align 8
  %60 = icmp uge i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load i64, i64* %31, align 8
  %63 = load i64, i64* %27, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i64, i64* %30, align 8
  %67 = add i64 %66, -1
  store i64 %67, i64* %30, align 8
  store i64 -1, i64* %31, align 8
  br label %68

68:                                               ; preds = %65, %61, %56
  %69 = load i32, i32* %25, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %113, label %71

71:                                               ; preds = %68
  %72 = load i32*, i32** %20, align 8
  %73 = load i64, i64* %27, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %73, %76
  %78 = load i64, i64* %30, align 8
  %79 = add i64 %77, %78
  %80 = getelementptr inbounds i32, i32* %72, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %33, align 4
  %82 = load i32*, i32** %20, align 8
  %83 = load i64, i64* %27, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = add i64 %83, %86
  %88 = load i64, i64* %30, align 8
  %89 = add i64 %87, %88
  %90 = add i64 %89, 1
  %91 = getelementptr inbounds i32, i32* %82, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %20, align 8
  %94 = load i64, i64* %27, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = add i64 %94, %97
  %99 = load i64, i64* %30, align 8
  %100 = add i64 %98, %99
  %101 = getelementptr inbounds i32, i32* %93, i64 %100
  store i32 %92, i32* %101, align 4
  %102 = load i32, i32* %33, align 4
  %103 = load i32*, i32** %20, align 8
  %104 = load i64, i64* %27, align 8
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = add i64 %104, %107
  %109 = load i64, i64* %30, align 8
  %110 = add i64 %108, %109
  %111 = add i64 %110, 1
  %112 = getelementptr inbounds i32, i32* %103, i64 %111
  store i32 %102, i32* %112, align 4
  br label %113

113:                                              ; preds = %71, %68
  %114 = load i32, i32* %14, align 4
  %115 = load i32*, i32** %16, align 8
  %116 = load i32*, i32** %15, align 8
  %117 = load i32*, i32** %20, align 8
  %118 = load i64, i64* %27, align 8
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = add i64 %118, %121
  %123 = load i64, i64* %30, align 8
  %124 = add i64 %122, %123
  %125 = load i64*, i64** %21, align 8
  %126 = load i8*, i8** %26, align 8
  %127 = call i64 @apply_GSUB_feature_to_glyph(i32 %114, i32* %115, i32* %116, i32* %117, i64 %124, i32 1, i64* %125, i8* %126)
  store i64 %127, i64* %28, align 8
  %128 = load i64, i64* %28, align 8
  %129 = load i64, i64* @GSUB_E_NOGLYPH, align 8
  %130 = icmp ugt i64 %128, %129
  br i1 %130, label %131, label %159

131:                                              ; preds = %113
  %132 = load i64, i64* %28, align 8
  %133 = load i64*, i64** %21, align 8
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %32, align 8
  %136 = sub i64 %134, %135
  %137 = load i64, i64* %18, align 8
  %138 = load i32*, i32** %22, align 8
  %139 = call i32 @UpdateClusters(i64 %132, i64 %136, i32 1, i64 %137, i32* %138)
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %141 = load i64, i64* %27, align 8
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = add i64 %141, %144
  %146 = load i64, i64* %30, align 8
  %147 = add i64 %145, %146
  %148 = load i64*, i64** %21, align 8
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* %32, align 8
  %151 = sub i64 %149, %150
  %152 = call i32 @shift_syllable_glyph_indexs(%struct.TYPE_5__* %140, i64 %147, i64 %151)
  %153 = load i64*, i64** %21, align 8
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* %32, align 8
  %156 = sub i64 %154, %155
  %157 = load i64, i64* %30, align 8
  %158 = add i64 %157, %156
  store i64 %158, i64* %30, align 8
  br label %205

159:                                              ; preds = %113
  %160 = load i32, i32* %25, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %204, label %162

162:                                              ; preds = %159
  %163 = load i32*, i32** %20, align 8
  %164 = load i64, i64* %27, align 8
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = add i64 %164, %167
  %169 = load i64, i64* %30, align 8
  %170 = add i64 %168, %169
  %171 = getelementptr inbounds i32, i32* %163, i64 %170
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %34, align 4
  %173 = load i32*, i32** %20, align 8
  %174 = load i64, i64* %27, align 8
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = add i64 %174, %177
  %179 = load i64, i64* %30, align 8
  %180 = add i64 %178, %179
  %181 = add i64 %180, 1
  %182 = getelementptr inbounds i32, i32* %173, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load i32*, i32** %20, align 8
  %185 = load i64, i64* %27, align 8
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = add i64 %185, %188
  %190 = load i64, i64* %30, align 8
  %191 = add i64 %189, %190
  %192 = getelementptr inbounds i32, i32* %184, i64 %191
  store i32 %183, i32* %192, align 4
  %193 = load i32, i32* %34, align 4
  %194 = load i32*, i32** %20, align 8
  %195 = load i64, i64* %27, align 8
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = add i64 %195, %198
  %200 = load i64, i64* %30, align 8
  %201 = add i64 %199, %200
  %202 = add i64 %201, 1
  %203 = getelementptr inbounds i32, i32* %194, i64 %202
  store i32 %193, i32* %203, align 4
  br label %204

204:                                              ; preds = %162, %159
  br label %205

205:                                              ; preds = %204, %131
  %206 = load i64, i64* %27, align 8
  %207 = add i64 %206, 2
  store i64 %207, i64* %27, align 8
  %208 = load i32*, i32** %17, align 8
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = getelementptr inbounds i32, i32* %208, i64 %211
  %213 = load i64, i64* %27, align 8
  %214 = load i64, i64* %29, align 8
  %215 = load i32, i32* %23, align 4
  %216 = call i64 @find_halant_consonant(i32* %212, i64 %213, i64 %214, i32 %215)
  store i64 %216, i64* %27, align 8
  br label %53

217:                                              ; preds = %53
  ret void
}

declare dso_local i64 @find_halant_consonant(i32*, i64, i64, i32) #1

declare dso_local i64 @apply_GSUB_feature_to_glyph(i32, i32*, i32*, i32*, i64, i32, i64*, i8*) #1

declare dso_local i32 @UpdateClusters(i64, i64, i32, i64, i32*) #1

declare dso_local i32 @shift_syllable_glyph_indexs(%struct.TYPE_5__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

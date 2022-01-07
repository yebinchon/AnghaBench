; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-layout.c_quick_ligature.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-layout.c_quick_ligature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { float }
%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*, i32)* @quick_ligature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quick_ligature(i32* %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load float, float* %14, align 4
  %16 = fcmp oeq float %15, 1.020000e+02
  br i1 %16, label %17, label %167

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = add i32 %18, 1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %24, label %167

24:                                               ; preds = %17
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.TYPE_8__* @fz_font_flags(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %167, label %32

32:                                               ; preds = %24
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = add i32 %36, 1
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load float, float* %40, align 4
  %42 = fcmp oeq float %41, 1.020000e+02
  br i1 %42, label %43, label %118

43:                                               ; preds = %32
  %44 = load i32, i32* %7, align 4
  %45 = add i32 %44, 2
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ult i32 %45, %48
  br i1 %49, label %50, label %74

50:                                               ; preds = %43
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = add i32 %54, 2
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load float, float* %58, align 4
  %60 = fcmp oeq float %59, 1.050000e+02
  br i1 %60, label %61, label %74

61:                                               ; preds = %50
  %62 = load i32*, i32** %5, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @fz_encode_character(i32* %62, i32 %65, i32 64259)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load i32*, i32** %5, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @quick_ligature_mov(i32* %69, %struct.TYPE_7__* %70, i32 %71, i32 2, i32 64259)
  store i32 %72, i32* %4, align 4
  br label %177

73:                                               ; preds = %61
  br label %74

74:                                               ; preds = %73, %50, %43
  %75 = load i32, i32* %7, align 4
  %76 = add i32 %75, 2
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ult i32 %76, %79
  br i1 %80, label %81, label %105

81:                                               ; preds = %74
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = add i32 %85, 2
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load float, float* %89, align 4
  %91 = fcmp oeq float %90, 1.080000e+02
  br i1 %91, label %92, label %105

92:                                               ; preds = %81
  %93 = load i32*, i32** %5, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @fz_encode_character(i32* %93, i32 %96, i32 64260)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %92
  %100 = load i32*, i32** %5, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @quick_ligature_mov(i32* %100, %struct.TYPE_7__* %101, i32 %102, i32 2, i32 64260)
  store i32 %103, i32* %4, align 4
  br label %177

104:                                              ; preds = %92
  br label %105

105:                                              ; preds = %104, %81, %74
  %106 = load i32*, i32** %5, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @fz_encode_character(i32* %106, i32 %109, i32 64256)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %105
  %113 = load i32*, i32** %5, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @quick_ligature_mov(i32* %113, %struct.TYPE_7__* %114, i32 %115, i32 1, i32 64256)
  store i32 %116, i32* %4, align 4
  br label %177

117:                                              ; preds = %105
  br label %118

118:                                              ; preds = %117, %32
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = load i32, i32* %7, align 4
  %123 = add i32 %122, 1
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load float, float* %126, align 4
  %128 = fcmp oeq float %127, 1.050000e+02
  br i1 %128, label %129, label %142

129:                                              ; preds = %118
  %130 = load i32*, i32** %5, align 8
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i64 @fz_encode_character(i32* %130, i32 %133, i32 64257)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %129
  %137 = load i32*, i32** %5, align 8
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @quick_ligature_mov(i32* %137, %struct.TYPE_7__* %138, i32 %139, i32 1, i32 64257)
  store i32 %140, i32* %4, align 4
  br label %177

141:                                              ; preds = %129
  br label %142

142:                                              ; preds = %141, %118
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = load i32, i32* %7, align 4
  %147 = add i32 %146, 1
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load float, float* %150, align 4
  %152 = fcmp oeq float %151, 1.080000e+02
  br i1 %152, label %153, label %166

153:                                              ; preds = %142
  %154 = load i32*, i32** %5, align 8
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = call i64 @fz_encode_character(i32* %154, i32 %157, i32 64258)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %153
  %161 = load i32*, i32** %5, align 8
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @quick_ligature_mov(i32* %161, %struct.TYPE_7__* %162, i32 %163, i32 1, i32 64258)
  store i32 %164, i32* %4, align 4
  br label %177

165:                                              ; preds = %153
  br label %166

166:                                              ; preds = %165, %142
  br label %167

167:                                              ; preds = %166, %24, %17, %3
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %169, align 8
  %171 = load i32, i32* %7, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load float, float* %174, align 4
  %176 = fptosi float %175 to i32
  store i32 %176, i32* %4, align 4
  br label %177

177:                                              ; preds = %167, %160, %136, %112, %99, %68
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local %struct.TYPE_8__* @fz_font_flags(i32) #1

declare dso_local i64 @fz_encode_character(i32*, i32, i32) #1

declare dso_local i32 @quick_ligature_mov(i32*, %struct.TYPE_7__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

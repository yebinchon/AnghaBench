; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-device.c_fz_parse_draw_options.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-device.c_fz_parse_draw_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i8*, i8*, i8*, i8*, i64, i8*, i8* }

@.str = private unnamed_addr constant [7 x i8] c"rotate\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"resolution\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"x-resolution\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"y-resolution\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"colorspace\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"gray\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"grey\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"mono\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"rgb\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"cmyk\00", align 1
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [30 x i8] c"unknown colorspace in options\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"graphics\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"text\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @fz_parse_draw_options(i32* %0, %struct.TYPE_5__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = call i32 @memset(%struct.TYPE_5__* %8, i32 0, i32 64)
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i32 96, i32* %11, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  store i32 96, i32* %13, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 8
  store i8* null, i8** %15, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 3
  store i8* null, i8** %17, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  store i8* null, i8** %19, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i8* @fz_device_rgb(i32* %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 7
  store i8* %21, i8** %23, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 6
  store i64 0, i64* %25, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i8* @fz_aa_level(i32* %26)
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 5
  store i8* %27, i8** %29, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call i8* @fz_text_aa_level(i32* %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 4
  store i8* %31, i8** %33, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i64 @fz_has_option(i32* %34, i8* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %7)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %3
  %39 = load i8*, i8** %7, align 8
  %40 = call i8* @fz_atoi(i8* %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 8
  store i8* %40, i8** %42, align 8
  br label %43

43:                                               ; preds = %38, %3
  %44 = load i32*, i32** %4, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i64 @fz_has_option(i32* %44, i8* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %7)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load i8*, i8** %7, align 8
  %50 = call i8* @fz_atoi(i8* %49)
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i32 %51, i32* %55, align 8
  br label %56

56:                                               ; preds = %48, %43
  %57 = load i32*, i32** %4, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = call i64 @fz_has_option(i32* %57, i8* %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %7)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load i8*, i8** %7, align 8
  %63 = call i8* @fz_atoi(i8* %62)
  %64 = ptrtoint i8* %63 to i32
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %61, %56
  %68 = load i32*, i32** %4, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = call i64 @fz_has_option(i32* %68, i8* %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %7)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load i8*, i8** %7, align 8
  %74 = call i8* @fz_atoi(i8* %73)
  %75 = ptrtoint i8* %74 to i32
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %72, %67
  %79 = load i32*, i32** %4, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = call i64 @fz_has_option(i32* %79, i8* %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %7)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load i8*, i8** %7, align 8
  %85 = call i8* @fz_atoi(i8* %84)
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 3
  store i8* %85, i8** %87, align 8
  br label %88

88:                                               ; preds = %83, %78
  %89 = load i32*, i32** %4, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = call i64 @fz_has_option(i32* %89, i8* %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %7)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load i8*, i8** %7, align 8
  %95 = call i8* @fz_atoi(i8* %94)
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 2
  store i8* %95, i8** %97, align 8
  br label %98

98:                                               ; preds = %93, %88
  %99 = load i32*, i32** %4, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = call i64 @fz_has_option(i32* %99, i8* %100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8** %7)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %145

103:                                              ; preds = %98
  %104 = load i8*, i8** %7, align 8
  %105 = call i64 @fz_option_eq(i8* %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %115, label %107

107:                                              ; preds = %103
  %108 = load i8*, i8** %7, align 8
  %109 = call i64 @fz_option_eq(i8* %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %107
  %112 = load i8*, i8** %7, align 8
  %113 = call i64 @fz_option_eq(i8* %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %111, %107, %103
  %116 = load i32*, i32** %4, align 8
  %117 = call i8* @fz_device_gray(i32* %116)
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 7
  store i8* %117, i8** %119, align 8
  br label %144

120:                                              ; preds = %111
  %121 = load i8*, i8** %7, align 8
  %122 = call i64 @fz_option_eq(i8* %121, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %120
  %125 = load i32*, i32** %4, align 8
  %126 = call i8* @fz_device_rgb(i32* %125)
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 7
  store i8* %126, i8** %128, align 8
  br label %143

129:                                              ; preds = %120
  %130 = load i8*, i8** %7, align 8
  %131 = call i64 @fz_option_eq(i8* %130, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %129
  %134 = load i32*, i32** %4, align 8
  %135 = call i8* @fz_device_cmyk(i32* %134)
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 7
  store i8* %135, i8** %137, align 8
  br label %142

138:                                              ; preds = %129
  %139 = load i32*, i32** %4, align 8
  %140 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %141 = call i32 @fz_throw(i32* %139, i32 %140, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0))
  br label %142

142:                                              ; preds = %138, %133
  br label %143

143:                                              ; preds = %142, %124
  br label %144

144:                                              ; preds = %143, %115
  br label %145

145:                                              ; preds = %144, %98
  %146 = load i32*, i32** %4, align 8
  %147 = load i8*, i8** %6, align 8
  %148 = call i64 @fz_has_option(i32* %146, i8* %147, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8** %7)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load i8*, i8** %7, align 8
  %152 = call i64 @fz_option_eq(i8* %151, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 6
  store i64 %152, i64* %154, align 8
  br label %155

155:                                              ; preds = %150, %145
  %156 = load i32*, i32** %4, align 8
  %157 = load i8*, i8** %6, align 8
  %158 = call i64 @fz_has_option(i32* %156, i8* %157, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i8** %7)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %155
  %161 = load i8*, i8** %7, align 8
  %162 = call i8* @parse_aa_opts(i8* %161)
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 5
  store i8* %162, i8** %164, align 8
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 4
  store i8* %162, i8** %166, align 8
  br label %167

167:                                              ; preds = %160, %155
  %168 = load i32*, i32** %4, align 8
  %169 = load i8*, i8** %6, align 8
  %170 = call i64 @fz_has_option(i32* %168, i8* %169, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8** %7)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %167
  %173 = load i8*, i8** %7, align 8
  %174 = call i8* @parse_aa_opts(i8* %173)
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 4
  store i8* %174, i8** %176, align 8
  br label %177

177:                                              ; preds = %172, %167
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp sle i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %177
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  store i32 96, i32* %184, align 8
  br label %185

185:                                              ; preds = %182, %177
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = icmp sle i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %185
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 1
  store i32 96, i32* %192, align 4
  br label %193

193:                                              ; preds = %190, %185
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 3
  %196 = load i8*, i8** %195, align 8
  %197 = icmp ult i8* %196, null
  br i1 %197, label %198, label %201

198:                                              ; preds = %193
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 3
  store i8* null, i8** %200, align 8
  br label %201

201:                                              ; preds = %198, %193
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 2
  %204 = load i8*, i8** %203, align 8
  %205 = icmp ult i8* %204, null
  br i1 %205, label %206, label %209

206:                                              ; preds = %201
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 2
  store i8* null, i8** %208, align 8
  br label %209

209:                                              ; preds = %206, %201
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  ret %struct.TYPE_5__* %210
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i8* @fz_device_rgb(i32*) #1

declare dso_local i8* @fz_aa_level(i32*) #1

declare dso_local i8* @fz_text_aa_level(i32*) #1

declare dso_local i64 @fz_has_option(i32*, i8*, i8*, i8**) #1

declare dso_local i8* @fz_atoi(i8*) #1

declare dso_local i64 @fz_option_eq(i8*, i8*) #1

declare dso_local i8* @fz_device_gray(i32*) #1

declare dso_local i8* @fz_device_cmyk(i32*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i8* @parse_aa_opts(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

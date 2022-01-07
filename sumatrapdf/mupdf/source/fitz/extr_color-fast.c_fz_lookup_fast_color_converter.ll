; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_color-fast.c_fz_lookup_fast_color_converter.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_color-fast.c_fz_lookup_fast_color_converter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@FZ_COLORSPACE_GRAY = common dso_local global i32 0, align 4
@gray_to_gray = common dso_local global i32* null, align 8
@FZ_COLORSPACE_RGB = common dso_local global i32 0, align 4
@gray_to_rgb = common dso_local global i32* null, align 8
@FZ_COLORSPACE_BGR = common dso_local global i32 0, align 4
@FZ_COLORSPACE_CMYK = common dso_local global i32 0, align 4
@gray_to_cmyk = common dso_local global i32* null, align 8
@rgb_to_gray = common dso_local global i32* null, align 8
@rgb_to_rgb = common dso_local global i32* null, align 8
@rgb_to_bgr = common dso_local global i32* null, align 8
@rgb_to_cmyk = common dso_local global i32* null, align 8
@bgr_to_gray = common dso_local global i32* null, align 8
@bgr_to_cmyk = common dso_local global i32* null, align 8
@cmyk_to_gray = common dso_local global i32* null, align 8
@cmyk_to_rgb = common dso_local global i32* null, align 8
@cmyk_to_bgr = common dso_local global i32* null, align 8
@cmyk_to_cmyk = common dso_local global i32* null, align 8
@FZ_COLORSPACE_LAB = common dso_local global i32 0, align 4
@lab_to_gray = common dso_local global i32* null, align 8
@lab_to_rgb = common dso_local global i32* null, align 8
@lab_to_bgr = common dso_local global i32* null, align 8
@lab_to_cmyk = common dso_local global i32* null, align 8
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"cannot find color converter\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @fz_lookup_fast_color_converter(i32* %0, %struct.TYPE_4__* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @FZ_COLORSPACE_GRAY, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @FZ_COLORSPACE_GRAY, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32*, i32** @gray_to_gray, align 8
  store i32* %24, i32** %4, align 8
  br label %168

25:                                               ; preds = %19
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @FZ_COLORSPACE_RGB, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32*, i32** @gray_to_rgb, align 8
  store i32* %30, i32** %4, align 8
  br label %168

31:                                               ; preds = %25
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @FZ_COLORSPACE_BGR, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32*, i32** @gray_to_rgb, align 8
  store i32* %36, i32** %4, align 8
  br label %168

37:                                               ; preds = %31
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @FZ_COLORSPACE_CMYK, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32*, i32** @gray_to_cmyk, align 8
  store i32* %42, i32** %4, align 8
  br label %168

43:                                               ; preds = %37
  br label %164

44:                                               ; preds = %3
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @FZ_COLORSPACE_RGB, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %73

48:                                               ; preds = %44
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @FZ_COLORSPACE_GRAY, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32*, i32** @rgb_to_gray, align 8
  store i32* %53, i32** %4, align 8
  br label %168

54:                                               ; preds = %48
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @FZ_COLORSPACE_RGB, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32*, i32** @rgb_to_rgb, align 8
  store i32* %59, i32** %4, align 8
  br label %168

60:                                               ; preds = %54
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @FZ_COLORSPACE_BGR, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32*, i32** @rgb_to_bgr, align 8
  store i32* %65, i32** %4, align 8
  br label %168

66:                                               ; preds = %60
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @FZ_COLORSPACE_CMYK, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32*, i32** @rgb_to_cmyk, align 8
  store i32* %71, i32** %4, align 8
  br label %168

72:                                               ; preds = %66
  br label %163

73:                                               ; preds = %44
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @FZ_COLORSPACE_BGR, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %102

77:                                               ; preds = %73
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @FZ_COLORSPACE_GRAY, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i32*, i32** @bgr_to_gray, align 8
  store i32* %82, i32** %4, align 8
  br label %168

83:                                               ; preds = %77
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @FZ_COLORSPACE_RGB, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32*, i32** @rgb_to_bgr, align 8
  store i32* %88, i32** %4, align 8
  br label %168

89:                                               ; preds = %83
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @FZ_COLORSPACE_BGR, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i32*, i32** @rgb_to_rgb, align 8
  store i32* %94, i32** %4, align 8
  br label %168

95:                                               ; preds = %89
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @FZ_COLORSPACE_CMYK, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i32*, i32** @bgr_to_cmyk, align 8
  store i32* %100, i32** %4, align 8
  br label %168

101:                                              ; preds = %95
  br label %162

102:                                              ; preds = %73
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @FZ_COLORSPACE_CMYK, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %131

106:                                              ; preds = %102
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @FZ_COLORSPACE_GRAY, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i32*, i32** @cmyk_to_gray, align 8
  store i32* %111, i32** %4, align 8
  br label %168

112:                                              ; preds = %106
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @FZ_COLORSPACE_RGB, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = load i32*, i32** @cmyk_to_rgb, align 8
  store i32* %117, i32** %4, align 8
  br label %168

118:                                              ; preds = %112
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @FZ_COLORSPACE_BGR, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = load i32*, i32** @cmyk_to_bgr, align 8
  store i32* %123, i32** %4, align 8
  br label %168

124:                                              ; preds = %118
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @FZ_COLORSPACE_CMYK, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = load i32*, i32** @cmyk_to_cmyk, align 8
  store i32* %129, i32** %4, align 8
  br label %168

130:                                              ; preds = %124
  br label %161

131:                                              ; preds = %102
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* @FZ_COLORSPACE_LAB, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %160

135:                                              ; preds = %131
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* @FZ_COLORSPACE_GRAY, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = load i32*, i32** @lab_to_gray, align 8
  store i32* %140, i32** %4, align 8
  br label %168

141:                                              ; preds = %135
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @FZ_COLORSPACE_RGB, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = load i32*, i32** @lab_to_rgb, align 8
  store i32* %146, i32** %4, align 8
  br label %168

147:                                              ; preds = %141
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* @FZ_COLORSPACE_BGR, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = load i32*, i32** @lab_to_bgr, align 8
  store i32* %152, i32** %4, align 8
  br label %168

153:                                              ; preds = %147
  %154 = load i32, i32* %9, align 4
  %155 = load i32, i32* @FZ_COLORSPACE_CMYK, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %153
  %158 = load i32*, i32** @lab_to_cmyk, align 8
  store i32* %158, i32** %4, align 8
  br label %168

159:                                              ; preds = %153
  br label %160

160:                                              ; preds = %159, %131
  br label %161

161:                                              ; preds = %160, %130
  br label %162

162:                                              ; preds = %161, %101
  br label %163

163:                                              ; preds = %162, %72
  br label %164

164:                                              ; preds = %163, %43
  %165 = load i32*, i32** %5, align 8
  %166 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %167 = call i32 @fz_throw(i32* %165, i32 %166, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %168

168:                                              ; preds = %164, %157, %151, %145, %139, %128, %122, %116, %110, %99, %93, %87, %81, %70, %64, %58, %52, %41, %35, %29, %23
  %169 = load i32*, i32** %4, align 8
  ret i32* %169
}

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

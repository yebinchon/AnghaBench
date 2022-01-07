; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c__synctex_scan_float_and_dimension.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c__synctex_scan_float_and_dimension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYNCTEX_STATUS_BAD_ARGUMENT = common dso_local global i64 0, align 8
@SYNCTEX_BUFFER_MIN_SIZE = common dso_local global i64 0, align 8
@SYNCTEX_STATUS_EOF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"problem with float.\00", align 1
@SYNCTEX_CUR = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"a float was expected.\00", align 1
@SYNCTEX_STATUS_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@SYNCTEX_STATUS_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"problem with unit.\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"cm\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"mm\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"pt\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"bp\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"sp\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"dd\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"cc\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"nd\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"nc\00", align 1
@LC_NUMERIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_synctex_scan_float_and_dimension(i32* %0, float* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca float, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store float* %1, float** %5, align 8
  store i64 0, i64* %6, align 8
  store i8* null, i8** %7, align 8
  store float 0.000000e+00, float* %8, align 4
  store i64 0, i64* %9, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp eq i32* null, %10
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load float*, float** %5, align 8
  %14 = icmp eq float* null, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %2
  %16 = load i64, i64* @SYNCTEX_STATUS_BAD_ARGUMENT, align 8
  store i64 %16, i64* %3, align 8
  br label %200

17:                                               ; preds = %12
  %18 = load i64, i64* @SYNCTEX_BUFFER_MIN_SIZE, align 8
  store i64 %18, i64* %9, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @_synctex_buffer_get_available_size(i32* %19, i64* %9)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @SYNCTEX_STATUS_EOF, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = call i32 @_synctex_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %26 = load i64, i64* %6, align 8
  store i64 %26, i64* %3, align 8
  br label %200

27:                                               ; preds = %17
  %28 = load i8*, i8** @SYNCTEX_CUR, align 8
  %29 = call float @strtod(i8* %28, i8** %7)
  store float %29, float* %8, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = load i8*, i8** @SYNCTEX_CUR, align 8
  %32 = icmp eq i8* %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = call i32 @_synctex_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i64, i64* @SYNCTEX_STATUS_ERROR, align 8
  store i64 %35, i64* %3, align 8
  br label %200

36:                                               ; preds = %27
  %37 = load i8*, i8** %7, align 8
  store i8* %37, i8** @SYNCTEX_CUR, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = call i64 @_synctex_match_string(i32* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  %41 = icmp sge i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load float, float* %8, align 4
  %44 = fmul float %43, 0x41521147A0000000
  store float %44, float* %8, align 4
  br label %196

45:                                               ; preds = %36
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @SYNCTEX_STATUS_EOF, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  br label %50

50:                                               ; preds = %174, %162, %150, %138, %126, %114, %100, %88, %76, %64, %49
  %51 = call i32 @_synctex_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %52 = load i64, i64* %6, align 8
  store i64 %52, i64* %3, align 8
  br label %200

53:                                               ; preds = %45
  %54 = load i32*, i32** %4, align 8
  %55 = call i64 @_synctex_match_string(i32* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i64 %55, i64* %6, align 8
  %56 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load float, float* %8, align 4
  %60 = fmul float %59, 0x413C73E7C0000000
  store float %60, float* %8, align 4
  br label %194

61:                                               ; preds = %53
  %62 = load i64, i64* %6, align 8
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %50

65:                                               ; preds = %61
  %66 = load i32*, i32** %4, align 8
  %67 = call i64 @_synctex_match_string(i32* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i64 %67, i64* %6, align 8
  %68 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  %69 = icmp sge i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load float, float* %8, align 4
  %72 = fmul float %71, 0x4106C31FC0000000
  store float %72, float* %8, align 4
  br label %192

73:                                               ; preds = %65
  %74 = load i64, i64* %6, align 8
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %50

77:                                               ; preds = %73
  %78 = load i32*, i32** %4, align 8
  %79 = call i64 @_synctex_match_string(i32* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i64 %79, i64* %6, align 8
  %80 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  %81 = icmp sge i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load float, float* %8, align 4
  %84 = fmul float %83, 6.553600e+04
  store float %84, float* %8, align 4
  br label %190

85:                                               ; preds = %77
  %86 = load i64, i64* %6, align 8
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %50

89:                                               ; preds = %85
  %90 = load i32*, i32** %4, align 8
  %91 = call i64 @_synctex_match_string(i32* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i64 %91, i64* %6, align 8
  %92 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  %93 = icmp sge i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load float, float* %8, align 4
  %96 = fmul float %95, 0x40F00F5C20000000
  store float %96, float* %8, align 4
  br label %188

97:                                               ; preds = %89
  %98 = load i64, i64* %6, align 8
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  br label %50

101:                                              ; preds = %97
  %102 = load i32*, i32** %4, align 8
  %103 = call i64 @_synctex_match_string(i32* %102, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i64 %103, i64* %6, align 8
  %104 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  %105 = icmp sge i64 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load float, float* %8, align 4
  %108 = fpext float %107 to double
  %109 = fmul double %108, 7.864320e+05
  %110 = fptrunc double %109 to float
  store float %110, float* %8, align 4
  br label %186

111:                                              ; preds = %101
  %112 = load i64, i64* %6, align 8
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  br label %50

115:                                              ; preds = %111
  %116 = load i32*, i32** %4, align 8
  %117 = call i64 @_synctex_match_string(i32* %116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  store i64 %117, i64* %6, align 8
  %118 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  %119 = icmp sge i64 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load float, float* %8, align 4
  %122 = fmul float %121, 1.000000e+00
  store float %122, float* %8, align 4
  br label %184

123:                                              ; preds = %115
  %124 = load i64, i64* %6, align 8
  %125 = icmp slt i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  br label %50

127:                                              ; preds = %123
  %128 = load i32*, i32** %4, align 8
  %129 = call i64 @_synctex_match_string(i32* %128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  store i64 %129, i64* %6, align 8
  %130 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  %131 = icmp sge i64 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load float, float* %8, align 4
  %134 = fmul float %133, 0x40F11EC160000000
  store float %134, float* %8, align 4
  br label %182

135:                                              ; preds = %127
  %136 = load i64, i64* %6, align 8
  %137 = icmp slt i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  br label %50

139:                                              ; preds = %135
  %140 = load i32*, i32** %4, align 8
  %141 = call i64 @_synctex_match_string(i32* %140, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  store i64 %141, i64* %6, align 8
  %142 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  %143 = icmp sge i64 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = load float, float* %8, align 4
  %146 = fmul float %145, 0x4129AE2220000000
  store float %146, float* %8, align 4
  br label %180

147:                                              ; preds = %139
  %148 = load i64, i64* %6, align 8
  %149 = icmp slt i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  br label %50

151:                                              ; preds = %147
  %152 = load i32*, i32** %4, align 8
  %153 = call i64 @_synctex_match_string(i32* %152, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  store i64 %153, i64* %6, align 8
  %154 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  %155 = icmp sge i64 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load float, float* %8, align 4
  %158 = fmul float %157, 0x40F11257C0000000
  store float %158, float* %8, align 4
  br label %178

159:                                              ; preds = %151
  %160 = load i64, i64* %6, align 8
  %161 = icmp slt i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %159
  br label %50

163:                                              ; preds = %159
  %164 = load i32*, i32** %4, align 8
  %165 = call i64 @_synctex_match_string(i32* %164, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  store i64 %165, i64* %6, align 8
  %166 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  %167 = icmp sge i64 %165, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %163
  %169 = load float, float* %8, align 4
  %170 = fmul float %169, 0x41299B83A0000000
  store float %170, float* %8, align 4
  br label %176

171:                                              ; preds = %163
  %172 = load i64, i64* %6, align 8
  %173 = icmp slt i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %171
  br label %50

175:                                              ; preds = %171
  br label %176

176:                                              ; preds = %175, %168
  br label %177

177:                                              ; preds = %176
  br label %178

178:                                              ; preds = %177, %156
  br label %179

179:                                              ; preds = %178
  br label %180

180:                                              ; preds = %179, %144
  br label %181

181:                                              ; preds = %180
  br label %182

182:                                              ; preds = %181, %132
  br label %183

183:                                              ; preds = %182
  br label %184

184:                                              ; preds = %183, %120
  br label %185

185:                                              ; preds = %184
  br label %186

186:                                              ; preds = %185, %106
  br label %187

187:                                              ; preds = %186
  br label %188

188:                                              ; preds = %187, %94
  br label %189

189:                                              ; preds = %188
  br label %190

190:                                              ; preds = %189, %82
  br label %191

191:                                              ; preds = %190
  br label %192

192:                                              ; preds = %191, %70
  br label %193

193:                                              ; preds = %192
  br label %194

194:                                              ; preds = %193, %58
  br label %195

195:                                              ; preds = %194
  br label %196

196:                                              ; preds = %195, %42
  %197 = load float, float* %8, align 4
  %198 = load float*, float** %5, align 8
  store float %197, float* %198, align 4
  %199 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  store i64 %199, i64* %3, align 8
  br label %200

200:                                              ; preds = %196, %50, %33, %24, %15
  %201 = load i64, i64* %3, align 8
  ret i64 %201
}

declare dso_local i64 @_synctex_buffer_get_available_size(i32*, i64*) #1

declare dso_local i32 @_synctex_error(i8*) #1

declare dso_local float @strtod(i8*, i8**) #1

declare dso_local i64 @_synctex_match_string(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

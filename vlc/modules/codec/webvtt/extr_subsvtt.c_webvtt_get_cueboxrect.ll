; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/webvtt/extr_subsvtt.c_webvtt_get_cueboxrect.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/webvtt/extr_subsvtt.c_webvtt_get_cueboxrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { float, i64, i64, i64, %struct.TYPE_8__, %struct.TYPE_7__, i64 }
%struct.TYPE_8__ = type { float, i32 }
%struct.TYPE_7__ = type { float, i32 }
%struct.TYPE_9__ = type { float, float, float, float }

@WEBVTT_REGION_LINES_COUNT = common dso_local global float 0.000000e+00, align 4
@WEBVTT_LINE_TO_HEIGHT_RATIO = common dso_local global float 0.000000e+00, align 4
@WEBVTT_ALIGN_LEFT = common dso_local global i64 0, align 8
@WEBVTT_ALIGN_RIGHT = common dso_local global i64 0, align 8
@WEBVTT_ALIGN_AUTO = common dso_local global i64 0, align 8
@WEBVTT_ALIGN_CENTER = common dso_local global i32 0, align 4
@WEBVTT_ALIGN_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_9__*)* @webvtt_get_cueboxrect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @webvtt_get_cueboxrect(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %34, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 6
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load float, float* %22, align 8
  %24 = load float, float* @WEBVTT_REGION_LINES_COUNT, align 4
  %25 = load float, float* @WEBVTT_LINE_TO_HEIGHT_RATIO, align 4
  %26 = fmul float %24, %25
  %27 = fdiv float %23, %26
  store float %27, float* %8, align 4
  br label %33

28:                                               ; preds = %14
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load float, float* %31, align 8
  store float %32, float* %8, align 4
  br label %33

33:                                               ; preds = %28, %19
  br label %35

34:                                               ; preds = %2
  store float 1.000000e+00, float* %8, align 4
  br label %35

35:                                               ; preds = %34, %33
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load float, float* %37, align 8
  %39 = fcmp olt float %38, 0.000000e+00
  br i1 %39, label %40, label %57

40:                                               ; preds = %35
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @WEBVTT_ALIGN_LEFT, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store float 0.000000e+00, float* %6, align 4
  br label %56

47:                                               ; preds = %40
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @WEBVTT_ALIGN_RIGHT, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store float 1.000000e+00, float* %6, align 4
  br label %55

54:                                               ; preds = %47
  store float 5.000000e-01, float* %6, align 4
  br label %55

55:                                               ; preds = %54, %53
  br label %56

56:                                               ; preds = %55, %46
  br label %61

57:                                               ; preds = %35
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load float, float* %59, align 8
  store float %60, float* %6, align 4
  br label %61

61:                                               ; preds = %57, %56
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @WEBVTT_ALIGN_AUTO, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %87

67:                                               ; preds = %61
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @WEBVTT_ALIGN_LEFT, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %79, label %73

73:                                               ; preds = %67
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @WEBVTT_ALIGN_RIGHT, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %73, %67
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %7, align 4
  br label %86

84:                                               ; preds = %73
  %85 = load i32, i32* @WEBVTT_ALIGN_CENTER, align 4
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %84, %79
  br label %92

87:                                               ; preds = %61
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %87, %86
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %92
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load float, float* %101, align 8
  store float %102, float* %5, align 4
  br label %104

103:                                              ; preds = %92
  store float 0.000000e+00, float* %5, align 4
  br label %104

104:                                              ; preds = %103, %98
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @WEBVTT_ALIGN_AUTO, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %159

110:                                              ; preds = %104
  %111 = load float, float* %8, align 4
  %112 = fcmp ogt float %111, 0.000000e+00
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load float, float* %8, align 4
  %115 = fpext float %114 to double
  br label %120

116:                                              ; preds = %110
  %117 = load float, float* %8, align 4
  %118 = fpext float %117 to double
  %119 = fadd double 1.000000e+00, %118
  br label %120

120:                                              ; preds = %116, %113
  %121 = phi double [ %115, %113 ], [ %119, %116 ]
  %122 = fptrunc double %121 to float
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  store float %122, float* %124, align 4
  %125 = load float, float* %5, align 4
  %126 = fcmp une float %125, 0.000000e+00
  br i1 %126, label %127, label %130

127:                                              ; preds = %120
  %128 = load float, float* %5, align 4
  %129 = fpext float %128 to double
  br label %131

130:                                              ; preds = %120
  br label %131

131:                                              ; preds = %130, %127
  %132 = phi double [ %129, %127 ], [ 1.000000e+00, %130 ]
  %133 = fptrunc double %132 to float
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  store float %133, float* %135, align 4
  %136 = load float, float* %6, align 4
  %137 = fcmp ogt float %136, 0.000000e+00
  br i1 %137, label %138, label %158

138:                                              ; preds = %131
  %139 = load i32, i32* %7, align 4
  %140 = zext i32 %139 to i64
  %141 = load i64, i64* @WEBVTT_ALIGN_LEFT, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %147, label %143

143:                                              ; preds = %138
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* @WEBVTT_ALIGN_START, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %158

147:                                              ; preds = %143, %138
  %148 = load float, float* %6, align 4
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 2
  store float %148, float* %150, align 4
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 2
  %153 = load float, float* %152, align 4
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 1
  %156 = load float, float* %155, align 4
  %157 = fsub float %156, %153
  store float %157, float* %155, align 4
  br label %158

158:                                              ; preds = %147, %143, %131
  br label %226

159:                                              ; preds = %104
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @WEBVTT_ALIGN_LEFT, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %181

165:                                              ; preds = %159
  %166 = load float, float* %8, align 4
  %167 = fcmp ogt float %166, 0.000000e+00
  br i1 %167, label %168, label %172

168:                                              ; preds = %165
  %169 = load float, float* %8, align 4
  %170 = fpext float %169 to double
  %171 = fsub double 1.000000e+00, %170
  br label %176

172:                                              ; preds = %165
  %173 = load float, float* %8, align 4
  %174 = fneg float %173
  %175 = fpext float %174 to double
  br label %176

176:                                              ; preds = %172, %168
  %177 = phi double [ %171, %168 ], [ %175, %172 ]
  %178 = fptrunc double %177 to float
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 2
  store float %178, float* %180, align 4
  br label %196

181:                                              ; preds = %159
  %182 = load float, float* %8, align 4
  %183 = fcmp ogt float %182, 0.000000e+00
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load float, float* %8, align 4
  %186 = fpext float %185 to double
  br label %191

187:                                              ; preds = %181
  %188 = load float, float* %8, align 4
  %189 = fpext float %188 to double
  %190 = fadd double 1.000000e+00, %189
  br label %191

191:                                              ; preds = %187, %184
  %192 = phi double [ %186, %184 ], [ %190, %187 ]
  %193 = fptrunc double %192 to float
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 2
  store float %193, float* %195, align 4
  br label %196

196:                                              ; preds = %191, %176
  %197 = load float, float* %5, align 4
  %198 = fcmp une float %197, 0.000000e+00
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = load float, float* %5, align 4
  %201 = fpext float %200 to double
  br label %203

202:                                              ; preds = %196
  br label %203

203:                                              ; preds = %202, %199
  %204 = phi double [ %201, %199 ], [ 1.000000e+00, %202 ]
  %205 = fptrunc double %204 to float
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  store float %205, float* %207, align 4
  %208 = load float, float* %6, align 4
  %209 = fcmp ogt float %208, 0.000000e+00
  br i1 %209, label %210, label %225

210:                                              ; preds = %203
  %211 = load i32, i32* %7, align 4
  %212 = load i32, i32* @WEBVTT_ALIGN_START, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %225

214:                                              ; preds = %210
  %215 = load float, float* %6, align 4
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 0
  store float %215, float* %217, align 4
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 0
  %220 = load float, float* %219, align 4
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 3
  %223 = load float, float* %222, align 4
  %224 = fsub float %223, %220
  store float %224, float* %222, align 4
  br label %225

225:                                              ; preds = %214, %210, %203
  br label %226

226:                                              ; preds = %225, %158
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

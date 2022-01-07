; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_subtitle.c_ParseMPSub.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_subtitle.c_ParseMPSub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, double, i32 }
%struct.TYPE_7__ = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"FORMAT\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"FORMAT=TIM%c\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"FORMAT=%[^\0D\0A]\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"sub-original-fps\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*, i32*, %struct.TYPE_7__*, i64)* @ParseMPSub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseMPSub(i32* %0, %struct.TYPE_8__* %1, i32* %2, %struct.TYPE_7__* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %10, align 8
  store i64 %4, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  %23 = call i32 @VLC_UNUSED(i64 %22)
  %24 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %24, i8** %12, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %5
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  store double 0.000000e+00, double* %33, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  store i32 0, i32* %36, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  br label %40

40:                                               ; preds = %30, %5
  br label %41

41:                                               ; preds = %156, %40
  %42 = load i32*, i32** %9, align 8
  %43 = call i8* @TextGetLine(i32* %42)
  store i8* %43, i8** %15, align 8
  %44 = load i8*, i8** %15, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load i8*, i8** %12, align 8
  %48 = call i32 @free(i8* %47)
  %49 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %49, i32* %6, align 4
  br label %198

50:                                               ; preds = %41
  %51 = load i8*, i8** %15, align 8
  %52 = call i64 @strstr(i8* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %103

54:                                               ; preds = %50
  %55 = load i8*, i8** %15, align 8
  %56 = call i32 @sscanf(i8* %55, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %13)
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  %59 = load i8, i8* %13, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 69
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  store i32 100, i32* %65, align 8
  br label %157

66:                                               ; preds = %58, %54
  %67 = load i8*, i8** %15, align 8
  %68 = call i64 @strlen(i8* %67)
  %69 = call i8* @malloc(i64 %68)
  store i8* %69, i8** %14, align 8
  %70 = load i8*, i8** %14, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %66
  %73 = load i8*, i8** %12, align 8
  %74 = call i32 @free(i8* %73)
  %75 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %75, i32* %6, align 4
  br label %198

76:                                               ; preds = %66
  %77 = load i8*, i8** %15, align 8
  %78 = load i8*, i8** %14, align 8
  %79 = call i32 @sscanf(i8* %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %100

81:                                               ; preds = %76
  %82 = load i8*, i8** %14, align 8
  %83 = call float @us_strtof(i8* %82, i8** null)
  store float %83, float* %16, align 4
  %84 = load float, float* %16, align 4
  %85 = fcmp ogt float %84, 0.000000e+00
  br i1 %85, label %86, label %94

86:                                               ; preds = %81
  %87 = load i32*, i32** %7, align 8
  %88 = call float @var_GetFloat(i32* %87, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %89 = fcmp ole float %88, 0.000000e+00
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load i32*, i32** %7, align 8
  %92 = load float, float* %16, align 4
  %93 = call i32 @var_SetFloat(i32* %91, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), float %92)
  br label %94

94:                                               ; preds = %90, %86, %81
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  store i32 1, i32* %97, align 8
  %98 = load i8*, i8** %14, align 8
  %99 = call i32 @free(i8* %98)
  br label %157

100:                                              ; preds = %76
  %101 = load i8*, i8** %14, align 8
  %102 = call i32 @free(i8* %101)
  br label %103

103:                                              ; preds = %100, %50
  %104 = load i8*, i8** %15, align 8
  %105 = call float @us_strtof(i8* %104, i8** %14)
  store float %105, float* %17, align 4
  %106 = load i8*, i8** %14, align 8
  %107 = load i8, i8* %106, align 1
  %108 = icmp ne i8 %107, 0
  br i1 %108, label %109, label %156

109:                                              ; preds = %103
  %110 = load i8*, i8** %14, align 8
  %111 = call float @us_strtof(i8* %110, i8** null)
  store float %111, float* %18, align 4
  %112 = load float, float* %17, align 4
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = sitofp i32 %116 to float
  %118 = fmul float %112, %117
  %119 = fpext float %118 to double
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load double, double* %122, align 8
  %124 = fadd double %123, %119
  store double %124, double* %122, align 8
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load double, double* %127, align 8
  %129 = fmul double 1.000000e+04, %128
  %130 = fptrunc double %129 to float
  %131 = call i8* @llroundf(float %130)
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 2
  store i8* %131, i8** %133, align 8
  %134 = load float, float* %18, align 4
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = sitofp i32 %138 to float
  %140 = fmul float %134, %139
  %141 = fpext float %140 to double
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 1
  %145 = load double, double* %144, align 8
  %146 = fadd double %145, %141
  store double %146, double* %144, align 8
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load double, double* %149, align 8
  %151 = fmul double 1.000000e+04, %150
  %152 = fptrunc double %151 to float
  %153 = call i8* @llroundf(float %152)
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 1
  store i8* %153, i8** %155, align 8
  br label %157

156:                                              ; preds = %103
  br label %41

157:                                              ; preds = %109, %94, %62
  br label %158

158:                                              ; preds = %187, %157
  %159 = load i32*, i32** %9, align 8
  %160 = call i8* @TextGetLine(i32* %159)
  store i8* %160, i8** %19, align 8
  %161 = load i8*, i8** %19, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %167, label %163

163:                                              ; preds = %158
  %164 = load i8*, i8** %12, align 8
  %165 = call i32 @free(i8* %164)
  %166 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %166, i32* %6, align 4
  br label %198

167:                                              ; preds = %158
  %168 = load i8*, i8** %19, align 8
  %169 = call i64 @strlen(i8* %168)
  store i64 %169, i64* %20, align 8
  %170 = load i64, i64* %20, align 8
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %167
  br label %193

173:                                              ; preds = %167
  %174 = load i8*, i8** %12, align 8
  %175 = call i64 @strlen(i8* %174)
  store i64 %175, i64* %21, align 8
  %176 = load i8*, i8** %12, align 8
  %177 = load i64, i64* %21, align 8
  %178 = load i64, i64* %20, align 8
  %179 = add i64 %177, %178
  %180 = add i64 %179, 1
  %181 = add i64 %180, 1
  %182 = call i8* @realloc_or_free(i8* %176, i64 %181)
  store i8* %182, i8** %12, align 8
  %183 = load i8*, i8** %12, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %187, label %185

185:                                              ; preds = %173
  %186 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %186, i32* %6, align 4
  br label %198

187:                                              ; preds = %173
  %188 = load i8*, i8** %12, align 8
  %189 = load i8*, i8** %19, align 8
  %190 = call i32 @strcat(i8* %188, i8* %189)
  %191 = load i8*, i8** %12, align 8
  %192 = call i32 @strcat(i8* %191, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %158

193:                                              ; preds = %172
  %194 = load i8*, i8** %12, align 8
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 0
  store i8* %194, i8** %196, align 8
  %197 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %197, i32* %6, align 4
  br label %198

198:                                              ; preds = %193, %185, %163, %72, %46
  %199 = load i32, i32* %6, align 4
  ret i32 %199
}

declare dso_local i32 @VLC_UNUSED(i64) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @TextGetLine(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local float @us_strtof(i8*, i8**) #1

declare dso_local float @var_GetFloat(i32*, i8*) #1

declare dso_local i32 @var_SetFloat(i32*, i8*, float) #1

declare dso_local i8* @llroundf(float) #1

declare dso_local i8* @realloc_or_free(i8*, i64) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

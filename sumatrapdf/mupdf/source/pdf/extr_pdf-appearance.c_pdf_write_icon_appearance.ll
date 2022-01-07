; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_pdf_write_icon_appearance.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_pdf_write_icon_appearance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"1 g\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"1 w\0A0.5 0.5 15 15 re\0Ab\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"1 0 0 -1 4 12 cm\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"0 g\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Comment\00", align 1
@icon_comment = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"Key\00", align 1
@icon_key = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"Note\00", align 1
@icon_note = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"Help\00", align 1
@icon_help = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [13 x i8] c"NewParagraph\00", align 1
@icon_new_paragraph = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [10 x i8] c"Paragraph\00", align 1
@icon_paragraph = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [7 x i8] c"Insert\00", align 1
@icon_insert = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"Graph\00", align 1
@icon_graph = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [8 x i8] c"PushPin\00", align 1
@icon_push_pin = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [10 x i8] c"Paperclip\00", align 1
@icon_paperclip = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [4 x i8] c"Tag\00", align 1
@icon_tag = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [8 x i8] c"Speaker\00", align 1
@icon_speaker = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [4 x i8] c"Mic\00", align 1
@icon_mic = common dso_local global i8* null, align 8
@icon_star = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, %struct.TYPE_5__*, %struct.TYPE_5__*)* @pdf_write_icon_appearance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_write_icon_appearance(i32* %0, i32* %1, i32* %2, %struct.TYPE_5__* %3, %struct.TYPE_5__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca %struct.TYPE_5__, align 4
  %15 = alloca %struct.TYPE_5__, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %10, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %18, %21
  %23 = sdiv i32 %22, 2
  %24 = sitofp i32 %23 to float
  store float %24, float* %12, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %27, %30
  %32 = sdiv i32 %31, 2
  %33 = sitofp i32 %32 to float
  store float %33, float* %13, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @pdf_write_fill_color_appearance(i32* %34, i32* %35, i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %5
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @fz_append_string(i32* %40, i32* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %39, %5
  %44 = load i32*, i32** %6, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @fz_append_string(i32* %44, i32* %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32*, i32** %6, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @fz_append_string(i32* %47, i32* %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32*, i32** %6, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = call i64 @pdf_is_dark_fill_color(i32* %50, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %43
  %55 = load i32*, i32** %6, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @fz_append_string(i32* %55, i32* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %62

58:                                               ; preds = %43
  %59 = load i32*, i32** %6, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @fz_append_string(i32* %59, i32* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %62

62:                                               ; preds = %58, %54
  %63 = load i32*, i32** %6, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = call i8* @pdf_annot_icon_name(i32* %63, i32* %64)
  store i8* %65, i8** %11, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %62
  %70 = load i32*, i32** %6, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = load i8*, i8** @icon_comment, align 8
  %73 = call i32 @fz_append_string(i32* %70, i32* %71, i8* %72)
  br label %199

74:                                               ; preds = %62
  %75 = load i8*, i8** %11, align 8
  %76 = call i32 @strcmp(i8* %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %74
  %79 = load i32*, i32** %6, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = load i8*, i8** @icon_key, align 8
  %82 = call i32 @fz_append_string(i32* %79, i32* %80, i8* %81)
  br label %198

83:                                               ; preds = %74
  %84 = load i8*, i8** %11, align 8
  %85 = call i32 @strcmp(i8* %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %83
  %88 = load i32*, i32** %6, align 8
  %89 = load i32*, i32** %8, align 8
  %90 = load i8*, i8** @icon_note, align 8
  %91 = call i32 @fz_append_string(i32* %88, i32* %89, i8* %90)
  br label %197

92:                                               ; preds = %83
  %93 = load i8*, i8** %11, align 8
  %94 = call i32 @strcmp(i8* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %92
  %97 = load i32*, i32** %6, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = load i8*, i8** @icon_help, align 8
  %100 = call i32 @fz_append_string(i32* %97, i32* %98, i8* %99)
  br label %196

101:                                              ; preds = %92
  %102 = load i8*, i8** %11, align 8
  %103 = call i32 @strcmp(i8* %102, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %101
  %106 = load i32*, i32** %6, align 8
  %107 = load i32*, i32** %8, align 8
  %108 = load i8*, i8** @icon_new_paragraph, align 8
  %109 = call i32 @fz_append_string(i32* %106, i32* %107, i8* %108)
  br label %195

110:                                              ; preds = %101
  %111 = load i8*, i8** %11, align 8
  %112 = call i32 @strcmp(i8* %111, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %110
  %115 = load i32*, i32** %6, align 8
  %116 = load i32*, i32** %8, align 8
  %117 = load i8*, i8** @icon_paragraph, align 8
  %118 = call i32 @fz_append_string(i32* %115, i32* %116, i8* %117)
  br label %194

119:                                              ; preds = %110
  %120 = load i8*, i8** %11, align 8
  %121 = call i32 @strcmp(i8* %120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %119
  %124 = load i32*, i32** %6, align 8
  %125 = load i32*, i32** %8, align 8
  %126 = load i8*, i8** @icon_insert, align 8
  %127 = call i32 @fz_append_string(i32* %124, i32* %125, i8* %126)
  br label %193

128:                                              ; preds = %119
  %129 = load i8*, i8** %11, align 8
  %130 = call i32 @strcmp(i8* %129, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %128
  %133 = load i32*, i32** %6, align 8
  %134 = load i32*, i32** %8, align 8
  %135 = load i8*, i8** @icon_graph, align 8
  %136 = call i32 @fz_append_string(i32* %133, i32* %134, i8* %135)
  br label %192

137:                                              ; preds = %128
  %138 = load i8*, i8** %11, align 8
  %139 = call i32 @strcmp(i8* %138, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %137
  %142 = load i32*, i32** %6, align 8
  %143 = load i32*, i32** %8, align 8
  %144 = load i8*, i8** @icon_push_pin, align 8
  %145 = call i32 @fz_append_string(i32* %142, i32* %143, i8* %144)
  br label %191

146:                                              ; preds = %137
  %147 = load i8*, i8** %11, align 8
  %148 = call i32 @strcmp(i8* %147, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %155, label %150

150:                                              ; preds = %146
  %151 = load i32*, i32** %6, align 8
  %152 = load i32*, i32** %8, align 8
  %153 = load i8*, i8** @icon_paperclip, align 8
  %154 = call i32 @fz_append_string(i32* %151, i32* %152, i8* %153)
  br label %190

155:                                              ; preds = %146
  %156 = load i8*, i8** %11, align 8
  %157 = call i32 @strcmp(i8* %156, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %164, label %159

159:                                              ; preds = %155
  %160 = load i32*, i32** %6, align 8
  %161 = load i32*, i32** %8, align 8
  %162 = load i8*, i8** @icon_tag, align 8
  %163 = call i32 @fz_append_string(i32* %160, i32* %161, i8* %162)
  br label %189

164:                                              ; preds = %155
  %165 = load i8*, i8** %11, align 8
  %166 = call i32 @strcmp(i8* %165, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %173, label %168

168:                                              ; preds = %164
  %169 = load i32*, i32** %6, align 8
  %170 = load i32*, i32** %8, align 8
  %171 = load i8*, i8** @icon_speaker, align 8
  %172 = call i32 @fz_append_string(i32* %169, i32* %170, i8* %171)
  br label %188

173:                                              ; preds = %164
  %174 = load i8*, i8** %11, align 8
  %175 = call i32 @strcmp(i8* %174, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %182, label %177

177:                                              ; preds = %173
  %178 = load i32*, i32** %6, align 8
  %179 = load i32*, i32** %8, align 8
  %180 = load i8*, i8** @icon_mic, align 8
  %181 = call i32 @fz_append_string(i32* %178, i32* %179, i8* %180)
  br label %187

182:                                              ; preds = %173
  %183 = load i32*, i32** %6, align 8
  %184 = load i32*, i32** %8, align 8
  %185 = load i8*, i8** @icon_star, align 8
  %186 = call i32 @fz_append_string(i32* %183, i32* %184, i8* %185)
  br label %187

187:                                              ; preds = %182, %177
  br label %188

188:                                              ; preds = %187, %168
  br label %189

189:                                              ; preds = %188, %159
  br label %190

190:                                              ; preds = %189, %150
  br label %191

191:                                              ; preds = %190, %141
  br label %192

192:                                              ; preds = %191, %132
  br label %193

193:                                              ; preds = %192, %123
  br label %194

194:                                              ; preds = %193, %114
  br label %195

195:                                              ; preds = %194, %105
  br label %196

196:                                              ; preds = %195, %96
  br label %197

197:                                              ; preds = %196, %87
  br label %198

198:                                              ; preds = %197, %78
  br label %199

199:                                              ; preds = %198, %69
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %201 = load float, float* %12, align 4
  %202 = fsub float %201, 9.000000e+00
  %203 = load float, float* %13, align 4
  %204 = fsub float %203, 9.000000e+00
  %205 = load float, float* %12, align 4
  %206 = fadd float %205, 9.000000e+00
  %207 = fptosi float %206 to i32
  %208 = load float, float* %13, align 4
  %209 = fadd float %208, 9.000000e+00
  %210 = fptosi float %209 to i32
  %211 = call { i64, i64 } @fz_make_rect(float %202, float %204, i32 %207, i32 %210)
  %212 = bitcast %struct.TYPE_5__* %14 to { i64, i64 }*
  %213 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %212, i32 0, i32 0
  %214 = extractvalue { i64, i64 } %211, 0
  store i64 %214, i64* %213, align 4
  %215 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %212, i32 0, i32 1
  %216 = extractvalue { i64, i64 } %211, 1
  store i64 %216, i64* %215, align 4
  %217 = bitcast %struct.TYPE_5__* %200 to i8*
  %218 = bitcast %struct.TYPE_5__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %217, i8* align 4 %218, i64 16, i1 false)
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %220 = call { i64, i64 } @fz_make_rect(float 0.000000e+00, float 0.000000e+00, i32 16, i32 16)
  %221 = bitcast %struct.TYPE_5__* %15 to { i64, i64 }*
  %222 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %221, i32 0, i32 0
  %223 = extractvalue { i64, i64 } %220, 0
  store i64 %223, i64* %222, align 4
  %224 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %221, i32 0, i32 1
  %225 = extractvalue { i64, i64 } %220, 1
  store i64 %225, i64* %224, align 4
  %226 = bitcast %struct.TYPE_5__* %219 to i8*
  %227 = bitcast %struct.TYPE_5__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %226, i8* align 4 %227, i64 16, i1 false)
  ret void
}

declare dso_local i32 @pdf_write_fill_color_appearance(i32*, i32*, i32*) #1

declare dso_local i32 @fz_append_string(i32*, i32*, i8*) #1

declare dso_local i64 @pdf_is_dark_fill_color(i32*, i32*) #1

declare dso_local i8* @pdf_annot_icon_name(i32*, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local { i64, i64 } @fz_make_rect(float, float, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

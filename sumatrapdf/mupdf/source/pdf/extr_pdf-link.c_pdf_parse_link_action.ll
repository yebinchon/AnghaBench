; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-link.c_pdf_parse_link_action.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-link.c_pdf_parse_link_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S = common dso_local global i32 0, align 4
@GoTo = common dso_local global i32 0, align 4
@D = common dso_local global i32 0, align 4
@URI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Root/URI/Base\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"file://\00", align 1
@Launch = common dso_local global i32 0, align 4
@F = common dso_local global i32 0, align 4
@GoToR = common dso_local global i32 0, align 4
@Named = common dso_local global i32 0, align 4
@N = common dso_local global i32 0, align 4
@FirstPage = common dso_local global i32 0, align 4
@LastPage = common dso_local global i32 0, align 4
@PrevPage = common dso_local global i32 0, align 4
@NextPage = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"#%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pdf_parse_link_action(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %217

20:                                               ; preds = %4
  %21 = load i32*, i32** %6, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* @S, align 4
  %24 = call i32 @PDF_NAME(i32 %23)
  %25 = call i32* @pdf_dict_get(i32* %21, i32* %22, i32 %24)
  store i32* %25, i32** %10, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @GoTo, align 4
  %28 = call i32 @PDF_NAME(i32 %27)
  %29 = load i32*, i32** %10, align 8
  %30 = call i64 @pdf_name_eq(i32* %26, i32 %28, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %20
  %33 = load i32*, i32** %6, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* @D, align 4
  %36 = call i32 @PDF_NAME(i32 %35)
  %37 = call i32* @pdf_dict_get(i32* %33, i32* %34, i32 %36)
  store i32* %37, i32** %11, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = call i8* @pdf_parse_link_dest(i32* %38, i32* %39, i32* %40)
  store i8* %41, i8** %5, align 8
  br label %217

42:                                               ; preds = %20
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* @URI, align 4
  %45 = call i32 @PDF_NAME(i32 %44)
  %46 = load i32*, i32** %10, align 8
  %47 = call i64 @pdf_name_eq(i32* %43, i32 %45, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %93

49:                                               ; preds = %42
  %50 = load i32*, i32** %6, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* @URI, align 4
  %53 = call i32 @PDF_NAME(i32 %52)
  %54 = call i8* @pdf_dict_get_text_string(i32* %50, i32* %51, i32 %53)
  store i8* %54, i8** %13, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = call i32 @fz_is_external_link(i32* %55, i8* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %89, label %59

59:                                               ; preds = %49
  %60 = load i32*, i32** %6, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @pdf_trailer(i32* %61, i32* %62)
  %64 = call i32* @pdf_dict_getp(i32* %60, i32 %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32* %64, i32** %14, align 8
  %65 = load i32*, i32** %14, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load i32*, i32** %6, align 8
  %69 = load i32*, i32** %14, align 8
  %70 = call i8* @pdf_to_text_string(i32* %68, i32* %69)
  br label %72

71:                                               ; preds = %59
  br label %72

72:                                               ; preds = %71, %67
  %73 = phi i8* [ %70, %67 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %71 ]
  store i8* %73, i8** %15, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = load i8*, i8** %15, align 8
  %76 = call i64 @strlen(i8* %75)
  %77 = load i8*, i8** %13, align 8
  %78 = call i64 @strlen(i8* %77)
  %79 = add nsw i64 %76, %78
  %80 = add nsw i64 %79, 1
  %81 = call i8* @fz_malloc(i32* %74, i64 %80)
  store i8* %81, i8** %16, align 8
  %82 = load i8*, i8** %16, align 8
  %83 = load i8*, i8** %15, align 8
  %84 = call i32 @strcpy(i8* %82, i8* %83)
  %85 = load i8*, i8** %16, align 8
  %86 = load i8*, i8** %13, align 8
  %87 = call i32 @strcat(i8* %85, i8* %86)
  %88 = load i8*, i8** %16, align 8
  store i8* %88, i8** %5, align 8
  br label %217

89:                                               ; preds = %49
  %90 = load i32*, i32** %6, align 8
  %91 = load i8*, i8** %13, align 8
  %92 = call i8* @fz_strdup(i32* %90, i8* %91)
  store i8* %92, i8** %5, align 8
  br label %217

93:                                               ; preds = %42
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* @Launch, align 4
  %96 = call i32 @PDF_NAME(i32 %95)
  %97 = load i32*, i32** %10, align 8
  %98 = call i64 @pdf_name_eq(i32* %94, i32 %96, i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %93
  %101 = load i32*, i32** %6, align 8
  %102 = load i32*, i32** %8, align 8
  %103 = load i32, i32* @F, align 4
  %104 = call i32 @PDF_NAME(i32 %103)
  %105 = call i32* @pdf_dict_get(i32* %101, i32* %102, i32 %104)
  store i32* %105, i32** %12, align 8
  %106 = load i32*, i32** %6, align 8
  %107 = load i32*, i32** %7, align 8
  %108 = load i32*, i32** %12, align 8
  %109 = call i8* @pdf_parse_file_spec(i32* %106, i32* %107, i32* %108, i32* null)
  store i8* %109, i8** %5, align 8
  br label %217

110:                                              ; preds = %93
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* @GoToR, align 4
  %113 = call i32 @PDF_NAME(i32 %112)
  %114 = load i32*, i32** %10, align 8
  %115 = call i64 @pdf_name_eq(i32* %111, i32 %113, i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %133

117:                                              ; preds = %110
  %118 = load i32*, i32** %6, align 8
  %119 = load i32*, i32** %8, align 8
  %120 = load i32, i32* @D, align 4
  %121 = call i32 @PDF_NAME(i32 %120)
  %122 = call i32* @pdf_dict_get(i32* %118, i32* %119, i32 %121)
  store i32* %122, i32** %11, align 8
  %123 = load i32*, i32** %6, align 8
  %124 = load i32*, i32** %8, align 8
  %125 = load i32, i32* @F, align 4
  %126 = call i32 @PDF_NAME(i32 %125)
  %127 = call i32* @pdf_dict_get(i32* %123, i32* %124, i32 %126)
  store i32* %127, i32** %12, align 8
  %128 = load i32*, i32** %6, align 8
  %129 = load i32*, i32** %7, align 8
  %130 = load i32*, i32** %12, align 8
  %131 = load i32*, i32** %11, align 8
  %132 = call i8* @pdf_parse_file_spec(i32* %128, i32* %129, i32* %130, i32* %131)
  store i8* %132, i8** %5, align 8
  br label %217

133:                                              ; preds = %110
  %134 = load i32*, i32** %6, align 8
  %135 = load i32, i32* @Named, align 4
  %136 = call i32 @PDF_NAME(i32 %135)
  %137 = load i32*, i32** %10, align 8
  %138 = call i64 @pdf_name_eq(i32* %134, i32 %136, i32* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %212

140:                                              ; preds = %133
  %141 = load i32*, i32** %6, align 8
  %142 = load i32*, i32** %8, align 8
  %143 = load i32, i32* @N, align 4
  %144 = call i32 @PDF_NAME(i32 %143)
  %145 = call i32* @pdf_dict_get(i32* %141, i32* %142, i32 %144)
  store i32* %145, i32** %11, align 8
  %146 = load i32*, i32** %6, align 8
  %147 = load i32, i32* @FirstPage, align 4
  %148 = call i32 @PDF_NAME(i32 %147)
  %149 = load i32*, i32** %11, align 8
  %150 = call i64 @pdf_name_eq(i32* %146, i32 %148, i32* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %140
  store i32 0, i32* %9, align 4
  br label %207

153:                                              ; preds = %140
  %154 = load i32*, i32** %6, align 8
  %155 = load i32, i32* @LastPage, align 4
  %156 = call i32 @PDF_NAME(i32 %155)
  %157 = load i32*, i32** %11, align 8
  %158 = call i64 @pdf_name_eq(i32* %154, i32 %156, i32* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %153
  %161 = load i32*, i32** %6, align 8
  %162 = load i32*, i32** %7, align 8
  %163 = call i32 @pdf_count_pages(i32* %161, i32* %162)
  %164 = sub nsw i32 %163, 1
  store i32 %164, i32* %9, align 4
  br label %206

165:                                              ; preds = %153
  %166 = load i32*, i32** %6, align 8
  %167 = load i32, i32* @PrevPage, align 4
  %168 = call i32 @PDF_NAME(i32 %167)
  %169 = load i32*, i32** %11, align 8
  %170 = call i64 @pdf_name_eq(i32* %166, i32 %168, i32* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %182

172:                                              ; preds = %165
  %173 = load i32, i32* %9, align 4
  %174 = icmp sge i32 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %172
  %176 = load i32, i32* %9, align 4
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load i32, i32* %9, align 4
  %180 = add nsw i32 %179, -1
  store i32 %180, i32* %9, align 4
  br label %181

181:                                              ; preds = %178, %175
  br label %205

182:                                              ; preds = %172, %165
  %183 = load i32*, i32** %6, align 8
  %184 = load i32, i32* @NextPage, align 4
  %185 = call i32 @PDF_NAME(i32 %184)
  %186 = load i32*, i32** %11, align 8
  %187 = call i64 @pdf_name_eq(i32* %183, i32 %185, i32* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %203

189:                                              ; preds = %182
  %190 = load i32, i32* %9, align 4
  %191 = icmp sge i32 %190, 0
  br i1 %191, label %192, label %203

192:                                              ; preds = %189
  %193 = load i32, i32* %9, align 4
  %194 = load i32*, i32** %6, align 8
  %195 = load i32*, i32** %7, align 8
  %196 = call i32 @pdf_count_pages(i32* %194, i32* %195)
  %197 = sub nsw i32 %196, 1
  %198 = icmp slt i32 %193, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %192
  %200 = load i32, i32* %9, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %9, align 4
  br label %202

202:                                              ; preds = %199, %192
  br label %204

203:                                              ; preds = %189, %182
  store i8* null, i8** %5, align 8
  br label %217

204:                                              ; preds = %202
  br label %205

205:                                              ; preds = %204, %181
  br label %206

206:                                              ; preds = %205, %160
  br label %207

207:                                              ; preds = %206, %152
  %208 = load i32*, i32** %6, align 8
  %209 = load i32, i32* %9, align 4
  %210 = add nsw i32 %209, 1
  %211 = call i8* @fz_asprintf(i32* %208, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %210)
  store i8* %211, i8** %5, align 8
  br label %217

212:                                              ; preds = %133
  br label %213

213:                                              ; preds = %212
  br label %214

214:                                              ; preds = %213
  br label %215

215:                                              ; preds = %214
  br label %216

216:                                              ; preds = %215
  store i8* null, i8** %5, align 8
  br label %217

217:                                              ; preds = %216, %207, %203, %117, %100, %89, %72, %32, %19
  %218 = load i8*, i8** %5, align 8
  ret i8* %218
}

declare dso_local i32* @pdf_dict_get(i32*, i32*, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i64 @pdf_name_eq(i32*, i32, i32*) #1

declare dso_local i8* @pdf_parse_link_dest(i32*, i32*, i32*) #1

declare dso_local i8* @pdf_dict_get_text_string(i32*, i32*, i32) #1

declare dso_local i32 @fz_is_external_link(i32*, i8*) #1

declare dso_local i32* @pdf_dict_getp(i32*, i32, i8*) #1

declare dso_local i32 @pdf_trailer(i32*, i32*) #1

declare dso_local i8* @pdf_to_text_string(i32*, i32*) #1

declare dso_local i8* @fz_malloc(i32*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i8* @fz_strdup(i32*, i8*) #1

declare dso_local i8* @pdf_parse_file_spec(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @pdf_count_pages(i32*, i32*) #1

declare dso_local i8* @fz_asprintf(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

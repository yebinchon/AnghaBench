; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_writer.c_fz_new_document_writer.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_writer.c_fz_new_document_writer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"cannot detect document format\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"cbz\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"svg\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"png\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"pam\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"pnm\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"pgm\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"ppm\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"pbm\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"pkm\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"pcl\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"pclm\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"ps\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"pwg\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"txt\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"html\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"xhtml\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"stext\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"unknown output document format: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @fz_new_document_writer(i32* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %4
  %13 = load i8*, i8** %7, align 8
  %14 = call i8* @strrchr(i8* %13, i8 signext 46)
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %20 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %18, i32 %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %17, %12
  %22 = load i8*, i8** %8, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  store i8* %23, i8** %8, align 8
  br label %24

24:                                               ; preds = %21, %4
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @fz_strcasecmp(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = load i32*, i32** %6, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call i32* @fz_new_cbz_writer(i32* %29, i8* %30, i8* %31)
  store i32* %32, i32** %5, align 8
  br label %189

33:                                               ; preds = %24
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @fz_strcasecmp(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = load i32*, i32** %6, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = call i32* @fz_new_svg_writer(i32* %38, i8* %39, i8* %40)
  store i32* %41, i32** %5, align 8
  br label %189

42:                                               ; preds = %33
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @fz_strcasecmp(i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = load i32*, i32** %6, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = call i32* @fz_new_png_pixmap_writer(i32* %47, i8* %48, i8* %49)
  store i32* %50, i32** %5, align 8
  br label %189

51:                                               ; preds = %42
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @fz_strcasecmp(i8* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  %56 = load i32*, i32** %6, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = call i32* @fz_new_pam_pixmap_writer(i32* %56, i8* %57, i8* %58)
  store i32* %59, i32** %5, align 8
  br label %189

60:                                               ; preds = %51
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @fz_strcasecmp(i8* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %60
  %65 = load i32*, i32** %6, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = call i32* @fz_new_pnm_pixmap_writer(i32* %65, i8* %66, i8* %67)
  store i32* %68, i32** %5, align 8
  br label %189

69:                                               ; preds = %60
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 @fz_strcasecmp(i8* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %69
  %74 = load i32*, i32** %6, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = call i32* @fz_new_pgm_pixmap_writer(i32* %74, i8* %75, i8* %76)
  store i32* %77, i32** %5, align 8
  br label %189

78:                                               ; preds = %69
  %79 = load i8*, i8** %8, align 8
  %80 = call i32 @fz_strcasecmp(i8* %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %78
  %83 = load i32*, i32** %6, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = call i32* @fz_new_ppm_pixmap_writer(i32* %83, i8* %84, i8* %85)
  store i32* %86, i32** %5, align 8
  br label %189

87:                                               ; preds = %78
  %88 = load i8*, i8** %8, align 8
  %89 = call i32 @fz_strcasecmp(i8* %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %87
  %92 = load i32*, i32** %6, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = call i32* @fz_new_pbm_pixmap_writer(i32* %92, i8* %93, i8* %94)
  store i32* %95, i32** %5, align 8
  br label %189

96:                                               ; preds = %87
  %97 = load i8*, i8** %8, align 8
  %98 = call i32 @fz_strcasecmp(i8* %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %96
  %101 = load i32*, i32** %6, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = call i32* @fz_new_pkm_pixmap_writer(i32* %101, i8* %102, i8* %103)
  store i32* %104, i32** %5, align 8
  br label %189

105:                                              ; preds = %96
  %106 = load i8*, i8** %8, align 8
  %107 = call i32 @fz_strcasecmp(i8* %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %105
  %110 = load i32*, i32** %6, align 8
  %111 = load i8*, i8** %7, align 8
  %112 = load i8*, i8** %9, align 8
  %113 = call i32* @fz_new_pcl_writer(i32* %110, i8* %111, i8* %112)
  store i32* %113, i32** %5, align 8
  br label %189

114:                                              ; preds = %105
  %115 = load i8*, i8** %8, align 8
  %116 = call i32 @fz_strcasecmp(i8* %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %114
  %119 = load i32*, i32** %6, align 8
  %120 = load i8*, i8** %7, align 8
  %121 = load i8*, i8** %9, align 8
  %122 = call i32* @fz_new_pclm_writer(i32* %119, i8* %120, i8* %121)
  store i32* %122, i32** %5, align 8
  br label %189

123:                                              ; preds = %114
  %124 = load i8*, i8** %8, align 8
  %125 = call i32 @fz_strcasecmp(i8* %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %123
  %128 = load i32*, i32** %6, align 8
  %129 = load i8*, i8** %7, align 8
  %130 = load i8*, i8** %9, align 8
  %131 = call i32* @fz_new_ps_writer(i32* %128, i8* %129, i8* %130)
  store i32* %131, i32** %5, align 8
  br label %189

132:                                              ; preds = %123
  %133 = load i8*, i8** %8, align 8
  %134 = call i32 @fz_strcasecmp(i8* %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %132
  %137 = load i32*, i32** %6, align 8
  %138 = load i8*, i8** %7, align 8
  %139 = load i8*, i8** %9, align 8
  %140 = call i32* @fz_new_pwg_writer(i32* %137, i8* %138, i8* %139)
  store i32* %140, i32** %5, align 8
  br label %189

141:                                              ; preds = %132
  %142 = load i8*, i8** %8, align 8
  %143 = call i32 @fz_strcasecmp(i8* %142, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = load i8*, i8** %8, align 8
  %147 = call i32 @fz_strcasecmp(i8* %146, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %145, %141
  %150 = load i32*, i32** %6, align 8
  %151 = load i8*, i8** %7, align 8
  %152 = load i8*, i8** %9, align 8
  %153 = call i32* @fz_new_text_writer(i32* %150, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* %151, i8* %152)
  store i32* %153, i32** %5, align 8
  br label %189

154:                                              ; preds = %145
  %155 = load i8*, i8** %8, align 8
  %156 = call i32 @fz_strcasecmp(i8* %155, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %164, label %158

158:                                              ; preds = %154
  %159 = load i32*, i32** %6, align 8
  %160 = load i8*, i8** %8, align 8
  %161 = load i8*, i8** %7, align 8
  %162 = load i8*, i8** %9, align 8
  %163 = call i32* @fz_new_text_writer(i32* %159, i8* %160, i8* %161, i8* %162)
  store i32* %163, i32** %5, align 8
  br label %189

164:                                              ; preds = %154
  %165 = load i8*, i8** %8, align 8
  %166 = call i32 @fz_strcasecmp(i8* %165, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %174, label %168

168:                                              ; preds = %164
  %169 = load i32*, i32** %6, align 8
  %170 = load i8*, i8** %8, align 8
  %171 = load i8*, i8** %7, align 8
  %172 = load i8*, i8** %9, align 8
  %173 = call i32* @fz_new_text_writer(i32* %169, i8* %170, i8* %171, i8* %172)
  store i32* %173, i32** %5, align 8
  br label %189

174:                                              ; preds = %164
  %175 = load i8*, i8** %8, align 8
  %176 = call i32 @fz_strcasecmp(i8* %175, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %184, label %178

178:                                              ; preds = %174
  %179 = load i32*, i32** %6, align 8
  %180 = load i8*, i8** %8, align 8
  %181 = load i8*, i8** %7, align 8
  %182 = load i8*, i8** %9, align 8
  %183 = call i32* @fz_new_text_writer(i32* %179, i8* %180, i8* %181, i8* %182)
  store i32* %183, i32** %5, align 8
  br label %189

184:                                              ; preds = %174
  %185 = load i32*, i32** %6, align 8
  %186 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %187 = load i8*, i8** %8, align 8
  %188 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %185, i32 %186, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0), i8* %187)
  br label %189

189:                                              ; preds = %184, %178, %168, %158, %149, %136, %127, %118, %109, %100, %91, %82, %73, %64, %55, %46, %37, %28
  %190 = load i32*, i32** %5, align 8
  ret i32* %190
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*, ...) #1

declare dso_local i32 @fz_strcasecmp(i8*, i8*) #1

declare dso_local i32* @fz_new_cbz_writer(i32*, i8*, i8*) #1

declare dso_local i32* @fz_new_svg_writer(i32*, i8*, i8*) #1

declare dso_local i32* @fz_new_png_pixmap_writer(i32*, i8*, i8*) #1

declare dso_local i32* @fz_new_pam_pixmap_writer(i32*, i8*, i8*) #1

declare dso_local i32* @fz_new_pnm_pixmap_writer(i32*, i8*, i8*) #1

declare dso_local i32* @fz_new_pgm_pixmap_writer(i32*, i8*, i8*) #1

declare dso_local i32* @fz_new_ppm_pixmap_writer(i32*, i8*, i8*) #1

declare dso_local i32* @fz_new_pbm_pixmap_writer(i32*, i8*, i8*) #1

declare dso_local i32* @fz_new_pkm_pixmap_writer(i32*, i8*, i8*) #1

declare dso_local i32* @fz_new_pcl_writer(i32*, i8*, i8*) #1

declare dso_local i32* @fz_new_pclm_writer(i32*, i8*, i8*) #1

declare dso_local i32* @fz_new_ps_writer(i32*, i8*, i8*) #1

declare dso_local i32* @fz_new_pwg_writer(i32*, i8*, i8*) #1

declare dso_local i32* @fz_new_text_writer(i32*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

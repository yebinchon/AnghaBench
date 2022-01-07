; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfcreate.c_create_page.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfcreate.c_create_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8*, i8*, i8*, i8*, i32, i32 }

@ctx = common dso_local global i32 0, align 4
@doc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%%MediaBox\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%%Rotate\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%%Font\00", align 1
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Font directive missing arguments\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"%%CJKFont\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"CJKFont directive missing arguments\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%%Image\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Image directive missing arguments\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @create_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_page(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4096 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %21 = bitcast %struct.TYPE_3__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 48, i1 false)
  %22 = bitcast i8* %21 to %struct.TYPE_3__*
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  store i8* inttoptr (i64 595 to i8*), i8** %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  store i8* inttoptr (i64 842 to i8*), i8** %24, align 8
  store i32 0, i32* %4, align 4
  %25 = load i32, i32* @ctx, align 4
  %26 = load i32, i32* @doc, align 4
  %27 = call i32* @pdf_new_dict(i32 %25, i32 %26, i32 2)
  store i32* %27, i32** %10, align 8
  %28 = load i32, i32* @ctx, align 4
  %29 = call i32* @fz_new_buffer(i32 %28, i32 1024)
  store i32* %29, i32** %9, align 8
  %30 = load i32, i32* @ctx, align 4
  %31 = load i8*, i8** %2, align 8
  %32 = call i32* @fz_open_file(i32 %30, i8* %31)
  store i32* %32, i32** %8, align 8
  br label %33

33:                                               ; preds = %158, %1
  %34 = load i32, i32* @ctx, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %37 = call i64 @fz_read_line(i32 %34, i32* %35, i8* %36, i32 4096)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %159

39:                                               ; preds = %33
  %40 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %41 = load i8, i8* %40, align 16
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 37
  br i1 %43, label %44, label %150

44:                                               ; preds = %39
  %45 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 37
  br i1 %48, label %49, label %150

49:                                               ; preds = %44
  %50 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  store i8* %50, i8** %7, align 8
  %51 = call i8* @fz_strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %51, i8** %6, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %49
  %56 = call i8* @fz_strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %57 = call i8* @fz_atoi(i8* %56)
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 5
  store i8* %57, i8** %58, align 8
  %59 = call i8* @fz_strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %60 = call i8* @fz_atoi(i8* %59)
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 4
  store i8* %60, i8** %61, align 8
  %62 = call i8* @fz_strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %63 = call i8* @fz_atoi(i8* %62)
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  store i8* %63, i8** %64, align 8
  %65 = call i8* @fz_strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %66 = call i8* @fz_atoi(i8* %65)
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  store i8* %66, i8** %67, align 8
  br label %149

68:                                               ; preds = %49
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @strcmp(i8* %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = call i8* @fz_strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %74 = call i8* @fz_atoi(i8* %73)
  %75 = ptrtoint i8* %74 to i32
  store i32 %75, i32* %4, align 4
  br label %148

76:                                               ; preds = %68
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %99, label %80

80:                                               ; preds = %76
  %81 = call i8* @fz_strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %81, i8** %12, align 8
  %82 = call i8* @fz_strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %82, i8** %13, align 8
  %83 = call i8* @fz_strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %83, i8** %14, align 8
  %84 = load i8*, i8** %12, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i8*, i8** %13, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %86, %80
  %90 = load i32, i32* @ctx, align 4
  %91 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %92 = call i32 @fz_throw(i32 %90, i32 %91, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %93

93:                                               ; preds = %89, %86
  %94 = load i32*, i32** %10, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = load i8*, i8** %13, align 8
  %97 = load i8*, i8** %14, align 8
  %98 = call i32 @add_font_res(i32* %94, i8* %95, i8* %96, i8* %97)
  br label %147

99:                                               ; preds = %76
  %100 = load i8*, i8** %6, align 8
  %101 = call i32 @strcmp(i8* %100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %124, label %103

103:                                              ; preds = %99
  %104 = call i8* @fz_strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %104, i8** %15, align 8
  %105 = call i8* @fz_strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %105, i8** %16, align 8
  %106 = call i8* @fz_strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %106, i8** %17, align 8
  %107 = call i8* @fz_strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %107, i8** %18, align 8
  %108 = load i8*, i8** %15, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %103
  %111 = load i8*, i8** %16, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %117, label %113

113:                                              ; preds = %110, %103
  %114 = load i32, i32* @ctx, align 4
  %115 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %116 = call i32 @fz_throw(i32 %114, i32 %115, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  br label %117

117:                                              ; preds = %113, %110
  %118 = load i32*, i32** %10, align 8
  %119 = load i8*, i8** %15, align 8
  %120 = load i8*, i8** %16, align 8
  %121 = load i8*, i8** %17, align 8
  %122 = load i8*, i8** %18, align 8
  %123 = call i32 @add_cjkfont_res(i32* %118, i8* %119, i8* %120, i8* %121, i8* %122)
  br label %146

124:                                              ; preds = %99
  %125 = load i8*, i8** %6, align 8
  %126 = call i32 @strcmp(i8* %125, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %145, label %128

128:                                              ; preds = %124
  %129 = call i8* @fz_strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %129, i8** %19, align 8
  %130 = call i8* @fz_strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %130, i8** %20, align 8
  %131 = load i8*, i8** %19, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load i8*, i8** %20, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %140, label %136

136:                                              ; preds = %133, %128
  %137 = load i32, i32* @ctx, align 4
  %138 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %139 = call i32 @fz_throw(i32 %137, i32 %138, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  br label %140

140:                                              ; preds = %136, %133
  %141 = load i32*, i32** %10, align 8
  %142 = load i8*, i8** %19, align 8
  %143 = load i8*, i8** %20, align 8
  %144 = call i32 @add_image_res(i32* %141, i8* %142, i8* %143)
  br label %145

145:                                              ; preds = %140, %124
  br label %146

146:                                              ; preds = %145, %117
  br label %147

147:                                              ; preds = %146, %93
  br label %148

148:                                              ; preds = %147, %72
  br label %149

149:                                              ; preds = %148, %55
  br label %158

150:                                              ; preds = %44, %39
  %151 = load i32, i32* @ctx, align 4
  %152 = load i32*, i32** %9, align 8
  %153 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %154 = call i32 @fz_append_string(i32 %151, i32* %152, i8* %153)
  %155 = load i32, i32* @ctx, align 4
  %156 = load i32*, i32** %9, align 8
  %157 = call i32 @fz_append_byte(i32 %155, i32* %156, i8 signext 10)
  br label %158

158:                                              ; preds = %150, %149
  br label %33

159:                                              ; preds = %33
  %160 = load i32, i32* @ctx, align 4
  %161 = load i32*, i32** %8, align 8
  %162 = call i32 @fz_drop_stream(i32 %160, i32* %161)
  %163 = load i32, i32* @ctx, align 4
  %164 = load i32, i32* @doc, align 4
  %165 = load i32, i32* %4, align 4
  %166 = load i32*, i32** %10, align 8
  %167 = load i32*, i32** %9, align 8
  %168 = call i32* @pdf_add_page(i32 %163, i32 %164, %struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %3, i32 %165, i32* %166, i32* %167)
  store i32* %168, i32** %11, align 8
  %169 = load i32, i32* @ctx, align 4
  %170 = load i32, i32* @doc, align 4
  %171 = load i32*, i32** %11, align 8
  %172 = call i32 @pdf_insert_page(i32 %169, i32 %170, i32 -1, i32* %171)
  %173 = load i32, i32* @ctx, align 4
  %174 = load i32*, i32** %11, align 8
  %175 = call i32 @pdf_drop_obj(i32 %173, i32* %174)
  %176 = load i32, i32* @ctx, align 4
  %177 = load i32*, i32** %9, align 8
  %178 = call i32 @fz_drop_buffer(i32 %176, i32* %177)
  %179 = load i32, i32* @ctx, align 4
  %180 = load i32*, i32** %10, align 8
  %181 = call i32 @pdf_drop_obj(i32 %179, i32* %180)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @pdf_new_dict(i32, i32, i32) #2

declare dso_local i32* @fz_new_buffer(i32, i32) #2

declare dso_local i32* @fz_open_file(i32, i8*) #2

declare dso_local i64 @fz_read_line(i32, i32*, i8*, i32) #2

declare dso_local i8* @fz_strsep(i8**, i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i8* @fz_atoi(i8*) #2

declare dso_local i32 @fz_throw(i32, i32, i8*) #2

declare dso_local i32 @add_font_res(i32*, i8*, i8*, i8*) #2

declare dso_local i32 @add_cjkfont_res(i32*, i8*, i8*, i8*, i8*) #2

declare dso_local i32 @add_image_res(i32*, i8*, i8*) #2

declare dso_local i32 @fz_append_string(i32, i32*, i8*) #2

declare dso_local i32 @fz_append_byte(i32, i32*, i8 signext) #2

declare dso_local i32 @fz_drop_stream(i32, i32*) #2

declare dso_local i32* @pdf_add_page(i32, i32, %struct.TYPE_3__* byval(%struct.TYPE_3__) align 8, i32, i32*, i32*) #2

declare dso_local i32 @pdf_insert_page(i32, i32, i32, i32*) #2

declare dso_local i32 @pdf_drop_obj(i32, i32*) #2

declare dso_local i32 @fz_drop_buffer(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

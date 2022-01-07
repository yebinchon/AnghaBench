; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-object.c_fmt_obj.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-object.c_fmt_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmt = type { i64, i64 }

@PDF_NULL = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"null\00", align 1
@PDF_TRUE = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@PDF_FALSE = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%d %d R\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"<unknown object>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.fmt*, i32*)* @fmt_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fmt_obj(i32* %0, %struct.fmt* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.fmt*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [256 x i8], align 16
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.fmt* %1, %struct.fmt** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = load i32*, i32** @PDF_NULL, align 8
  %11 = icmp eq i32* %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32*, i32** %4, align 8
  %14 = load %struct.fmt*, %struct.fmt** %5, align 8
  %15 = call i32 @fmt_puts(i32* %13, %struct.fmt* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %187

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  %18 = load i32*, i32** @PDF_TRUE, align 8
  %19 = icmp eq i32* %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.fmt*, %struct.fmt** %5, align 8
  %23 = call i32 @fmt_puts(i32* %21, %struct.fmt* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %186

24:                                               ; preds = %16
  %25 = load i32*, i32** %6, align 8
  %26 = load i32*, i32** @PDF_FALSE, align 8
  %27 = icmp eq i32* %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32*, i32** %4, align 8
  %30 = load %struct.fmt*, %struct.fmt** %5, align 8
  %31 = call i32 @fmt_puts(i32* %29, %struct.fmt* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %185

32:                                               ; preds = %24
  %33 = load i32*, i32** %4, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i64 @pdf_is_indirect(i32* %33, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %32
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %39 = load i32*, i32** %4, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @pdf_to_num(i32* %39, i32* %40)
  %42 = load i32*, i32** %4, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @pdf_to_gen(i32* %42, i32* %43)
  %45 = call i32 (i8*, i32, i8*, i32, ...) @fz_snprintf(i8* %38, i32 256, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %41, i32 %44)
  %46 = load i32*, i32** %4, align 8
  %47 = load %struct.fmt*, %struct.fmt** %5, align 8
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %49 = call i32 @fmt_puts(i32* %46, %struct.fmt* %47, i8* %48)
  br label %184

50:                                               ; preds = %32
  %51 = load i32*, i32** %4, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = call i64 @pdf_is_int(i32* %51, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %57 = load i32*, i32** %4, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @pdf_to_int(i32* %57, i32* %58)
  %60 = call i32 (i8*, i32, i8*, i32, ...) @fz_snprintf(i8* %56, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  %61 = load i32*, i32** %4, align 8
  %62 = load %struct.fmt*, %struct.fmt** %5, align 8
  %63 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %64 = call i32 @fmt_puts(i32* %61, %struct.fmt* %62, i8* %63)
  br label %183

65:                                               ; preds = %50
  %66 = load i32*, i32** %4, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = call i64 @pdf_is_real(i32* %66, i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %72 = load i32*, i32** %4, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @pdf_to_real(i32* %72, i32* %73)
  %75 = call i32 (i8*, i32, i8*, i32, ...) @fz_snprintf(i8* %71, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %74)
  %76 = load i32*, i32** %4, align 8
  %77 = load %struct.fmt*, %struct.fmt** %5, align 8
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %79 = call i32 @fmt_puts(i32* %76, %struct.fmt* %77, i8* %78)
  br label %182

80:                                               ; preds = %65
  %81 = load i32*, i32** %4, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = call i64 @pdf_is_string(i32* %81, i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %144

85:                                               ; preds = %80
  %86 = load i32*, i32** %4, align 8
  %87 = load i32*, i32** %6, align 8
  %88 = call i64 @pdf_to_str_buf(i32* %86, i32* %87)
  %89 = inttoptr i64 %88 to i8*
  store i8* %89, i8** %8, align 8
  %90 = load %struct.fmt*, %struct.fmt** %5, align 8
  %91 = getelementptr inbounds %struct.fmt, %struct.fmt* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %133, label %94

94:                                               ; preds = %85
  %95 = load %struct.fmt*, %struct.fmt** %5, align 8
  %96 = getelementptr inbounds %struct.fmt, %struct.fmt* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load i32*, i32** %4, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = call i64 @is_binary_string(i32* %100, i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %133, label %104

104:                                              ; preds = %99, %94
  %105 = load i8*, i8** %8, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 0
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = icmp eq i32 %108, 255
  br i1 %109, label %110, label %116

110:                                              ; preds = %104
  %111 = load i8*, i8** %8, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = icmp eq i32 %114, 254
  br i1 %115, label %133, label %116

116:                                              ; preds = %110, %104
  %117 = load i8*, i8** %8, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 0
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = icmp eq i32 %120, 254
  br i1 %121, label %122, label %128

122:                                              ; preds = %116
  %123 = load i8*, i8** %8, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 1
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = icmp eq i32 %126, 255
  br i1 %127, label %133, label %128

128:                                              ; preds = %122, %116
  %129 = load i32*, i32** %4, align 8
  %130 = load i32*, i32** %6, align 8
  %131 = call i64 @is_longer_than_hex(i32* %129, i32* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %128, %122, %110, %99, %85
  %134 = load i32*, i32** %4, align 8
  %135 = load %struct.fmt*, %struct.fmt** %5, align 8
  %136 = load i32*, i32** %6, align 8
  %137 = call i32 @fmt_hex(i32* %134, %struct.fmt* %135, i32* %136)
  br label %143

138:                                              ; preds = %128
  %139 = load i32*, i32** %4, align 8
  %140 = load %struct.fmt*, %struct.fmt** %5, align 8
  %141 = load i32*, i32** %6, align 8
  %142 = call i32 @fmt_str(i32* %139, %struct.fmt* %140, i32* %141)
  br label %143

143:                                              ; preds = %138, %133
  br label %181

144:                                              ; preds = %80
  %145 = load i32*, i32** %4, align 8
  %146 = load i32*, i32** %6, align 8
  %147 = call i64 @pdf_is_name(i32* %145, i32* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %144
  %150 = load i32*, i32** %4, align 8
  %151 = load %struct.fmt*, %struct.fmt** %5, align 8
  %152 = load i32*, i32** %6, align 8
  %153 = call i32 @fmt_name(i32* %150, %struct.fmt* %151, i32* %152)
  br label %180

154:                                              ; preds = %144
  %155 = load i32*, i32** %4, align 8
  %156 = load i32*, i32** %6, align 8
  %157 = call i64 @pdf_is_array(i32* %155, i32* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %154
  %160 = load i32*, i32** %4, align 8
  %161 = load %struct.fmt*, %struct.fmt** %5, align 8
  %162 = load i32*, i32** %6, align 8
  %163 = call i32 @fmt_array(i32* %160, %struct.fmt* %161, i32* %162)
  br label %179

164:                                              ; preds = %154
  %165 = load i32*, i32** %4, align 8
  %166 = load i32*, i32** %6, align 8
  %167 = call i64 @pdf_is_dict(i32* %165, i32* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %164
  %170 = load i32*, i32** %4, align 8
  %171 = load %struct.fmt*, %struct.fmt** %5, align 8
  %172 = load i32*, i32** %6, align 8
  %173 = call i32 @fmt_dict(i32* %170, %struct.fmt* %171, i32* %172)
  br label %178

174:                                              ; preds = %164
  %175 = load i32*, i32** %4, align 8
  %176 = load %struct.fmt*, %struct.fmt** %5, align 8
  %177 = call i32 @fmt_puts(i32* %175, %struct.fmt* %176, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %178

178:                                              ; preds = %174, %169
  br label %179

179:                                              ; preds = %178, %159
  br label %180

180:                                              ; preds = %179, %149
  br label %181

181:                                              ; preds = %180, %143
  br label %182

182:                                              ; preds = %181, %70
  br label %183

183:                                              ; preds = %182, %55
  br label %184

184:                                              ; preds = %183, %37
  br label %185

185:                                              ; preds = %184, %28
  br label %186

186:                                              ; preds = %185, %20
  br label %187

187:                                              ; preds = %186, %12
  ret void
}

declare dso_local i32 @fmt_puts(i32*, %struct.fmt*, i8*) #1

declare dso_local i64 @pdf_is_indirect(i32*, i32*) #1

declare dso_local i32 @fz_snprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @pdf_to_num(i32*, i32*) #1

declare dso_local i32 @pdf_to_gen(i32*, i32*) #1

declare dso_local i64 @pdf_is_int(i32*, i32*) #1

declare dso_local i32 @pdf_to_int(i32*, i32*) #1

declare dso_local i64 @pdf_is_real(i32*, i32*) #1

declare dso_local i32 @pdf_to_real(i32*, i32*) #1

declare dso_local i64 @pdf_is_string(i32*, i32*) #1

declare dso_local i64 @pdf_to_str_buf(i32*, i32*) #1

declare dso_local i64 @is_binary_string(i32*, i32*) #1

declare dso_local i64 @is_longer_than_hex(i32*, i32*) #1

declare dso_local i32 @fmt_hex(i32*, %struct.fmt*, i32*) #1

declare dso_local i32 @fmt_str(i32*, %struct.fmt*, i32*) #1

declare dso_local i64 @pdf_is_name(i32*, i32*) #1

declare dso_local i32 @fmt_name(i32*, %struct.fmt*, i32*) #1

declare dso_local i64 @pdf_is_array(i32*, i32*) #1

declare dso_local i32 @fmt_array(i32*, %struct.fmt*, i32*) #1

declare dso_local i64 @pdf_is_dict(i32*, i32*) #1

declare dso_local i32 @fmt_dict(i32*, %struct.fmt*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

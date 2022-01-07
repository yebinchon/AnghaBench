; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_xml.c_convert_to_utf8.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_xml.c_convert_to_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FZ_UTFMAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, i64, i32*)* @convert_to_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @convert_to_utf8(i32* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i16*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  store i8* %17, i8** %11, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %21, 254
  br i1 %22, label %23, label %65

23:                                               ; preds = %4
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %27, 255
  br i1 %28, label %29, label %65

29:                                               ; preds = %23
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 2
  store i8* %31, i8** %7, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @FZ_UTFMAX, align 8
  %35 = mul i64 %33, %34
  %36 = call i8* @fz_malloc(i32* %32, i64 %35)
  store i8* %36, i8** %13, align 8
  store i8* %36, i8** %12, align 8
  br label %37

37:                                               ; preds = %42, %29
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8*, i8** %11, align 8
  %41 = icmp ult i8* %39, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %37
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = shl i32 %46, 8
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = or i32 %47, %51
  store i32 %52, i32* %14, align 4
  %53 = load i8*, i8** %13, align 8
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @fz_runetochar(i8* %53, i32 %54)
  %56 = load i8*, i8** %13, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8* %58, i8** %13, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 2
  store i8* %60, i8** %7, align 8
  br label %37

61:                                               ; preds = %37
  %62 = load i8*, i8** %13, align 8
  store i8 0, i8* %62, align 1
  %63 = load i32*, i32** %9, align 8
  store i32 1, i32* %63, align 4
  %64 = load i8*, i8** %12, align 8
  store i8* %64, i8** %5, align 8
  br label %171

65:                                               ; preds = %23, %4
  %66 = load i8*, i8** %7, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp eq i32 %69, 255
  br i1 %70, label %71, label %113

71:                                               ; preds = %65
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp eq i32 %75, 254
  br i1 %76, label %77, label %113

77:                                               ; preds = %71
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 2
  store i8* %79, i8** %7, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* @FZ_UTFMAX, align 8
  %83 = mul i64 %81, %82
  %84 = call i8* @fz_malloc(i32* %80, i64 %83)
  store i8* %84, i8** %13, align 8
  store i8* %84, i8** %12, align 8
  br label %85

85:                                               ; preds = %90, %77
  %86 = load i8*, i8** %7, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  %88 = load i8*, i8** %11, align 8
  %89 = icmp ult i8* %87, %88
  br i1 %89, label %90, label %109

90:                                               ; preds = %85
  %91 = load i8*, i8** %7, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = load i8*, i8** %7, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = shl i32 %98, 8
  %100 = or i32 %94, %99
  store i32 %100, i32* %14, align 4
  %101 = load i8*, i8** %13, align 8
  %102 = load i32, i32* %14, align 4
  %103 = call i32 @fz_runetochar(i8* %101, i32 %102)
  %104 = load i8*, i8** %13, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8* %106, i8** %13, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 2
  store i8* %108, i8** %7, align 8
  br label %85

109:                                              ; preds = %85
  %110 = load i8*, i8** %13, align 8
  store i8 0, i8* %110, align 1
  %111 = load i32*, i32** %9, align 8
  store i32 1, i32* %111, align 4
  %112 = load i8*, i8** %12, align 8
  store i8* %112, i8** %5, align 8
  br label %171

113:                                              ; preds = %71, %65
  %114 = load i8*, i8** %7, align 8
  %115 = call i16* @find_xml_encoding(i8* %114)
  store i16* %115, i16** %10, align 8
  %116 = load i16*, i16** %10, align 8
  %117 = icmp ne i16* %116, null
  br i1 %117, label %118, label %147

118:                                              ; preds = %113
  %119 = load i32*, i32** %6, align 8
  %120 = load i64, i64* %8, align 8
  %121 = load i64, i64* @FZ_UTFMAX, align 8
  %122 = mul i64 %120, %121
  %123 = call i8* @fz_malloc(i32* %119, i64 %122)
  store i8* %123, i8** %13, align 8
  store i8* %123, i8** %12, align 8
  br label %124

124:                                              ; preds = %128, %118
  %125 = load i8*, i8** %7, align 8
  %126 = load i8, i8* %125, align 1
  %127 = icmp ne i8 %126, 0
  br i1 %127, label %128, label %143

128:                                              ; preds = %124
  %129 = load i16*, i16** %10, align 8
  %130 = load i8*, i8** %7, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %7, align 8
  %132 = load i8, i8* %130, align 1
  %133 = zext i8 %132 to i64
  %134 = getelementptr inbounds i16, i16* %129, i64 %133
  %135 = load i16, i16* %134, align 2
  %136 = zext i16 %135 to i32
  store i32 %136, i32* %14, align 4
  %137 = load i8*, i8** %13, align 8
  %138 = load i32, i32* %14, align 4
  %139 = call i32 @fz_runetochar(i8* %137, i32 %138)
  %140 = load i8*, i8** %13, align 8
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  store i8* %142, i8** %13, align 8
  br label %124

143:                                              ; preds = %124
  %144 = load i8*, i8** %13, align 8
  store i8 0, i8* %144, align 1
  %145 = load i32*, i32** %9, align 8
  store i32 1, i32* %145, align 4
  %146 = load i8*, i8** %12, align 8
  store i8* %146, i8** %5, align 8
  br label %171

147:                                              ; preds = %113
  %148 = load i32*, i32** %9, align 8
  store i32 0, i32* %148, align 4
  %149 = load i8*, i8** %7, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 0
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = icmp eq i32 %152, 239
  br i1 %153, label %154, label %169

154:                                              ; preds = %147
  %155 = load i8*, i8** %7, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 1
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = icmp eq i32 %158, 187
  br i1 %159, label %160, label %169

160:                                              ; preds = %154
  %161 = load i8*, i8** %7, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 2
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = icmp eq i32 %164, 191
  br i1 %165, label %166, label %169

166:                                              ; preds = %160
  %167 = load i8*, i8** %7, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 3
  store i8* %168, i8** %5, align 8
  br label %171

169:                                              ; preds = %160, %154, %147
  %170 = load i8*, i8** %7, align 8
  store i8* %170, i8** %5, align 8
  br label %171

171:                                              ; preds = %169, %166, %143, %109, %61
  %172 = load i8*, i8** %5, align 8
  ret i8* %172
}

declare dso_local i8* @fz_malloc(i32*, i64) #1

declare dso_local i32 @fz_runetochar(i8*, i32) #1

declare dso_local i16* @find_xml_encoding(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

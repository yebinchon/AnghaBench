; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-bmp.c_bmp_read_color_table.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-bmp.c_bmp_read_color_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.info = type { i32, i32, i64, i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, %struct.info*, i8*, i8*)* @bmp_read_color_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bmp_read_color_table(i32* %0, %struct.info* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.info* %1, %struct.info** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.info*, %struct.info** %7, align 8
  %14 = getelementptr inbounds %struct.info, %struct.info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sgt i32 %15, 8
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i8*, i8** %8, align 8
  store i8* %18, i8** %5, align 8
  br label %200

19:                                               ; preds = %4
  %20 = load %struct.info*, %struct.info** %7, align 8
  %21 = getelementptr inbounds %struct.info, %struct.info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.info*, %struct.info** %7, align 8
  %26 = getelementptr inbounds %struct.info, %struct.info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = shl i32 1, %27
  store i32 %28, i32* %11, align 4
  br label %33

29:                                               ; preds = %19
  %30 = load %struct.info*, %struct.info** %7, align 8
  %31 = getelementptr inbounds %struct.info, %struct.info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %29, %24
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.info*, %struct.info** %7, align 8
  %36 = getelementptr inbounds %struct.info, %struct.info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = shl i32 1, %37
  %39 = call i32 @fz_mini(i32 %34, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load %struct.info*, %struct.info** %7, align 8
  %41 = getelementptr inbounds %struct.info, %struct.info* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %122

44:                                               ; preds = %33
  %45 = load i32, i32* %11, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = ptrtoint i8* %46 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  %51 = sdiv i64 %50, 3
  %52 = trunc i64 %51 to i32
  %53 = call i32 @fz_mini(i32 %45, i32 %52)
  store i32 %53, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %104, %44
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %107

58:                                               ; preds = %54
  %59 = load i8*, i8** %8, align 8
  %60 = load i32, i32* %10, align 4
  %61 = mul nsw i32 %60, 3
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  %64 = getelementptr inbounds i8, i8* %63, i64 2
  %65 = call i8* @read8(i8* %64)
  %66 = load %struct.info*, %struct.info** %7, align 8
  %67 = getelementptr inbounds %struct.info, %struct.info* %66, i32 0, i32 3
  %68 = load i8**, i8*** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = mul nsw i32 3, %69
  %71 = add nsw i32 %70, 0
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %68, i64 %72
  store i8* %65, i8** %73, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load i32, i32* %10, align 4
  %76 = mul nsw i32 %75, 3
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %74, i64 %77
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = call i8* @read8(i8* %79)
  %81 = load %struct.info*, %struct.info** %7, align 8
  %82 = getelementptr inbounds %struct.info, %struct.info* %81, i32 0, i32 3
  %83 = load i8**, i8*** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = mul nsw i32 3, %84
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %83, i64 %87
  store i8* %80, i8** %88, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = load i32, i32* %10, align 4
  %91 = mul nsw i32 %90, 3
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %89, i64 %92
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  %95 = call i8* @read8(i8* %94)
  %96 = load %struct.info*, %struct.info** %7, align 8
  %97 = getelementptr inbounds %struct.info, %struct.info* %96, i32 0, i32 3
  %98 = load i8**, i8*** %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = mul nsw i32 3, %99
  %101 = add nsw i32 %100, 2
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %98, i64 %102
  store i8* %95, i8** %103, align 8
  br label %104

104:                                              ; preds = %58
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %54

107:                                              ; preds = %54
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %107
  %112 = load i32*, i32** %6, align 8
  %113 = load %struct.info*, %struct.info** %7, align 8
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @bmp_load_default_palette(i32* %112, %struct.info* %113, i32 %114)
  br label %116

116:                                              ; preds = %111, %107
  %117 = load i8*, i8** %8, align 8
  %118 = load i32, i32* %12, align 4
  %119 = mul nsw i32 %118, 3
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %117, i64 %120
  store i8* %121, i8** %5, align 8
  br label %200

122:                                              ; preds = %33
  %123 = load i32, i32* %11, align 4
  %124 = load i8*, i8** %9, align 8
  %125 = load i8*, i8** %8, align 8
  %126 = ptrtoint i8* %124 to i64
  %127 = ptrtoint i8* %125 to i64
  %128 = sub i64 %126, %127
  %129 = sdiv i64 %128, 4
  %130 = trunc i64 %129 to i32
  %131 = call i32 @fz_mini(i32 %123, i32 %130)
  store i32 %131, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %132

132:                                              ; preds = %182, %122
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* %12, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %185

136:                                              ; preds = %132
  %137 = load i8*, i8** %8, align 8
  %138 = load i32, i32* %10, align 4
  %139 = mul nsw i32 %138, 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %137, i64 %140
  %142 = getelementptr inbounds i8, i8* %141, i64 2
  %143 = call i8* @read8(i8* %142)
  %144 = load %struct.info*, %struct.info** %7, align 8
  %145 = getelementptr inbounds %struct.info, %struct.info* %144, i32 0, i32 3
  %146 = load i8**, i8*** %145, align 8
  %147 = load i32, i32* %10, align 4
  %148 = mul nsw i32 3, %147
  %149 = add nsw i32 %148, 0
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8*, i8** %146, i64 %150
  store i8* %143, i8** %151, align 8
  %152 = load i8*, i8** %8, align 8
  %153 = load i32, i32* %10, align 4
  %154 = mul nsw i32 %153, 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %152, i64 %155
  %157 = getelementptr inbounds i8, i8* %156, i64 1
  %158 = call i8* @read8(i8* %157)
  %159 = load %struct.info*, %struct.info** %7, align 8
  %160 = getelementptr inbounds %struct.info, %struct.info* %159, i32 0, i32 3
  %161 = load i8**, i8*** %160, align 8
  %162 = load i32, i32* %10, align 4
  %163 = mul nsw i32 3, %162
  %164 = add nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8*, i8** %161, i64 %165
  store i8* %158, i8** %166, align 8
  %167 = load i8*, i8** %8, align 8
  %168 = load i32, i32* %10, align 4
  %169 = mul nsw i32 %168, 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %167, i64 %170
  %172 = getelementptr inbounds i8, i8* %171, i64 0
  %173 = call i8* @read8(i8* %172)
  %174 = load %struct.info*, %struct.info** %7, align 8
  %175 = getelementptr inbounds %struct.info, %struct.info* %174, i32 0, i32 3
  %176 = load i8**, i8*** %175, align 8
  %177 = load i32, i32* %10, align 4
  %178 = mul nsw i32 3, %177
  %179 = add nsw i32 %178, 2
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8*, i8** %176, i64 %180
  store i8* %173, i8** %181, align 8
  br label %182

182:                                              ; preds = %136
  %183 = load i32, i32* %10, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %10, align 4
  br label %132

185:                                              ; preds = %132
  %186 = load i32, i32* %12, align 4
  %187 = load i32, i32* %11, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %194

189:                                              ; preds = %185
  %190 = load i32*, i32** %6, align 8
  %191 = load %struct.info*, %struct.info** %7, align 8
  %192 = load i32, i32* %12, align 4
  %193 = call i32 @bmp_load_default_palette(i32* %190, %struct.info* %191, i32 %192)
  br label %194

194:                                              ; preds = %189, %185
  %195 = load i8*, i8** %8, align 8
  %196 = load i32, i32* %12, align 4
  %197 = mul nsw i32 %196, 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %195, i64 %198
  store i8* %199, i8** %5, align 8
  br label %200

200:                                              ; preds = %194, %116, %17
  %201 = load i8*, i8** %5, align 8
  ret i8* %201
}

declare dso_local i32 @fz_mini(i32, i32) #1

declare dso_local i8* @read8(i8*) #1

declare dso_local i32 @bmp_load_default_palette(i32*, %struct.info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

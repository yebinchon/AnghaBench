; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-png.c_png_expand_palette.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-png.c_png_expand_palette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.info = type { i32, i32, i32*, i64, i32 }
%struct.TYPE_6__ = type { i32, i8*, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i32*, %struct.info*, %struct.TYPE_6__*)* @png_expand_palette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @png_expand_palette(i32* %0, %struct.info* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.info*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.info* %1, %struct.info** %5, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.info*, %struct.info** %5, align 8
  %17 = getelementptr inbounds %struct.info, %struct.info* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.info*, %struct.info** %5, align 8
  %26 = getelementptr inbounds %struct.info, %struct.info* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = call %struct.TYPE_6__* @fz_new_pixmap(i32* %15, i32 %18, i32 %21, i32 %24, i32* null, i64 %27)
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %7, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %8, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %9, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %40, %43
  %45 = sub nsw i32 %37, %44
  store i32 %45, i32* %12, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %51, %54
  %56 = sub nsw i32 %48, %55
  store i32 %56, i32* %13, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load %struct.info*, %struct.info** %5, align 8
  %68 = getelementptr inbounds %struct.info, %struct.info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %148, %3
  %71 = load i32, i32* %11, align 4
  %72 = icmp ugt i32 %71, 0
  br i1 %72, label %73, label %151

73:                                               ; preds = %70
  %74 = load %struct.info*, %struct.info** %5, align 8
  %75 = getelementptr inbounds %struct.info, %struct.info* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %136, %73
  %78 = load i32, i32* %10, align 4
  %79 = icmp ugt i32 %78, 0
  br i1 %79, label %80, label %139

80:                                               ; preds = %77
  %81 = load i8*, i8** %8, align 8
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = shl i32 %83, 2
  store i32 %84, i32* %14, align 4
  %85 = load %struct.info*, %struct.info** %5, align 8
  %86 = getelementptr inbounds %struct.info, %struct.info* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %14, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = trunc i32 %91 to i8
  %93 = load i8*, i8** %9, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %9, align 8
  store i8 %92, i8* %93, align 1
  %95 = load %struct.info*, %struct.info** %5, align 8
  %96 = getelementptr inbounds %struct.info, %struct.info* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = trunc i32 %102 to i8
  %104 = load i8*, i8** %9, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %9, align 8
  store i8 %103, i8* %104, align 1
  %106 = load %struct.info*, %struct.info** %5, align 8
  %107 = getelementptr inbounds %struct.info, %struct.info* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %14, align 4
  %110 = add nsw i32 %109, 2
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = trunc i32 %113 to i8
  %115 = load i8*, i8** %9, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %9, align 8
  store i8 %114, i8* %115, align 1
  %117 = load %struct.info*, %struct.info** %5, align 8
  %118 = getelementptr inbounds %struct.info, %struct.info* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %80
  %122 = load %struct.info*, %struct.info** %5, align 8
  %123 = getelementptr inbounds %struct.info, %struct.info* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %14, align 4
  %126 = add nsw i32 %125, 3
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = trunc i32 %129 to i8
  %131 = load i8*, i8** %9, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %9, align 8
  store i8 %130, i8* %131, align 1
  br label %133

133:                                              ; preds = %121, %80
  %134 = load i8*, i8** %8, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %8, align 8
  br label %136

136:                                              ; preds = %133
  %137 = load i32, i32* %10, align 4
  %138 = add i32 %137, -1
  store i32 %138, i32* %10, align 4
  br label %77

139:                                              ; preds = %77
  %140 = load i32, i32* %13, align 4
  %141 = load i8*, i8** %8, align 8
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds i8, i8* %141, i64 %142
  store i8* %143, i8** %8, align 8
  %144 = load i32, i32* %12, align 4
  %145 = load i8*, i8** %9, align 8
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds i8, i8* %145, i64 %146
  store i8* %147, i8** %9, align 8
  br label %148

148:                                              ; preds = %139
  %149 = load i32, i32* %11, align 4
  %150 = add i32 %149, -1
  store i32 %150, i32* %11, align 4
  br label %70

151:                                              ; preds = %70
  %152 = load i32*, i32** %4, align 8
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %154 = call i32 @fz_drop_pixmap(i32* %152, %struct.TYPE_6__* %153)
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  ret %struct.TYPE_6__* %155
}

declare dso_local %struct.TYPE_6__* @fz_new_pixmap(i32*, i32, i32, i32, i32*, i64) #1

declare dso_local i32 @fz_drop_pixmap(i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

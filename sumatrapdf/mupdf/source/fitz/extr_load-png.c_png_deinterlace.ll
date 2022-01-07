; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-png.c_png_deinterlace.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-png.c_png_deinterlace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.info = type { i32, i32, i32, i32, i8* }

@UINT_MAX = common dso_local global i32 0, align 4
@FZ_ERROR_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"image too large\00", align 1
@adam7_dx = common dso_local global i32* null, align 8
@adam7_ix = common dso_local global i32* null, align 8
@adam7_dy = common dso_local global i32* null, align 8
@adam7_iy = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.info*, i32*, i32*, i32*)* @png_deinterlace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @png_deinterlace(i32* %0, %struct.info* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.info* %1, %struct.info** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %26 = load %struct.info*, %struct.info** %7, align 8
  %27 = getelementptr inbounds %struct.info, %struct.info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %11, align 4
  %29 = load %struct.info*, %struct.info** %7, align 8
  %30 = getelementptr inbounds %struct.info, %struct.info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %12, align 4
  %32 = load %struct.info*, %struct.info** %7, align 8
  %33 = getelementptr inbounds %struct.info, %struct.info* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %11, align 4
  %36 = mul i32 %34, %35
  %37 = load i32, i32* %12, align 4
  %38 = mul i32 %36, %37
  %39 = add i32 %38, 7
  %40 = udiv i32 %39, 8
  store i32 %40, i32* %13, align 4
  %41 = load %struct.info*, %struct.info** %7, align 8
  %42 = getelementptr inbounds %struct.info, %struct.info* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @UINT_MAX, align 4
  %45 = load i32, i32* %13, align 4
  %46 = udiv i32 %44, %45
  %47 = icmp ugt i32 %43, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %5
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* @FZ_ERROR_MEMORY, align 4
  %51 = call i32 @fz_throw(i32* %49, i32 %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %48, %5
  %53 = load i32*, i32** %6, align 8
  %54 = load %struct.info*, %struct.info** %7, align 8
  %55 = getelementptr inbounds %struct.info, %struct.info* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %13, align 4
  %58 = mul i32 %56, %57
  %59 = call i8* @fz_malloc(i32* %53, i32 %58)
  store i8* %59, i8** %14, align 8
  store i32 0, i32* %15, align 4
  br label %60

60:                                               ; preds = %176, %52
  %61 = load i32, i32* %15, align 4
  %62 = icmp ult i32 %61, 7
  br i1 %62, label %63, label %179

63:                                               ; preds = %60
  %64 = load %struct.info*, %struct.info** %7, align 8
  %65 = getelementptr inbounds %struct.info, %struct.info* %64, i32 0, i32 4
  %66 = load i8*, i8** %65, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = load i32, i32* %15, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %66, i64 %72
  store i8* %73, i8** %19, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %15, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %20, align 4
  %79 = load i32*, i32** %9, align 8
  %80 = load i32, i32* %15, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %21, align 4
  %84 = load i8*, i8** %19, align 8
  %85 = load i32, i32* %20, align 4
  %86 = load i32, i32* %21, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @png_predict(i8* %84, i32 %85, i32 %86, i32 %87, i32 %88)
  store i32 0, i32* %17, align 4
  br label %90

90:                                               ; preds = %172, %63
  %91 = load i32, i32* %17, align 4
  %92 = load i32, i32* %21, align 4
  %93 = icmp ult i32 %91, %92
  br i1 %93, label %94, label %175

94:                                               ; preds = %90
  store i32 0, i32* %16, align 4
  br label %95

95:                                               ; preds = %158, %94
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* %20, align 4
  %98 = icmp ult i32 %96, %97
  br i1 %98, label %99, label %161

99:                                               ; preds = %95
  %100 = load i32, i32* %16, align 4
  %101 = load i32*, i32** @adam7_dx, align 8
  %102 = load i32, i32* %15, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = mul i32 %100, %105
  %107 = load i32*, i32** @adam7_ix, align 8
  %108 = load i32, i32* %15, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = add i32 %106, %111
  store i32 %112, i32* %22, align 4
  %113 = load i32, i32* %17, align 4
  %114 = load i32*, i32** @adam7_dy, align 8
  %115 = load i32, i32* %15, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = mul i32 %113, %118
  %120 = load i32*, i32** @adam7_iy, align 8
  %121 = load i32, i32* %15, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = add i32 %119, %124
  store i32 %125, i32* %23, align 4
  %126 = load i8*, i8** %14, align 8
  %127 = load i32, i32* %23, align 4
  %128 = load i32, i32* %13, align 4
  %129 = mul i32 %127, %128
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %126, i64 %130
  store i8* %131, i8** %24, align 8
  store i32 0, i32* %18, align 4
  br label %132

132:                                              ; preds = %154, %99
  %133 = load i32, i32* %18, align 4
  %134 = load i32, i32* %11, align 4
  %135 = icmp ult i32 %133, %134
  br i1 %135, label %136, label %157

136:                                              ; preds = %132
  %137 = load i8*, i8** %19, align 8
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* %11, align 4
  %140 = mul i32 %138, %139
  %141 = load i32, i32* %18, align 4
  %142 = add i32 %140, %141
  %143 = load i32, i32* %12, align 4
  %144 = call i32 @getcomp(i8* %137, i32 %142, i32 %143)
  store i32 %144, i32* %25, align 4
  %145 = load i8*, i8** %24, align 8
  %146 = load i32, i32* %22, align 4
  %147 = load i32, i32* %11, align 4
  %148 = mul i32 %146, %147
  %149 = load i32, i32* %18, align 4
  %150 = add i32 %148, %149
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* %25, align 4
  %153 = call i32 @putcomp(i8* %145, i32 %150, i32 %151, i32 %152)
  br label %154

154:                                              ; preds = %136
  %155 = load i32, i32* %18, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %18, align 4
  br label %132

157:                                              ; preds = %132
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %16, align 4
  %160 = add i32 %159, 1
  store i32 %160, i32* %16, align 4
  br label %95

161:                                              ; preds = %95
  %162 = load i32, i32* %20, align 4
  %163 = load i32, i32* %12, align 4
  %164 = mul i32 %162, %163
  %165 = load i32, i32* %11, align 4
  %166 = mul i32 %164, %165
  %167 = add i32 %166, 7
  %168 = udiv i32 %167, 8
  %169 = load i8*, i8** %19, align 8
  %170 = zext i32 %168 to i64
  %171 = getelementptr inbounds i8, i8* %169, i64 %170
  store i8* %171, i8** %19, align 8
  br label %172

172:                                              ; preds = %161
  %173 = load i32, i32* %17, align 4
  %174 = add i32 %173, 1
  store i32 %174, i32* %17, align 4
  br label %90

175:                                              ; preds = %90
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %15, align 4
  %178 = add i32 %177, 1
  store i32 %178, i32* %15, align 4
  br label %60

179:                                              ; preds = %60
  %180 = load i32*, i32** %6, align 8
  %181 = load %struct.info*, %struct.info** %7, align 8
  %182 = getelementptr inbounds %struct.info, %struct.info* %181, i32 0, i32 4
  %183 = load i8*, i8** %182, align 8
  %184 = call i32 @fz_free(i32* %180, i8* %183)
  %185 = load i8*, i8** %14, align 8
  %186 = load %struct.info*, %struct.info** %7, align 8
  %187 = getelementptr inbounds %struct.info, %struct.info* %186, i32 0, i32 4
  store i8* %185, i8** %187, align 8
  ret void
}

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i8* @fz_malloc(i32*, i32) #1

declare dso_local i32 @png_predict(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @getcomp(i8*, i32, i32) #1

declare dso_local i32 @putcomp(i8*, i32, i32, i32) #1

declare dso_local i32 @fz_free(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

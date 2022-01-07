; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-device.c_fz_draw_end_mask.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-device.c_fz_draw_end_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_14__ = type { i32, i32*, i32* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_14__*, i32, %struct.TYPE_14__*, %struct.TYPE_14__* }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"unexpected end mask\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@FZ_BLEND_ISOLATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @fz_draw_end_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_draw_end_mask(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = bitcast i32* %10 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %11, %struct.TYPE_16__** %5, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %19 = call i32 @fz_throw(i32* %17, i32 %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %16, %2
  %21 = load i32*, i32** %3, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %23 = call %struct.TYPE_15__* @convert_stack(i32* %21, %struct.TYPE_16__* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %9, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i64 1
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 4
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %29 = call %struct.TYPE_14__* @fz_alpha_from_gray(i32* %24, %struct.TYPE_14__* %28)
  store %struct.TYPE_14__* %29, %struct.TYPE_14__** %6, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i64 1
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 5
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 5
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = icmp ne %struct.TYPE_14__* %33, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %20
  %40 = load i32*, i32** %3, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i64 1
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 5
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  %45 = call i32 @fz_drop_pixmap(i32* %40, %struct.TYPE_14__* %44)
  br label %46

46:                                               ; preds = %39, %20
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i64 1
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 5
  store %struct.TYPE_14__* %47, %struct.TYPE_14__** %50, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i64 1
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 4
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %57, align 8
  %59 = icmp ne %struct.TYPE_14__* %54, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %46
  %61 = load i32*, i32** %3, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i64 1
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 4
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = call i32 @fz_drop_pixmap(i32* %61, %struct.TYPE_14__* %65)
  br label %67

67:                                               ; preds = %60, %46
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i64 1
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %70, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i64 1
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %73, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %77, align 8
  %79 = icmp ne %struct.TYPE_14__* %74, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %67
  %81 = load i32*, i32** %3, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i64 1
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  %86 = call i32 @fz_drop_pixmap(i32* %81, %struct.TYPE_14__* %85)
  br label %87

87:                                               ; preds = %80, %67
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i64 1
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 2
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %90, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i64 1
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %93, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %97, align 8
  %99 = icmp ne %struct.TYPE_14__* %94, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %87
  %101 = load i32*, i32** %3, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i64 1
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = call i32 @fz_drop_pixmap(i32* %101, %struct.TYPE_14__* %105)
  br label %107

107:                                              ; preds = %100, %87
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i64 1
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %110, align 8
  %111 = load i32*, i32** %3, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %113 = call i32 @fz_pixmap_bbox(i32* %111, %struct.TYPE_14__* %112)
  store i32 %113, i32* %8, align 4
  %114 = load i32*, i32** %3, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 4
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 4
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 4
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i8* @fz_new_pixmap_with_bbox(i32* %114, i32* %119, i32 %120, i32* %125, i32 %130)
  %132 = bitcast i8* %131 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %132, %struct.TYPE_14__** %7, align 8
  %133 = load i32*, i32** %3, align 8
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 4
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %136, align 8
  %138 = load i32, i32* %8, align 4
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @fz_copy_pixmap_rect(i32* %133, %struct.TYPE_14__* %134, %struct.TYPE_14__* %137, i32 %138, i32 %141)
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i64 1
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 4
  store %struct.TYPE_14__* %143, %struct.TYPE_14__** %146, align 8
  %147 = load i32, i32* @FZ_BLEND_ISOLATED, align 4
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i64 1
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %151, %147
  store i32 %152, i32* %150, align 8
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i64 0
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 2
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %155, align 8
  %157 = icmp ne %struct.TYPE_14__* %156, null
  br i1 %157, label %158, label %172

158:                                              ; preds = %107
  %159 = load i32*, i32** %3, align 8
  %160 = load i32, i32* %8, align 4
  %161 = call i8* @fz_new_pixmap_with_bbox(i32* %159, i32* null, i32 %160, i32* null, i32 1)
  %162 = bitcast i8* %161 to %struct.TYPE_14__*
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i64 1
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 2
  store %struct.TYPE_14__* %162, %struct.TYPE_14__** %165, align 8
  %166 = load i32*, i32** %3, align 8
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i64 1
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %169, align 8
  %171 = call i32 @fz_clear_pixmap(i32* %166, %struct.TYPE_14__* %170)
  br label %172

172:                                              ; preds = %158, %107
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i64 0
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %175, align 8
  %177 = icmp ne %struct.TYPE_14__* %176, null
  br i1 %177, label %178, label %192

178:                                              ; preds = %172
  %179 = load i32*, i32** %3, align 8
  %180 = load i32, i32* %8, align 4
  %181 = call i8* @fz_new_pixmap_with_bbox(i32* %179, i32* null, i32 %180, i32* null, i32 1)
  %182 = bitcast i8* %181 to %struct.TYPE_14__*
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i64 1
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 1
  store %struct.TYPE_14__* %182, %struct.TYPE_14__** %185, align 8
  %186 = load i32*, i32** %3, align 8
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i64 1
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %189, align 8
  %191 = call i32 @fz_clear_pixmap(i32* %186, %struct.TYPE_14__* %190)
  br label %192

192:                                              ; preds = %178, %172
  %193 = load i32, i32* %8, align 4
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i64 1
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 0
  store i32 %193, i32* %196, align 8
  ret void
}

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local %struct.TYPE_15__* @convert_stack(i32*, %struct.TYPE_16__*, i8*) #1

declare dso_local %struct.TYPE_14__* @fz_alpha_from_gray(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @fz_drop_pixmap(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @fz_pixmap_bbox(i32*, %struct.TYPE_14__*) #1

declare dso_local i8* @fz_new_pixmap_with_bbox(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @fz_copy_pixmap_rect(i32*, %struct.TYPE_14__*, %struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @fz_clear_pixmap(i32*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_svg-device.c_svg_send_image.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_svg-device.c_svg_send_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_14__*, i32, i64, i32* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }

@.str = private unnamed_addr constant [62 x i8] c"<use xlink:href=\22#im%d\22 x=\220\22 y=\220\22 width=\22%d\22 height=\22%d\22/>\0A\00", align 1
@image = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"<symbol id=\22im%d\22 viewBox=\220 0 %d %d\22>\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"<image width=\22%d\22 height=\22%d\22 xlink:href=\22\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"\22/>\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"</symbol>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_12__*, %struct.TYPE_13__*, i32)* @svg_send_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svg_send_image(i32* %0, %struct.TYPE_12__* %1, %struct.TYPE_13__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 5
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %9, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %170

20:                                               ; preds = %4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %10, align 4
  br label %25

25:                                               ; preds = %41, %20
  %26 = load i32, i32* %10, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %25
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %38 = icmp eq %struct.TYPE_13__* %29, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %44

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %10, align 4
  br label %25

44:                                               ; preds = %39, %25
  %45 = load i32, i32* %10, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %44
  %48 = load i32*, i32** %5, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %48, i32* %49, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %60, i32 %63)
  br label %187

65:                                               ; preds = %44
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %68, %71
  br i1 %72, label %73, label %94

73:                                               ; preds = %65
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %76, 2
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  store i32 32, i32* %12, align 4
  br label %81

81:                                               ; preds = %80, %73
  %82 = load i32*, i32** %5, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @image, align 4
  %88 = call %struct.TYPE_14__* @fz_realloc_array(i32* %82, %struct.TYPE_14__* %85, i32 %86, i32 %87)
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 2
  store %struct.TYPE_14__* %88, %struct.TYPE_14__** %90, align 8
  %91 = load i32, i32* %12, align 4
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %81, %65
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 8
  store i32 %97, i32* %11, align 4
  %99 = load i32*, i32** %5, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %101 = call i32* @start_def(i32* %99, %struct.TYPE_12__* %100)
  store i32* %101, i32** %9, align 8
  %102 = load i32*, i32** %5, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %102, i32* %103, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %104, i32 %107, i32 %110)
  %112 = load i32*, i32** %5, align 8
  %113 = load i32*, i32** %9, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %112, i32* %113, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %116, i32 %119)
  %121 = load i32*, i32** %5, align 8
  %122 = load i32*, i32** %9, align 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %124 = call i32 @fz_write_image_as_data_uri(i32* %121, i32* %122, %struct.TYPE_13__* %123)
  %125 = load i32*, i32** %5, align 8
  %126 = load i32*, i32** %9, align 8
  %127 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %125, i32* %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %128 = load i32*, i32** %5, align 8
  %129 = load i32*, i32** %9, align 8
  %130 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %128, i32* %129, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %131 = load i32*, i32** %5, align 8
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %133 = call i32* @end_def(i32* %131, %struct.TYPE_12__* %132)
  store i32* %133, i32** %9, align 8
  %134 = load i32, i32* %11, align 4
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %136, align 8
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  store i32 %134, i32* %143, align 8
  %144 = load i32*, i32** %5, align 8
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %146 = call %struct.TYPE_13__* @fz_keep_image(i32* %144, %struct.TYPE_13__* %145)
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %148, align 8
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 1
  store %struct.TYPE_13__* %146, %struct.TYPE_13__** %155, align 8
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 8
  %160 = load i32*, i32** %5, align 8
  %161 = load i32*, i32** %9, align 8
  %162 = load i32, i32* %11, align 4
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %160, i32* %161, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %162, i32 %165, i32 %168)
  br label %187

170:                                              ; preds = %4
  %171 = load i32*, i32** %5, align 8
  %172 = load i32*, i32** %9, align 8
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %171, i32* %172, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %175, i32 %178)
  %180 = load i32*, i32** %5, align 8
  %181 = load i32*, i32** %9, align 8
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %183 = call i32 @fz_write_image_as_data_uri(i32* %180, i32* %181, %struct.TYPE_13__* %182)
  %184 = load i32*, i32** %5, align 8
  %185 = load i32*, i32** %9, align 8
  %186 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %184, i32* %185, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %187

187:                                              ; preds = %47, %170, %94
  ret void
}

declare dso_local i32 @fz_write_printf(i32*, i32*, i8*, ...) #1

declare dso_local %struct.TYPE_14__* @fz_realloc_array(i32*, %struct.TYPE_14__*, i32, i32) #1

declare dso_local i32* @start_def(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @fz_write_image_as_data_uri(i32*, i32*, %struct.TYPE_13__*) #1

declare dso_local i32* @end_def(i32*, %struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_13__* @fz_keep_image(i32*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

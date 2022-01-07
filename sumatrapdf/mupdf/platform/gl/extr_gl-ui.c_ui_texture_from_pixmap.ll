; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-ui.c_ui_texture_from_pixmap.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-ui.c_ui_texture_from_pixmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.texture = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32*, i32, i32 }

@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_TEXTURE_MAG_FILTER = common dso_local global i32 0, align 4
@GL_NEAREST = common dso_local global i32 0, align 4
@GL_TEXTURE_MIN_FILTER = common dso_local global i32 0, align 4
@has_ARB_texture_non_power_of_two = common dso_local global i64 0, align 8
@max_texture_size = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"texture size (%d x %d) exceeds implementation limit (%d)\00", align 1
@GL_UNPACK_ALIGNMENT = common dso_local global i32 0, align 4
@GL_RGBA = common dso_local global i32 0, align 4
@GL_RGB = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_texture_from_pixmap(%struct.texture* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.texture*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.texture* %0, %struct.texture** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %7 = load %struct.texture*, %struct.texture** %3, align 8
  %8 = getelementptr inbounds %struct.texture, %struct.texture* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load %struct.texture*, %struct.texture** %3, align 8
  %13 = getelementptr inbounds %struct.texture, %struct.texture* %12, i32 0, i32 6
  %14 = call i32 @glGenTextures(i32 1, i32* %13)
  br label %15

15:                                               ; preds = %11, %2
  %16 = load i32, i32* @GL_TEXTURE_2D, align 4
  %17 = load %struct.texture*, %struct.texture** %3, align 8
  %18 = getelementptr inbounds %struct.texture, %struct.texture* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @glBindTexture(i32 %16, i32 %19)
  %21 = load i32, i32* @GL_TEXTURE_2D, align 4
  %22 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %23 = load i32, i32* @GL_NEAREST, align 4
  %24 = call i32 @glTexParameteri(i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* @GL_TEXTURE_2D, align 4
  %26 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %27 = load i32, i32* @GL_NEAREST, align 4
  %28 = call i32 @glTexParameteri(i32 %25, i32 %26, i32 %27)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.texture*, %struct.texture** %3, align 8
  %33 = getelementptr inbounds %struct.texture, %struct.texture* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.texture*, %struct.texture** %3, align 8
  %38 = getelementptr inbounds %struct.texture, %struct.texture* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.texture*, %struct.texture** %3, align 8
  %43 = getelementptr inbounds %struct.texture, %struct.texture* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.texture*, %struct.texture** %3, align 8
  %48 = getelementptr inbounds %struct.texture, %struct.texture* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i64, i64* @has_ARB_texture_non_power_of_two, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %103

51:                                               ; preds = %15
  %52 = load %struct.texture*, %struct.texture** %3, align 8
  %53 = getelementptr inbounds %struct.texture, %struct.texture* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @max_texture_size, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load %struct.texture*, %struct.texture** %3, align 8
  %59 = getelementptr inbounds %struct.texture, %struct.texture* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @max_texture_size, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %57, %51
  %64 = load i32, i32* @ctx, align 4
  %65 = load %struct.texture*, %struct.texture** %3, align 8
  %66 = getelementptr inbounds %struct.texture, %struct.texture* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.texture*, %struct.texture** %3, align 8
  %69 = getelementptr inbounds %struct.texture, %struct.texture* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @max_texture_size, align 4
  %72 = call i32 @fz_warn(i32 %64, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %63, %57
  %74 = load i32, i32* @GL_UNPACK_ALIGNMENT, align 4
  %75 = call i32 @glPixelStorei(i32 %74, i32 1)
  %76 = load i32, i32* @GL_TEXTURE_2D, align 4
  %77 = load i32, i32* @GL_RGBA, align 4
  %78 = load %struct.texture*, %struct.texture** %3, align 8
  %79 = getelementptr inbounds %struct.texture, %struct.texture* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.texture*, %struct.texture** %3, align 8
  %82 = getelementptr inbounds %struct.texture, %struct.texture* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 4
  br i1 %87, label %88, label %90

88:                                               ; preds = %73
  %89 = load i32, i32* @GL_RGBA, align 4
  br label %92

90:                                               ; preds = %73
  %91 = load i32, i32* @GL_RGB, align 4
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %89, %88 ], [ %91, %90 ]
  %94 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @glTexImage2D(i32 %76, i32 0, i32 %77, i32 %80, i32 %83, i32 0, i32 %93, i32 %94, i32* %97)
  %99 = load %struct.texture*, %struct.texture** %3, align 8
  %100 = getelementptr inbounds %struct.texture, %struct.texture* %99, i32 0, i32 2
  store i32 1, i32* %100, align 4
  %101 = load %struct.texture*, %struct.texture** %3, align 8
  %102 = getelementptr inbounds %struct.texture, %struct.texture* %101, i32 0, i32 3
  store i32 1, i32* %102, align 4
  br label %177

103:                                              ; preds = %15
  %104 = load %struct.texture*, %struct.texture** %3, align 8
  %105 = getelementptr inbounds %struct.texture, %struct.texture* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @next_power_of_two(i32 %106)
  store i32 %107, i32* %5, align 4
  %108 = load %struct.texture*, %struct.texture** %3, align 8
  %109 = getelementptr inbounds %struct.texture, %struct.texture* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @next_power_of_two(i32 %110)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @max_texture_size, align 4
  %114 = icmp sgt i32 %112, %113
  br i1 %114, label %119, label %115

115:                                              ; preds = %103
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @max_texture_size, align 4
  %118 = icmp sgt i32 %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %115, %103
  %120 = load i32, i32* @ctx, align 4
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @max_texture_size, align 4
  %124 = call i32 @fz_warn(i32 %120, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %121, i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %119, %115
  %126 = load i32, i32* @GL_UNPACK_ALIGNMENT, align 4
  %127 = call i32 @glPixelStorei(i32 %126, i32 1)
  %128 = load i32, i32* @GL_TEXTURE_2D, align 4
  %129 = load i32, i32* @GL_RGBA, align 4
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* @GL_RGBA, align 4
  %133 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %134 = call i32 @glTexImage2D(i32 %128, i32 0, i32 %129, i32 %130, i32 %131, i32 0, i32 %132, i32 %133, i32* null)
  %135 = load i32, i32* @GL_TEXTURE_2D, align 4
  %136 = load %struct.texture*, %struct.texture** %3, align 8
  %137 = getelementptr inbounds %struct.texture, %struct.texture* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.texture*, %struct.texture** %3, align 8
  %140 = getelementptr inbounds %struct.texture, %struct.texture* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = icmp eq i32 %144, 4
  br i1 %145, label %146, label %148

146:                                              ; preds = %125
  %147 = load i32, i32* @GL_RGBA, align 4
  br label %150

148:                                              ; preds = %125
  %149 = load i32, i32* @GL_RGB, align 4
  br label %150

150:                                              ; preds = %148, %146
  %151 = phi i32 [ %147, %146 ], [ %149, %148 ]
  %152 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 3
  %155 = load i32*, i32** %154, align 8
  %156 = call i32 @glTexSubImage2D(i32 %135, i32 0, i32 0, i32 0, i32 %138, i32 %141, i32 %151, i32 %152, i32* %155)
  %157 = load %struct.texture*, %struct.texture** %3, align 8
  %158 = getelementptr inbounds %struct.texture, %struct.texture* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = sitofp i32 %159 to float
  %161 = load i32, i32* %5, align 4
  %162 = sitofp i32 %161 to float
  %163 = fdiv float %160, %162
  %164 = fptosi float %163 to i32
  %165 = load %struct.texture*, %struct.texture** %3, align 8
  %166 = getelementptr inbounds %struct.texture, %struct.texture* %165, i32 0, i32 2
  store i32 %164, i32* %166, align 4
  %167 = load %struct.texture*, %struct.texture** %3, align 8
  %168 = getelementptr inbounds %struct.texture, %struct.texture* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = sitofp i32 %169 to float
  %171 = load i32, i32* %6, align 4
  %172 = sitofp i32 %171 to float
  %173 = fdiv float %170, %172
  %174 = fptosi float %173 to i32
  %175 = load %struct.texture*, %struct.texture** %3, align 8
  %176 = getelementptr inbounds %struct.texture, %struct.texture* %175, i32 0, i32 3
  store i32 %174, i32* %176, align 4
  br label %177

177:                                              ; preds = %150, %92
  ret void
}

declare dso_local i32 @glGenTextures(i32, i32*) #1

declare dso_local i32 @glBindTexture(i32, i32) #1

declare dso_local i32 @glTexParameteri(i32, i32, i32) #1

declare dso_local i32 @fz_warn(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @glPixelStorei(i32, i32) #1

declare dso_local i32 @glTexImage2D(i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @next_power_of_two(i32) #1

declare dso_local i32 @glTexSubImage2D(i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

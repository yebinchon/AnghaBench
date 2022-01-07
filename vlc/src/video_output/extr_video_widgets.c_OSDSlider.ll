; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_video_widgets.c_OSDSlider.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_video_widgets.c_OSDSlider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@SLIDER_MARGIN_BASE = common dso_local global i32 0, align 4
@OSD_HOR_SLIDER = common dso_local global i32 0, align 4
@STYLE_FILLED = common dso_local global i32 0, align 4
@COL_BLUE_SHADE = common dso_local global i32 0, align 4
@COL_BLUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32, %struct.TYPE_3__*)* @OSDSlider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @OSDSlider(i32 %0, i32 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @__MAX(i32 %23, i32 %26)
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @SLIDER_MARGIN_BASE, align 4
  %31 = mul nsw i32 %29, %30
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @SLIDER_MARGIN_BASE, align 4
  %34 = mul nsw i32 %32, %33
  %35 = sitofp i32 %34 to double
  %36 = fmul double %35, 6.000000e-01
  %37 = fptosi double %36 to i32
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %8, align 4
  %39 = sitofp i32 %38 to double
  %40 = fmul double %39, 2.500000e-01
  %41 = fptosi double %40 to i32
  %42 = call i32 @__MIN(i32 5, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @OSD_HOR_SLIDER, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %85

46:                                               ; preds = %3
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %9, align 4
  %51 = mul nsw i32 2, %50
  %52 = sub nsw i32 %49, %51
  %53 = call i8* @__MAX(i32 %52, i32 1)
  %54 = ptrtoint i8* %53 to i32
  store i32 %54, i32* %14, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sitofp i32 %57 to double
  %59 = fmul double %58, 5.000000e-02
  %60 = fptosi double %59 to i32
  %61 = call i8* @__MAX(i32 %60, i32 1)
  %62 = ptrtoint i8* %61 to i32
  store i32 %62, i32* %15, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %65, %66
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %14, align 4
  %72 = sub nsw i32 %70, %71
  %73 = call i32 @__MIN(i32 %67, i32 %72)
  store i32 %73, i32* %12, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %76, %79
  %81 = load i32, i32* %10, align 4
  %82 = sub nsw i32 %80, %81
  %83 = call i8* @__MAX(i32 %82, i32 0)
  %84 = ptrtoint i8* %83 to i32
  store i32 %84, i32* %13, align 4
  br label %124

85:                                               ; preds = %3
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sitofp i32 %88 to double
  %90 = fmul double %89, 2.500000e-02
  %91 = fptosi double %90 to i32
  %92 = call i8* @__MAX(i32 %91, i32 1)
  %93 = ptrtoint i8* %92 to i32
  store i32 %93, i32* %14, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %9, align 4
  %98 = mul nsw i32 2, %97
  %99 = sub nsw i32 %96, %98
  %100 = call i8* @__MAX(i32 %99, i32 1)
  %101 = ptrtoint i8* %100 to i32
  store i32 %101, i32* %15, align 4
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %104, %107
  %109 = load i32, i32* %9, align 4
  %110 = sub nsw i32 %108, %109
  %111 = call i8* @__MAX(i32 %110, i32 0)
  %112 = ptrtoint i8* %111 to i32
  store i32 %112, i32* %12, align 4
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %115, %116
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %15, align 4
  %122 = sub nsw i32 %120, %121
  %123 = call i32 @__MIN(i32 %117, i32 %122)
  store i32 %123, i32* %13, align 4
  br label %124

124:                                              ; preds = %85, %46
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %11, align 4
  %127 = mul nsw i32 2, %126
  %128 = add nsw i32 1, %127
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %136, label %130

130:                                              ; preds = %124
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* %11, align 4
  %133 = mul nsw i32 2, %132
  %134 = add nsw i32 1, %133
  %135 = icmp slt i32 %131, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %130, %124
  store i32* null, i32** %4, align 8
  br label %198

137:                                              ; preds = %130
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* %15, align 4
  %142 = call i32* @OSDRegion(i32 %138, i32 %139, i32 %140, i32 %141)
  store i32* %142, i32** %16, align 8
  %143 = load i32*, i32** %16, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %146, label %145

145:                                              ; preds = %137
  store i32* null, i32** %4, align 8
  br label %198

146:                                              ; preds = %137
  %147 = load i32, i32* %11, align 4
  store i32 %147, i32* %17, align 4
  %148 = load i32, i32* %15, align 4
  %149 = sub nsw i32 %148, 1
  %150 = load i32, i32* %11, align 4
  %151 = sub nsw i32 %149, %150
  store i32 %151, i32* %20, align 4
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* @OSD_HOR_SLIDER, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %166

155:                                              ; preds = %146
  %156 = load i32, i32* %11, align 4
  store i32 %156, i32* %18, align 4
  %157 = load i32, i32* %17, align 4
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* %11, align 4
  %160 = mul nsw i32 2, %159
  %161 = sub nsw i32 %158, %160
  %162 = load i32, i32* %6, align 4
  %163 = mul nsw i32 %161, %162
  %164 = sdiv i32 %163, 100
  %165 = add nsw i32 %157, %164
  store i32 %165, i32* %19, align 4
  br label %180

166:                                              ; preds = %146
  %167 = load i32, i32* %15, align 4
  %168 = load i32, i32* %15, align 4
  %169 = load i32, i32* %11, align 4
  %170 = mul nsw i32 2, %169
  %171 = sub nsw i32 %168, %170
  %172 = load i32, i32* %6, align 4
  %173 = mul nsw i32 %171, %172
  %174 = sdiv i32 %173, 100
  %175 = sub nsw i32 %167, %174
  store i32 %175, i32* %18, align 4
  %176 = load i32, i32* %14, align 4
  %177 = sub nsw i32 %176, 1
  %178 = load i32, i32* %11, align 4
  %179 = sub nsw i32 %177, %178
  store i32 %179, i32* %19, align 4
  br label %180

180:                                              ; preds = %166, %155
  %181 = load i32*, i32** %16, align 8
  %182 = load i32, i32* @STYLE_FILLED, align 4
  %183 = load i32, i32* @COL_BLUE_SHADE, align 4
  %184 = load i32, i32* %14, align 4
  %185 = sub nsw i32 %184, 1
  %186 = load i32, i32* %15, align 4
  %187 = sub nsw i32 %186, 1
  %188 = call i32 @DrawRect(i32* %181, i32 %182, i32 %183, i32 0, i32 0, i32 %185, i32 %187)
  %189 = load i32*, i32** %16, align 8
  %190 = load i32, i32* @STYLE_FILLED, align 4
  %191 = load i32, i32* @COL_BLUE, align 4
  %192 = load i32, i32* %17, align 4
  %193 = load i32, i32* %18, align 4
  %194 = load i32, i32* %19, align 4
  %195 = load i32, i32* %20, align 4
  %196 = call i32 @DrawRect(i32* %189, i32 %190, i32 %191, i32 %192, i32 %193, i32 %194, i32 %195)
  %197 = load i32*, i32** %16, align 8
  store i32* %197, i32** %4, align 8
  br label %198

198:                                              ; preds = %180, %145, %136
  %199 = load i32*, i32** %4, align 8
  ret i32* %199
}

declare dso_local i8* @__MAX(i32, i32) #1

declare dso_local i32 @__MIN(i32, i32) #1

declare dso_local i32* @OSDRegion(i32, i32, i32, i32) #1

declare dso_local i32 @DrawRect(i32*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

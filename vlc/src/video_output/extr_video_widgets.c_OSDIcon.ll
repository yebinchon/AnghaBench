; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_video_widgets.c_OSDIcon.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_video_widgets.c_OSDIcon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, float, float, i64 }

@STYLE_FILLED = common dso_local global i32 0, align 4
@COL_TRANSPARENT = common dso_local global i32 0, align 4
@OSD_PAUSE_ICON = common dso_local global i32 0, align 4
@COL_WHITE = common dso_local global i32 0, align 4
@OSD_PLAY_ICON = common dso_local global i32 0, align 4
@OSD_MUTE_ICON = common dso_local global i32 0, align 4
@COL_BLUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, %struct.TYPE_3__*)* @OSDIcon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @OSDIcon(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store float 0x3FA99999A0000000, float* %6, align 4
  store float 0x3FB1EB8520000000, float* %7, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @__MAX(i32 %24, i64 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = sitofp i32 %29 to float
  %31 = fmul float %30, 0x3FA99999A0000000
  %32 = fptosi float %31 to i32
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %8, align 4
  %34 = sitofp i32 %33 to float
  %35 = fmul float %34, 0x3FA99999A0000000
  %36 = fptosi float %35 to i32
  store i32 %36, i32* %10, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load float, float* %38, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sitofp i32 %42 to float
  %44 = fadd float %39, %43
  %45 = load i32, i32* %8, align 4
  %46 = sitofp i32 %45 to float
  %47 = fmul float 0x3FB1EB8520000000, %46
  %48 = fsub float %44, %47
  %49 = load i32, i32* %9, align 4
  %50 = sitofp i32 %49 to float
  %51 = fsub float %48, %50
  %52 = fptosi float %51 to i32
  store i32 %52, i32* %11, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load float, float* %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sitofp i32 %56 to float
  %58 = fmul float 0x3FB1EB8520000000, %57
  %59 = fadd float %55, %58
  %60 = fptosi float %59 to i32
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %61, 1
  br i1 %62, label %66, label %63

63:                                               ; preds = %2
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %64, 1
  br i1 %65, label %66, label %67

66:                                               ; preds = %63, %2
  store i32* null, i32** %3, align 8
  br label %208

67:                                               ; preds = %63
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @__MAX(i32 %68, i64 0)
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = load i32, i32* %10, align 4
  %76 = sub nsw i32 %74, %75
  %77 = call i32 @__MIN(i32 %70, i32 %76)
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32* @OSDRegion(i32 %69, i32 %77, i32 %78, i32 %79)
  store i32* %80, i32** %13, align 8
  %81 = load i32*, i32** %13, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %67
  store i32* null, i32** %3, align 8
  br label %208

84:                                               ; preds = %67
  %85 = load i32*, i32** %13, align 8
  %86 = load i32, i32* @STYLE_FILLED, align 4
  %87 = load i32, i32* @COL_TRANSPARENT, align 4
  %88 = load i32, i32* %9, align 4
  %89 = sub nsw i32 %88, 1
  %90 = load i32, i32* %10, align 4
  %91 = sub nsw i32 %90, 1
  %92 = call i32 @DrawRect(i32* %85, i32 %86, i32 %87, i32 0, i32 0, i32 %89, i32 %91)
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @OSD_PAUSE_ICON, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %118

96:                                               ; preds = %84
  %97 = load i32, i32* %9, align 4
  %98 = sdiv i32 %97, 3
  store i32 %98, i32* %14, align 4
  %99 = load i32*, i32** %13, align 8
  %100 = load i32, i32* @STYLE_FILLED, align 4
  %101 = load i32, i32* @COL_WHITE, align 4
  %102 = load i32, i32* %14, align 4
  %103 = sub nsw i32 %102, 1
  %104 = load i32, i32* %10, align 4
  %105 = sub nsw i32 %104, 1
  %106 = call i32 @DrawRect(i32* %99, i32 %100, i32 %101, i32 0, i32 0, i32 %103, i32 %105)
  %107 = load i32*, i32** %13, align 8
  %108 = load i32, i32* @STYLE_FILLED, align 4
  %109 = load i32, i32* @COL_WHITE, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %14, align 4
  %112 = sub nsw i32 %110, %111
  %113 = load i32, i32* %9, align 4
  %114 = sub nsw i32 %113, 1
  %115 = load i32, i32* %10, align 4
  %116 = sub nsw i32 %115, 1
  %117 = call i32 @DrawRect(i32* %107, i32 %108, i32 %109, i32 %112, i32 0, i32 %114, i32 %116)
  br label %206

118:                                              ; preds = %84
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* @OSD_PLAY_ICON, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %142

122:                                              ; preds = %118
  %123 = load i32, i32* %10, align 4
  %124 = ashr i32 %123, 1
  store i32 %124, i32* %15, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %15, align 4
  %127 = sub nsw i32 %125, %126
  %128 = ashr i32 %127, 1
  store i32 %128, i32* %16, align 4
  %129 = load i32, i32* %10, align 4
  %130 = sub nsw i32 %129, 1
  %131 = ashr i32 %130, 1
  %132 = mul nsw i32 %131, 2
  store i32 %132, i32* %17, align 4
  %133 = load i32*, i32** %13, align 8
  %134 = load i32, i32* @STYLE_FILLED, align 4
  %135 = load i32, i32* @COL_WHITE, align 4
  %136 = load i32, i32* %16, align 4
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* %16, align 4
  %139 = sub nsw i32 %137, %138
  %140 = load i32, i32* %17, align 4
  %141 = call i32 @DrawTriangle(i32* %133, i32 %134, i32 %135, i32 %136, i32 0, i32 %139, i32 %140)
  br label %205

142:                                              ; preds = %118
  %143 = load i32, i32* %10, align 4
  %144 = ashr i32 %143, 1
  store i32 %144, i32* %18, align 4
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* %18, align 4
  %147 = sub nsw i32 %145, %146
  %148 = ashr i32 %147, 1
  store i32 %148, i32* %19, align 4
  %149 = load i32, i32* %10, align 4
  %150 = sub nsw i32 %149, 1
  %151 = ashr i32 %150, 1
  %152 = mul nsw i32 %151, 2
  store i32 %152, i32* %20, align 4
  %153 = load i32*, i32** %13, align 8
  %154 = load i32, i32* @STYLE_FILLED, align 4
  %155 = load i32, i32* @COL_WHITE, align 4
  %156 = load i32, i32* %19, align 4
  %157 = load i32, i32* %18, align 4
  %158 = sdiv i32 %157, 2
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* %19, align 4
  %161 = sub nsw i32 %159, %160
  %162 = load i32, i32* %10, align 4
  %163 = sub nsw i32 %162, 1
  %164 = load i32, i32* %18, align 4
  %165 = sdiv i32 %164, 2
  %166 = sub nsw i32 %163, %165
  %167 = call i32 @DrawRect(i32* %153, i32 %154, i32 %155, i32 %156, i32 %158, i32 %161, i32 %166)
  %168 = load i32*, i32** %13, align 8
  %169 = load i32, i32* @STYLE_FILLED, align 4
  %170 = load i32, i32* @COL_WHITE, align 4
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* %19, align 4
  %173 = sub nsw i32 %171, %172
  %174 = load i32, i32* %19, align 4
  %175 = load i32, i32* %20, align 4
  %176 = call i32 @DrawTriangle(i32* %168, i32 %169, i32 %170, i32 %173, i32 0, i32 %174, i32 %175)
  %177 = load i32, i32* %4, align 4
  %178 = load i32, i32* @OSD_MUTE_ICON, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %204

180:                                              ; preds = %142
  store i32 0, i32* %21, align 4
  br label %181

181:                                              ; preds = %200, %180
  %182 = load i32, i32* %21, align 4
  %183 = load i32, i32* %10, align 4
  %184 = sub nsw i32 %183, 1
  %185 = icmp sle i32 %182, %184
  br i1 %185, label %186, label %203

186:                                              ; preds = %181
  %187 = load i32*, i32** %13, align 8
  %188 = load i32, i32* @STYLE_FILLED, align 4
  %189 = load i32, i32* @COL_BLUE, align 4
  %190 = load i32, i32* %21, align 4
  %191 = load i32, i32* %21, align 4
  %192 = load i32, i32* %21, align 4
  %193 = load i32, i32* %19, align 4
  %194 = add nsw i32 %192, %193
  %195 = load i32, i32* %9, align 4
  %196 = sub nsw i32 %195, 1
  %197 = call i32 @__MIN(i32 %194, i32 %196)
  %198 = load i32, i32* %21, align 4
  %199 = call i32 @DrawRect(i32* %187, i32 %188, i32 %189, i32 %190, i32 %191, i32 %197, i32 %198)
  br label %200

200:                                              ; preds = %186
  %201 = load i32, i32* %21, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %21, align 4
  br label %181

203:                                              ; preds = %181
  br label %204

204:                                              ; preds = %203, %142
  br label %205

205:                                              ; preds = %204, %122
  br label %206

206:                                              ; preds = %205, %96
  %207 = load i32*, i32** %13, align 8
  store i32* %207, i32** %3, align 8
  br label %208

208:                                              ; preds = %206, %83, %66
  %209 = load i32*, i32** %3, align 8
  ret i32* %209
}

declare dso_local i32 @__MAX(i32, i64) #1

declare dso_local i32* @OSDRegion(i32, i32, i32, i32) #1

declare dso_local i32 @__MIN(i32, i32) #1

declare dso_local i32 @DrawRect(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DrawTriangle(i32*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

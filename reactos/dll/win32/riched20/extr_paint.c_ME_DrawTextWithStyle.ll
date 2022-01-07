; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_paint.c_ME_DrawTextWithStyle.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_paint.c_ME_DrawTextWithStyle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_23__*, i32 }
%struct.TYPE_23__ = type { i32, i64, i64, i32 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_25__ = type { i64, i64 }

@ES_NOHIDESEL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@RGN_DIFF = common dso_local global i32 0, align 4
@CFE_AUTOBACKCOLOR = common dso_local global i32 0, align 4
@CFM_BACKCOLOR = common dso_local global i32 0, align 4
@RGN_COPY = common dso_local global i32 0, align 4
@RGN_AND = common dso_local global i32 0, align 4
@DSTINVERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_27__*, %struct.TYPE_26__*, i32, i32, i32, i32, i32, i32)* @ME_DrawTextWithStyle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ME_DrawTextWithStyle(%struct.TYPE_27__* %0, %struct.TYPE_26__* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_25__, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_25__, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %9, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %66

34:                                               ; preds = %8
  %35 = load i32, i32* %14, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %66

37:                                               ; preds = %34
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %66

41:                                               ; preds = %37
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %66, label %48

48:                                               ; preds = %41
  %49 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %48
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @ES_NOHIDESEL, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br label %64

64:                                               ; preds = %55, %48
  %65 = phi i1 [ true, %48 ], [ %63, %55 ]
  br label %66

66:                                               ; preds = %64, %41, %37, %34, %8
  %67 = phi i1 [ false, %41 ], [ false, %37 ], [ false, %34 ], [ false, %8 ], [ %65, %64 ]
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %20, align 4
  %69 = load i32, i32* @FALSE, align 4
  store i32 %69, i32* %21, align 4
  store i32* null, i32** %23, align 8
  store i32* null, i32** %24, align 8
  %70 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %72, align 8
  %74 = call i32 @calc_y_offset(%struct.TYPE_27__* %70, %struct.TYPE_22__* %73)
  store i32 %74, i32* %19, align 4
  %75 = load i32, i32* %20, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %108

77:                                               ; preds = %66
  %78 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %16, align 4
  %83 = call i32 @get_selection_rect(%struct.TYPE_27__* %78, %struct.TYPE_26__* %79, i32 %80, i32 %81, i32 %82, %struct.TYPE_25__* %22)
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %15, align 4
  %86 = call i32 @OffsetRect(%struct.TYPE_25__* %22, i32 %84, i32 %85)
  %87 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %77
  %94 = load i32, i32* @TRUE, align 4
  store i32 %94, i32* %21, align 4
  %95 = load i32, i32* @FALSE, align 4
  store i32 %95, i32* %20, align 4
  br label %107

96:                                               ; preds = %77
  %97 = call i32* @CreateRectRgnIndirect(%struct.TYPE_25__* %22)
  store i32* %97, i32** %24, align 8
  %98 = call i32* @CreateRectRgn(i32 0, i32 0, i32 0, i32 0)
  store i32* %98, i32** %23, align 8
  %99 = load i32, i32* %17, align 4
  %100 = load i32*, i32** %23, align 8
  %101 = call i32 @GetClipRgn(i32 %99, i32* %100)
  %102 = icmp ne i32 %101, 1
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  %104 = load i32*, i32** %23, align 8
  %105 = call i32 @DeleteObject(i32* %104)
  store i32* null, i32** %23, align 8
  br label %106

106:                                              ; preds = %103, %96
  br label %107

107:                                              ; preds = %106, %93
  br label %108

108:                                              ; preds = %107, %66
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %110 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %111, align 8
  %113 = call i32 @ME_SelectStyleFont(%struct.TYPE_27__* %109, %struct.TYPE_22__* %112)
  store i32 %113, i32* %18, align 4
  %114 = load i32*, i32** %24, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %121

116:                                              ; preds = %108
  %117 = load i32, i32* %17, align 4
  %118 = load i32*, i32** %24, align 8
  %119 = load i32, i32* @RGN_DIFF, align 4
  %120 = call i32 @ExtSelectClipRgn(i32 %117, i32* %118, i32 %119)
  br label %121

121:                                              ; preds = %116, %108
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @CFE_AUTOBACKCOLOR, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %160, label %131

131:                                              ; preds = %121
  %132 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @CFM_BACKCOLOR, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %160

141:                                              ; preds = %131
  %142 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* %16, align 4
  %148 = call i32 @get_selection_rect(%struct.TYPE_27__* %142, %struct.TYPE_26__* %143, i32 0, i32 %146, i32 %147, %struct.TYPE_25__* %25)
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* %15, align 4
  %151 = call i32 @OffsetRect(%struct.TYPE_25__* %25, i32 %149, i32 %150)
  %152 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %153 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* %19, align 4
  %157 = sub nsw i32 %155, %156
  %158 = load i32, i32* @FALSE, align 4
  %159 = call i32 @draw_text(%struct.TYPE_27__* %152, %struct.TYPE_26__* %153, i32 %154, i32 %157, i32 %158, %struct.TYPE_25__* %25)
  br label %169

160:                                              ; preds = %131, %121
  %161 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %162 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* %19, align 4
  %166 = sub nsw i32 %164, %165
  %167 = load i32, i32* @FALSE, align 4
  %168 = call i32 @draw_text(%struct.TYPE_27__* %161, %struct.TYPE_26__* %162, i32 %163, i32 %166, i32 %167, %struct.TYPE_25__* null)
  br label %169

169:                                              ; preds = %160, %141
  %170 = load i32*, i32** %24, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %201

172:                                              ; preds = %169
  %173 = load i32, i32* %17, align 4
  %174 = load i32*, i32** %23, align 8
  %175 = load i32, i32* @RGN_COPY, align 4
  %176 = call i32 @ExtSelectClipRgn(i32 %173, i32* %174, i32 %175)
  %177 = load i32, i32* %17, align 4
  %178 = load i32*, i32** %24, align 8
  %179 = load i32, i32* @RGN_AND, align 4
  %180 = call i32 @ExtSelectClipRgn(i32 %177, i32* %178, i32 %179)
  %181 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %182 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %183 = load i32, i32* %11, align 4
  %184 = load i32, i32* %12, align 4
  %185 = load i32, i32* %19, align 4
  %186 = sub nsw i32 %184, %185
  %187 = load i32, i32* @TRUE, align 4
  %188 = call i32 @draw_text(%struct.TYPE_27__* %181, %struct.TYPE_26__* %182, i32 %183, i32 %186, i32 %187, %struct.TYPE_25__* %22)
  %189 = load i32, i32* %17, align 4
  %190 = load i32*, i32** %23, align 8
  %191 = load i32, i32* @RGN_COPY, align 4
  %192 = call i32 @ExtSelectClipRgn(i32 %189, i32* %190, i32 %191)
  %193 = load i32*, i32** %23, align 8
  %194 = icmp ne i32* %193, null
  br i1 %194, label %195, label %198

195:                                              ; preds = %172
  %196 = load i32*, i32** %23, align 8
  %197 = call i32 @DeleteObject(i32* %196)
  br label %198

198:                                              ; preds = %195, %172
  %199 = load i32*, i32** %24, align 8
  %200 = call i32 @DeleteObject(i32* %199)
  br label %201

201:                                              ; preds = %198, %169
  %202 = load i32, i32* %21, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %217

204:                                              ; preds = %201
  %205 = load i32, i32* %17, align 4
  %206 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i32, i32* %15, align 4
  %209 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = sub nsw i64 %210, %212
  %214 = load i32, i32* %16, align 4
  %215 = load i32, i32* @DSTINVERT, align 4
  %216 = call i32 @PatBlt(i32 %205, i64 %207, i32 %208, i64 %213, i32 %214, i32 %215)
  br label %217

217:                                              ; preds = %204, %201
  %218 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %219 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_22__*, %struct.TYPE_22__** %220, align 8
  %222 = load i32, i32* %18, align 4
  %223 = call i32 @ME_UnselectStyleFont(%struct.TYPE_27__* %218, %struct.TYPE_22__* %221, i32 %222)
  ret void
}

declare dso_local i32 @calc_y_offset(%struct.TYPE_27__*, %struct.TYPE_22__*) #1

declare dso_local i32 @get_selection_rect(%struct.TYPE_27__*, %struct.TYPE_26__*, i32, i32, i32, %struct.TYPE_25__*) #1

declare dso_local i32 @OffsetRect(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32* @CreateRectRgnIndirect(%struct.TYPE_25__*) #1

declare dso_local i32* @CreateRectRgn(i32, i32, i32, i32) #1

declare dso_local i32 @GetClipRgn(i32, i32*) #1

declare dso_local i32 @DeleteObject(i32*) #1

declare dso_local i32 @ME_SelectStyleFont(%struct.TYPE_27__*, %struct.TYPE_22__*) #1

declare dso_local i32 @ExtSelectClipRgn(i32, i32*, i32) #1

declare dso_local i32 @draw_text(%struct.TYPE_27__*, %struct.TYPE_26__*, i32, i32, i32, %struct.TYPE_25__*) #1

declare dso_local i32 @PatBlt(i32, i64, i32, i64, i32, i32) #1

declare dso_local i32 @ME_UnselectStyleFont(%struct.TYPE_27__*, %struct.TYPE_22__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

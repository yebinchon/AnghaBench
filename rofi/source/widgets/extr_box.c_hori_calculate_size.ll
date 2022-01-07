; ModuleID = '/home/carl/AnghaBench/rofi/source/widgets/extr_box.c_hori_calculate_size.c'
source_filename = "/home/carl/AnghaBench/rofi/source/widgets/extr_box.c_hori_calculate_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_15__ = type { i64, i64, i64, i64 }

@ROFI_ORIENTATION_HORIZONTAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Widgets to large (width) for box: %d %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*)* @hori_calculate_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hori_calculate_size(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ROFI_ORIENTATION_HORIZONTAL, align 4
  %22 = call i32 @distance_get_pixel(i32 %20, i32 %21)
  store i32 %22, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %24 = call i32 @WIDGET(%struct.TYPE_16__* %23)
  %25 = call i32 @widget_padding_get_remaining_width(i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %27 = call i32 @WIDGET(%struct.TYPE_16__* %26)
  %28 = call i32 @widget_padding_get_remaining_height(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.TYPE_17__* @g_list_first(i32 %31)
  store %struct.TYPE_17__* %32, %struct.TYPE_17__** %8, align 8
  br label %33

33:                                               ; preds = %58, %1
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %35 = icmp ne %struct.TYPE_17__* %34, null
  br i1 %35, label %36, label %61

36:                                               ; preds = %33
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %40, %struct.TYPE_15__** %9, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %36
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @FALSE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %54 = call i32 @widget_get_desired_width(%struct.TYPE_15__* %53)
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @widget_resize(%struct.TYPE_15__* %52, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %51, %45, %36
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %60 = call %struct.TYPE_17__* @g_list_next(%struct.TYPE_17__* %59)
  store %struct.TYPE_17__* %60, %struct.TYPE_17__** %8, align 8
  br label %33

61:                                               ; preds = %33
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  store i32 0, i32* %63, align 4
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.TYPE_17__* @g_list_first(i32 %66)
  store %struct.TYPE_17__* %67, %struct.TYPE_17__** %10, align 8
  br label %68

68:                                               ; preds = %108, %61
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %70 = icmp ne %struct.TYPE_17__* %69, null
  br i1 %70, label %71, label %111

71:                                               ; preds = %68
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %75, %struct.TYPE_15__** %11, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %71
  br label %108

81:                                               ; preds = %71
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @TRUE, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %4, align 4
  br label %108

92:                                               ; preds = %81
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %92
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %100
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %102, align 4
  br label %107

107:                                              ; preds = %97, %92
  br label %108

108:                                              ; preds = %107, %89, %80
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %110 = call %struct.TYPE_17__* @g_list_next(%struct.TYPE_17__* %109)
  store %struct.TYPE_17__* %110, %struct.TYPE_17__** %10, align 8
  br label %68

111:                                              ; preds = %68
  %112 = load i32, i32* %5, align 4
  %113 = sub nsw i32 %112, 1
  %114 = load i32, i32* %3, align 4
  %115 = mul nsw i32 %113, %114
  %116 = call i64 @MAX(i32 0, i32 %115)
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %120, %116
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %118, align 4
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp sgt i32 %125, %126
  br i1 %127, label %128, label %140

128:                                              ; preds = %111
  %129 = load i32, i32* %6, align 4
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 4
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @g_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %134, i32 %138)
  br label %238

140:                                              ; preds = %111
  %141 = load i32, i32* %5, align 4
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %228

143:                                              ; preds = %140
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %145 = call i32 @WIDGET(%struct.TYPE_16__* %144)
  %146 = call i32 @widget_padding_get_left(i32 %145)
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %6, align 4
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = sub nsw i32 %147, %150
  %152 = sitofp i32 %151 to double
  store double %152, double* %13, align 8
  store i32 0, i32* %14, align 4
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call %struct.TYPE_17__* @g_list_first(i32 %155)
  store %struct.TYPE_17__* %156, %struct.TYPE_17__** %15, align 8
  br label %157

157:                                              ; preds = %224, %143
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %159 = icmp ne %struct.TYPE_17__* %158, null
  br i1 %159, label %160, label %227

160:                                              ; preds = %157
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = inttoptr i64 %163 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %164, %struct.TYPE_15__** %16, align 8
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @FALSE, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %160
  br label %224

171:                                              ; preds = %160
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @TRUE, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %207

177:                                              ; preds = %171
  %178 = load double, double* %13, align 8
  %179 = load i32, i32* %4, align 4
  %180 = load i32, i32* %14, align 4
  %181 = sub nsw i32 %179, %180
  %182 = sitofp i32 %181 to double
  %183 = fdiv double %178, %182
  %184 = fptosi double %183 to i32
  store i32 %184, i32* %17, align 4
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %186 = load i32, i32* %12, align 4
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %188 = call i32 @WIDGET(%struct.TYPE_16__* %187)
  %189 = call i32 @widget_padding_get_top(i32 %188)
  %190 = call i32 @widget_move(%struct.TYPE_15__* %185, i32 %186, i32 %189)
  %191 = load i32, i32* %17, align 4
  %192 = load i32, i32* %12, align 4
  %193 = add nsw i32 %192, %191
  store i32 %193, i32* %12, align 4
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %195 = load i32, i32* %17, align 4
  %196 = load i32, i32* %7, align 4
  %197 = call i32 @widget_resize(%struct.TYPE_15__* %194, i32 %195, i32 %196)
  %198 = load i32, i32* %3, align 4
  %199 = load i32, i32* %12, align 4
  %200 = add nsw i32 %199, %198
  store i32 %200, i32* %12, align 4
  %201 = load i32, i32* %17, align 4
  %202 = sitofp i32 %201 to double
  %203 = load double, double* %13, align 8
  %204 = fsub double %203, %202
  store double %204, double* %13, align 8
  %205 = load i32, i32* %14, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %14, align 4
  br label %223

207:                                              ; preds = %171
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %209 = load i32, i32* %12, align 4
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %211 = call i32 @WIDGET(%struct.TYPE_16__* %210)
  %212 = call i32 @widget_padding_get_top(i32 %211)
  %213 = call i32 @widget_move(%struct.TYPE_15__* %208, i32 %209, i32 %212)
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %215 = call i64 @widget_get_width(%struct.TYPE_15__* %214)
  %216 = load i32, i32* %12, align 4
  %217 = sext i32 %216 to i64
  %218 = add nsw i64 %217, %215
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %12, align 4
  %220 = load i32, i32* %3, align 4
  %221 = load i32, i32* %12, align 4
  %222 = add nsw i32 %221, %220
  store i32 %222, i32* %12, align 4
  br label %223

223:                                              ; preds = %207, %177
  br label %224

224:                                              ; preds = %223, %170
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %226 = call %struct.TYPE_17__* @g_list_next(%struct.TYPE_17__* %225)
  store %struct.TYPE_17__* %226, %struct.TYPE_17__** %15, align 8
  br label %157

227:                                              ; preds = %157
  br label %228

228:                                              ; preds = %227, %140
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %230 = call i32 @WIDGET(%struct.TYPE_16__* %229)
  %231 = call i64 @widget_padding_get_padding_width(i32 %230)
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = sext i32 %234 to i64
  %236 = add nsw i64 %235, %231
  %237 = trunc i64 %236 to i32
  store i32 %237, i32* %233, align 4
  br label %238

238:                                              ; preds = %228, %128
  ret void
}

declare dso_local i32 @distance_get_pixel(i32, i32) #1

declare dso_local i32 @widget_padding_get_remaining_width(i32) #1

declare dso_local i32 @WIDGET(%struct.TYPE_16__*) #1

declare dso_local i32 @widget_padding_get_remaining_height(i32) #1

declare dso_local %struct.TYPE_17__* @g_list_first(i32) #1

declare dso_local i32 @widget_resize(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @widget_get_desired_width(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_17__* @g_list_next(%struct.TYPE_17__*) #1

declare dso_local i64 @MAX(i32, i32) #1

declare dso_local i32 @g_debug(i8*, i32, i32) #1

declare dso_local i32 @widget_padding_get_left(i32) #1

declare dso_local i32 @widget_move(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @widget_padding_get_top(i32) #1

declare dso_local i64 @widget_get_width(%struct.TYPE_15__*) #1

declare dso_local i64 @widget_padding_get_padding_width(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

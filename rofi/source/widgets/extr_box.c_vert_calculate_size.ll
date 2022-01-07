; ModuleID = '/home/carl/AnghaBench/rofi/source/widgets/extr_box.c_vert_calculate_size.c'
source_filename = "/home/carl/AnghaBench/rofi/source/widgets/extr_box.c_vert_calculate_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_15__ = type { i64, i64, i64 }

@ROFI_ORIENTATION_VERTICAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Widgets to large (height) for box: %d %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*)* @vert_calculate_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vert_calculate_size(%struct.TYPE_16__* %0) #0 {
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
  %21 = load i32, i32* @ROFI_ORIENTATION_VERTICAL, align 4
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
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %55 = call i32 @widget_get_desired_height(%struct.TYPE_15__* %54)
  %56 = call i32 @widget_resize(%struct.TYPE_15__* %52, i32 %53, i32 %55)
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
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 2
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
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %111
  %115 = load i32, i32* %5, align 4
  %116 = sub nsw i32 %115, 1
  %117 = load i32, i32* %3, align 4
  %118 = mul nsw i32 %116, %117
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, %118
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %114, %111
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp sgt i32 %126, %127
  br i1 %128, label %129, label %141

129:                                              ; preds = %123
  %130 = load i32, i32* %7, align 4
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 4
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @g_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %135, i32 %139)
  br label %239

141:                                              ; preds = %123
  %142 = load i32, i32* %5, align 4
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %229

144:                                              ; preds = %141
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %146 = call i32 @WIDGET(%struct.TYPE_16__* %145)
  %147 = call i32 @widget_padding_get_top(i32 %146)
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* %7, align 4
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = sub nsw i32 %148, %151
  %153 = sitofp i32 %152 to double
  store double %153, double* %13, align 8
  store i32 0, i32* %14, align 4
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call %struct.TYPE_17__* @g_list_first(i32 %156)
  store %struct.TYPE_17__* %157, %struct.TYPE_17__** %15, align 8
  br label %158

158:                                              ; preds = %225, %144
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %160 = icmp ne %struct.TYPE_17__* %159, null
  br i1 %160, label %161, label %228

161:                                              ; preds = %158
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = inttoptr i64 %164 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %165, %struct.TYPE_15__** %16, align 8
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @FALSE, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %161
  br label %225

172:                                              ; preds = %161
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @TRUE, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %208

178:                                              ; preds = %172
  %179 = load double, double* %13, align 8
  %180 = load i32, i32* %4, align 4
  %181 = load i32, i32* %14, align 4
  %182 = sub nsw i32 %180, %181
  %183 = sitofp i32 %182 to double
  %184 = fdiv double %179, %183
  %185 = fptosi double %184 to i32
  store i32 %185, i32* %17, align 4
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %188 = call i32 @WIDGET(%struct.TYPE_16__* %187)
  %189 = call i32 @widget_padding_get_left(i32 %188)
  %190 = load i32, i32* %12, align 4
  %191 = call i32 @widget_move(%struct.TYPE_15__* %186, i32 %189, i32 %190)
  %192 = load i32, i32* %17, align 4
  %193 = load i32, i32* %12, align 4
  %194 = add nsw i32 %193, %192
  store i32 %194, i32* %12, align 4
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %196 = load i32, i32* %6, align 4
  %197 = load i32, i32* %17, align 4
  %198 = call i32 @widget_resize(%struct.TYPE_15__* %195, i32 %196, i32 %197)
  %199 = load i32, i32* %3, align 4
  %200 = load i32, i32* %12, align 4
  %201 = add nsw i32 %200, %199
  store i32 %201, i32* %12, align 4
  %202 = load i32, i32* %17, align 4
  %203 = sitofp i32 %202 to double
  %204 = load double, double* %13, align 8
  %205 = fsub double %204, %203
  store double %205, double* %13, align 8
  %206 = load i32, i32* %14, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %14, align 4
  br label %224

208:                                              ; preds = %172
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %211 = call i32 @WIDGET(%struct.TYPE_16__* %210)
  %212 = call i32 @widget_padding_get_left(i32 %211)
  %213 = load i32, i32* %12, align 4
  %214 = call i32 @widget_move(%struct.TYPE_15__* %209, i32 %212, i32 %213)
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %216 = call i64 @widget_get_height(%struct.TYPE_15__* %215)
  %217 = load i32, i32* %12, align 4
  %218 = sext i32 %217 to i64
  %219 = add nsw i64 %218, %216
  %220 = trunc i64 %219 to i32
  store i32 %220, i32* %12, align 4
  %221 = load i32, i32* %3, align 4
  %222 = load i32, i32* %12, align 4
  %223 = add nsw i32 %222, %221
  store i32 %223, i32* %12, align 4
  br label %224

224:                                              ; preds = %208, %178
  br label %225

225:                                              ; preds = %224, %171
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %227 = call %struct.TYPE_17__* @g_list_next(%struct.TYPE_17__* %226)
  store %struct.TYPE_17__* %227, %struct.TYPE_17__** %15, align 8
  br label %158

228:                                              ; preds = %158
  br label %229

229:                                              ; preds = %228, %141
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %231 = call i32 @WIDGET(%struct.TYPE_16__* %230)
  %232 = call i64 @widget_padding_get_padding_height(i32 %231)
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = sext i32 %235 to i64
  %237 = add nsw i64 %236, %232
  %238 = trunc i64 %237 to i32
  store i32 %238, i32* %234, align 4
  br label %239

239:                                              ; preds = %229, %129
  ret void
}

declare dso_local i32 @distance_get_pixel(i32, i32) #1

declare dso_local i32 @widget_padding_get_remaining_width(i32) #1

declare dso_local i32 @WIDGET(%struct.TYPE_16__*) #1

declare dso_local i32 @widget_padding_get_remaining_height(i32) #1

declare dso_local %struct.TYPE_17__* @g_list_first(i32) #1

declare dso_local i32 @widget_resize(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @widget_get_desired_height(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_17__* @g_list_next(%struct.TYPE_17__*) #1

declare dso_local i32 @g_debug(i8*, i32, i32) #1

declare dso_local i32 @widget_padding_get_top(i32) #1

declare dso_local i32 @widget_move(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @widget_padding_get_left(i32) #1

declare dso_local i64 @widget_get_height(%struct.TYPE_15__*) #1

declare dso_local i64 @widget_padding_get_padding_height(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

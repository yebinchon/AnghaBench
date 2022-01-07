; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_caret.c_ME_SetSelection.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_caret.c_ME_SetSelection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i64 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MERF_ENDPARA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ME_SetSelection(%struct.TYPE_21__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %14 = call i32 @ME_GetTextLength(%struct.TYPE_21__* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 -1, i32* %6, align 4
  br label %18

18:                                               ; preds = %17, %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 -1, i32* %7, align 4
  br label %22

22:                                               ; preds = %21, %18
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %46

28:                                               ; preds = %25
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i64 1
  %34 = call i32 @ME_SetCursorToStart(%struct.TYPE_21__* %29, %struct.TYPE_22__* %33)
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i64 0
  %40 = load i32, i32* @TRUE, align 4
  %41 = call i32 @ME_SetCursorToEnd(%struct.TYPE_21__* %35, %struct.TYPE_22__* %39, i32 %40)
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %43 = call i32 @ME_InvalidateSelection(%struct.TYPE_21__* %42)
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %236

46:                                               ; preds = %25, %22
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53, %50
  store i32 1, i32* %8, align 4
  br label %122

58:                                               ; preds = %53, %46
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %94

61:                                               ; preds = %58
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %63 = call i32 @ME_GetSelectionOfs(%struct.TYPE_21__* %62, i32* %10, i32* %11)
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %92

67:                                               ; preds = %61
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %67
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %71, %67
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i64 1
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i64 0
  %88 = bitcast %struct.TYPE_22__* %83 to i8*
  %89 = bitcast %struct.TYPE_22__* %87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %88, i8* align 8 %89, i64 16, i1 false)
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %91 = call i32 @ME_Repaint(%struct.TYPE_21__* %90)
  br label %92

92:                                               ; preds = %79, %61
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %4, align 4
  br label %236

94:                                               ; preds = %58
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %97, %94
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %7, align 4
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %12, align 4
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %104, %100
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  store i32 1, i32* %8, align 4
  br label %121

113:                                              ; preds = %108
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp sgt i32 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %7, align 4
  br label %120

120:                                              ; preds = %117, %113
  br label %121

121:                                              ; preds = %120, %112
  br label %122

122:                                              ; preds = %121, %57
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %146

125:                                              ; preds = %122
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i64 0
  %131 = load i32, i32* @FALSE, align 4
  %132 = call i32 @ME_SetCursorToEnd(%struct.TYPE_21__* %126, %struct.TYPE_22__* %130, i32 %131)
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i64 1
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i64 0
  %141 = bitcast %struct.TYPE_22__* %136 to i8*
  %142 = bitcast %struct.TYPE_22__* %140 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %141, i8* align 8 %142, i64 16, i1 false)
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %144 = call i32 @ME_InvalidateSelection(%struct.TYPE_21__* %143)
  %145 = load i32, i32* %9, align 4
  store i32 %145, i32* %4, align 4
  br label %236

146:                                              ; preds = %122
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %148 = load i32, i32* %6, align 4
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i64 1
  %153 = call i32 @ME_CursorFromCharOfs(%struct.TYPE_21__* %147, i32 %148, %struct.TYPE_22__* %152)
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i64 0
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i64 1
  %162 = bitcast %struct.TYPE_22__* %157 to i8*
  %163 = bitcast %struct.TYPE_22__* %161 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %162, i8* align 8 %163, i64 16, i1 false)
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i64 0
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* %6, align 4
  %171 = sub nsw i32 %169, %170
  %172 = load i32, i32* @FALSE, align 4
  %173 = call i32 @ME_MoveCursorChars(%struct.TYPE_21__* %164, %struct.TYPE_22__* %168, i32 %171, i32 %172)
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i64 1
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @MERF_ENDPARA, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %146
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %190, i64 1
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %191, i32 0, i32 0
  store i64 0, i64* %192, align 8
  br label %193

193:                                              ; preds = %187, %146
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %196, i64 0
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @MERF_ENDPARA, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %234

207:                                              ; preds = %193
  %208 = load i32, i32* %7, align 4
  %209 = load i32, i32* %9, align 4
  %210 = icmp sgt i32 %208, %209
  br i1 %210, label %211, label %227

211:                                              ; preds = %207
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_22__*, %struct.TYPE_22__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %214, i64 0
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 1
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_22__*, %struct.TYPE_22__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %224, i64 0
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %225, i32 0, i32 0
  store i64 %221, i64* %226, align 8
  br label %233

227:                                              ; preds = %207
  %228 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %228, i32 0, i32 0
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %230, i64 0
  %232 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %231, i32 0, i32 0
  store i64 0, i64* %232, align 8
  br label %233

233:                                              ; preds = %227, %211
  br label %234

234:                                              ; preds = %233, %193
  %235 = load i32, i32* %7, align 4
  store i32 %235, i32* %4, align 4
  br label %236

236:                                              ; preds = %234, %125, %92, %28
  %237 = load i32, i32* %4, align 4
  ret i32 %237
}

declare dso_local i32 @ME_GetTextLength(%struct.TYPE_21__*) #1

declare dso_local i32 @ME_SetCursorToStart(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @ME_SetCursorToEnd(%struct.TYPE_21__*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @ME_InvalidateSelection(%struct.TYPE_21__*) #1

declare dso_local i32 @ME_GetSelectionOfs(%struct.TYPE_21__*, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ME_Repaint(%struct.TYPE_21__*) #1

declare dso_local i32 @ME_CursorFromCharOfs(%struct.TYPE_21__*, i32, %struct.TYPE_22__*) #1

declare dso_local i32 @ME_MoveCursorChars(%struct.TYPE_21__*, %struct.TYPE_22__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

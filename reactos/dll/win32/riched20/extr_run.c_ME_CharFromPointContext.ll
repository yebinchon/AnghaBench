; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_run.c_ME_CharFromPointContext.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_run.c_ME_CharFromPointContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_24__ = type { i32, i32, i32, i32, %struct.TYPE_26__, i32, i32, i32, i32, %struct.TYPE_20__* }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_23__ = type { i32* }
%struct.TYPE_22__ = type { i32 }

@MERF_TAB = common dso_local global i32 0, align 4
@MERF_ENDCELL = common dso_local global i32 0, align 4
@MERF_GRAPHICS = common dso_local global i32 0, align 4
@MEPF_COMPLEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"x %d cp %d trailing %d (run width %d) rtl %d log order %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ME_CharFromPointContext(%struct.TYPE_25__* %0, i32 %1, %struct.TYPE_24__* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_22__, align 4
  %17 = alloca %struct.TYPE_22__, align 4
  %18 = alloca %struct.TYPE_22__, align 4
  %19 = alloca %struct.TYPE_22__, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %12, align 8
  store i32 0, i32* %14, align 4
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load i32, i32* %8, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %5
  store i32 0, i32* %6, align 4
  br label %224

30:                                               ; preds = %26
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MERF_TAB, align 4
  %35 = load i32, i32* @MERF_ENDCELL, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %33, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %30
  %40 = load i64, i64* %10, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = sdiv i32 %46, 2
  %48 = icmp slt i32 %43, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %42, %39
  store i32 0, i32* %6, align 4
  br label %224

50:                                               ; preds = %42
  store i32 1, i32* %6, align 4
  br label %224

51:                                               ; preds = %30
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @MERF_GRAPHICS, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %51
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %61 = call i32 @ME_GetOLEObjectSize(%struct.TYPE_25__* %59, %struct.TYPE_24__* %60, %struct.TYPE_22__* %19)
  %62 = load i64, i64* %10, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load i32, i32* %8, align 4
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sdiv i32 %67, 2
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64, %58
  store i32 0, i32* %6, align 4
  br label %224

71:                                               ; preds = %64
  store i32 1, i32* %6, align 4
  br label %224

72:                                               ; preds = %51
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 9
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @MEPF_COMPLEX, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %142

81:                                               ; preds = %72
  %82 = load i64, i64* %11, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %81
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %84
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sub nsw i32 %93, %94
  %96 = sub nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %90, %84, %81
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 8
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i32 0, i32 4
  %116 = call i32 @ScriptXtoCP(i32 %98, i32 %101, i32 %104, i32 %107, i32 %110, i32 %113, %struct.TYPE_26__* %115, i32* %20, i32* %21)
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %20, align 4
  %119 = load i32, i32* %21, align 4
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @TRACE(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %117, i32 %118, i32 %119, i32 %122, i32 %126, i32 %130)
  %132 = load i64, i64* %10, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %97
  %135 = load i32, i32* %20, align 4
  %136 = load i32, i32* %21, align 4
  %137 = add nsw i32 %135, %136
  br label %140

138:                                              ; preds = %97
  %139 = load i32, i32* %20, align 4
  br label %140

140:                                              ; preds = %138, %134
  %141 = phi i32 [ %137, %134 ], [ %139, %138 ]
  store i32 %141, i32* %6, align 4
  br label %224

142:                                              ; preds = %72
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %162

149:                                              ; preds = %142
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call %struct.TYPE_23__* @ME_MakeStringR(i64 %154, i32 %157)
  store %struct.TYPE_23__* %158, %struct.TYPE_23__** %12, align 8
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  store i32* %161, i32** %13, align 8
  br label %165

162:                                              ; preds = %142
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %164 = call i32* @get_text(%struct.TYPE_24__* %163, i32 0)
  store i32* %164, i32** %13, align 8
  br label %165

165:                                              ; preds = %162, %149
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %167 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @ME_SelectStyleFont(%struct.TYPE_25__* %166, i32 %169)
  store i32 %170, i32* %15, align 4
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32*, i32** %13, align 8
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* %8, align 4
  %179 = call i32 @GetTextExtentExPointW(i32 %173, i32* %174, i32 %177, i32 %178, i32* %14, i32* null, %struct.TYPE_22__* %16)
  %180 = load i64, i64* %10, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %214

182:                                              ; preds = %165
  %183 = load i32, i32* %14, align 4
  %184 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp ne i32 %183, %186
  br i1 %187, label %188, label %214

188:                                              ; preds = %182
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32*, i32** %13, align 8
  %193 = load i32, i32* %14, align 4
  %194 = call i32 @GetTextExtentPoint32W(i32 %191, i32* %192, i32 %193, %struct.TYPE_22__* %17)
  %195 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32*, i32** %13, align 8
  %199 = load i32, i32* %14, align 4
  %200 = add nsw i32 %199, 1
  %201 = call i32 @GetTextExtentPoint32W(i32 %197, i32* %198, i32 %200, %struct.TYPE_22__* %18)
  %202 = load i32, i32* %8, align 4
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %204, %206
  %208 = sdiv i32 %207, 2
  %209 = icmp sge i32 %202, %208
  br i1 %209, label %210, label %213

210:                                              ; preds = %188
  %211 = load i32, i32* %14, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %14, align 4
  br label %213

213:                                              ; preds = %210, %188
  br label %214

214:                                              ; preds = %213, %182, %165
  %215 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %216 = call i32 @ME_DestroyString(%struct.TYPE_23__* %215)
  %217 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %218 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* %15, align 4
  %222 = call i32 @ME_UnselectStyleFont(%struct.TYPE_25__* %217, i32 %220, i32 %221)
  %223 = load i32, i32* %14, align 4
  store i32 %223, i32* %6, align 4
  br label %224

224:                                              ; preds = %214, %140, %71, %70, %50, %49, %29
  %225 = load i32, i32* %6, align 4
  ret i32 %225
}

declare dso_local i32 @ME_GetOLEObjectSize(%struct.TYPE_25__*, %struct.TYPE_24__*, %struct.TYPE_22__*) #1

declare dso_local i32 @ScriptXtoCP(i32, i32, i32, i32, i32, i32, %struct.TYPE_26__*, i32*, i32*) #1

declare dso_local i32 @TRACE(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_23__* @ME_MakeStringR(i64, i32) #1

declare dso_local i32* @get_text(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @ME_SelectStyleFont(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @GetTextExtentExPointW(i32, i32*, i32, i32, i32*, i32*, %struct.TYPE_22__*) #1

declare dso_local i32 @GetTextExtentPoint32W(i32, i32*, i32, %struct.TYPE_22__*) #1

declare dso_local i32 @ME_DestroyString(%struct.TYPE_23__*) #1

declare dso_local i32 @ME_UnselectStyleFont(%struct.TYPE_25__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

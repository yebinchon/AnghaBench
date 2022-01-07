; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_run.c_ME_SetCharFormat.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_run.c_ME_SetCharFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_21__*, i64, %struct.TYPE_22__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_20__, i64 }
%struct.TYPE_20__ = type { %struct.TYPE_21__* }

@diRun = common dso_local global i32 0, align 4
@MERF_ENDPARA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ME_SetCharFormat(i32* %0, %struct.TYPE_24__* %1, %struct.TYPE_24__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca %struct.TYPE_22__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %6, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  store %struct.TYPE_23__* %18, %struct.TYPE_23__** %10, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %11, align 8
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %20 = icmp ne %struct.TYPE_24__* %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %4
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  %28 = icmp eq %struct.TYPE_23__* %24, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %21
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %217

38:                                               ; preds = %29, %21, %4
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %41, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %38
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %52, align 8
  %54 = load i32, i32* @diRun, align 4
  %55 = call %struct.TYPE_23__* @ME_FindItemFwd(%struct.TYPE_23__* %53, i32 %54)
  store %struct.TYPE_23__* %55, %struct.TYPE_23__** %10, align 8
  br label %92

56:                                               ; preds = %38
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %91

61:                                               ; preds = %56
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %12, align 4
  %65 = load i32*, i32** %5, align 8
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %67 = call %struct.TYPE_23__* @ME_SplitRunSimple(i32* %65, %struct.TYPE_24__* %66)
  store %struct.TYPE_23__* %67, %struct.TYPE_23__** %13, align 8
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %69, align 8
  store %struct.TYPE_23__* %70, %struct.TYPE_23__** %10, align 8
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %72 = icmp ne %struct.TYPE_24__* %71, null
  br i1 %72, label %73, label %90

73:                                               ; preds = %61
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %75, align 8
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %78 = icmp eq %struct.TYPE_23__* %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %73
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %81, align 8
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 1
  store %struct.TYPE_23__* %82, %struct.TYPE_23__** %84, align 8
  %85 = load i32, i32* %12, align 4
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sub nsw i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %79, %73, %61
  br label %91

91:                                               ; preds = %90, %56
  br label %92

92:                                               ; preds = %91, %50
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %94 = icmp ne %struct.TYPE_24__* %93, null
  br i1 %94, label %95, label %127

95:                                               ; preds = %92
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %98, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %95
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %109, align 8
  %111 = load i32, i32* @diRun, align 4
  %112 = call %struct.TYPE_23__* @ME_FindItemFwd(%struct.TYPE_23__* %110, i32 %111)
  store %struct.TYPE_23__* %112, %struct.TYPE_23__** %11, align 8
  br label %126

113:                                              ; preds = %95
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = load i32*, i32** %5, align 8
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %121 = call %struct.TYPE_23__* @ME_SplitRunSimple(i32* %119, %struct.TYPE_24__* %120)
  br label %122

122:                                              ; preds = %118, %113
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %124, align 8
  store %struct.TYPE_23__* %125, %struct.TYPE_23__** %11, align 8
  br label %126

126:                                              ; preds = %122, %107
  br label %127

127:                                              ; preds = %126, %92
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  store %struct.TYPE_23__* %128, %struct.TYPE_23__** %9, align 8
  br label %129

129:                                              ; preds = %213, %127
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %132 = icmp ne %struct.TYPE_23__* %130, %131
  br i1 %132, label %133, label %217

133:                                              ; preds = %129
  %134 = load i32*, i32** %5, align 8
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %138, align 8
  %140 = load i32*, i32** %8, align 8
  %141 = call %struct.TYPE_21__* @ME_ApplyStyle(i32* %134, %struct.TYPE_21__* %139, i32* %140)
  store %struct.TYPE_21__* %141, %struct.TYPE_21__** %14, align 8
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 4
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %145, align 8
  store %struct.TYPE_22__* %146, %struct.TYPE_22__** %15, align 8
  %147 = load i32*, i32** %5, align 8
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 4
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %154, %159
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = sext i32 %165 to i64
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 2
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 0
  %173 = call i32 @add_undo_set_char_fmt(i32* %147, i64 %160, i64 %166, i32* %172)
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 2
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %177, align 8
  %179 = call i32 @ME_ReleaseStyle(%struct.TYPE_21__* %178)
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 2
  store %struct.TYPE_21__* %180, %struct.TYPE_21__** %184, align 8
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @MERF_ENDPARA, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %208

193:                                              ; preds = %133
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %196, align 8
  %198 = icmp ne %struct.TYPE_21__* %197, null
  br i1 %198, label %199, label %208

199:                                              ; preds = %193
  %200 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %201 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %202, align 8
  %204 = call i32 @ME_ReleaseStyle(%struct.TYPE_21__* %203)
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %206, i32 0, i32 0
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %207, align 8
  br label %208

208:                                              ; preds = %199, %193, %133
  %209 = load i32*, i32** %5, align 8
  %210 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %211 = call i32 @get_di_from_para(%struct.TYPE_22__* %210)
  %212 = call i32 @mark_para_rewrap(i32* %209, i32 %211)
  br label %213

213:                                              ; preds = %208
  %214 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %215 = load i32, i32* @diRun, align 4
  %216 = call %struct.TYPE_23__* @ME_FindItemFwd(%struct.TYPE_23__* %214, i32 %215)
  store %struct.TYPE_23__* %216, %struct.TYPE_23__** %9, align 8
  br label %129

217:                                              ; preds = %37, %129
  ret void
}

declare dso_local %struct.TYPE_23__* @ME_FindItemFwd(%struct.TYPE_23__*, i32) #1

declare dso_local %struct.TYPE_23__* @ME_SplitRunSimple(i32*, %struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_21__* @ME_ApplyStyle(i32*, %struct.TYPE_21__*, i32*) #1

declare dso_local i32 @add_undo_set_char_fmt(i32*, i64, i64, i32*) #1

declare dso_local i32 @ME_ReleaseStyle(%struct.TYPE_21__*) #1

declare dso_local i32 @mark_para_rewrap(i32*, i32) #1

declare dso_local i32 @get_di_from_para(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

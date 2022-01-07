; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_paint.c_draw_text.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_paint.c_draw_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_24__*, %struct.TYPE_20__* }
%struct.TYPE_24__ = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i32* }

@CFM_BACKCOLOR = common dso_local global i32 0, align 4
@CFE_AUTOBACKCOLOR = common dso_local global i32 0, align 4
@MEPF_COMPLEX = common dso_local global i32 0, align 4
@ETO_OPAQUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, %struct.TYPE_22__*, i32, i32, i32, i32*)* @draw_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_text(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_21__*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %7, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 6
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @get_text_color(%struct.TYPE_23__* %20, %struct.TYPE_24__* %23, i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 6
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @get_back_color(%struct.TYPE_23__* %26, %struct.TYPE_24__* %29, i32 %30)
  store i32 %31, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %33 = call i32* @get_text(%struct.TYPE_22__* %32, i32 0)
  store i32* %33, i32** %17, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %18, align 8
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %59, label %36

36:                                               ; preds = %6
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 6
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @CFM_BACKCOLOR, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %36
  %47 = load i32, i32* @CFE_AUTOBACKCOLOR, align 4
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 6
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %47, %53
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %46, %36
  %58 = phi i1 [ false, %36 ], [ %56, %46 ]
  br label %59

59:                                               ; preds = %57, %6
  %60 = phi i1 [ true, %6 ], [ %58, %57 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %19, align 4
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %59
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call %struct.TYPE_21__* @ME_MakeStringR(i64 %73, i32 %76)
  store %struct.TYPE_21__* %77, %struct.TYPE_21__** %18, align 8
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  store i32* %80, i32** %17, align 8
  br label %81

81:                                               ; preds = %68, %59
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @SetTextColor(i32 %84, i32 %85)
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %19, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %81
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %14, align 4
  %94 = call i32 @SetBkColor(i32 %92, i32 %93)
  store i32 %94, i32* %16, align 4
  br label %95

95:                                               ; preds = %89, %81
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 7
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @MEPF_COMPLEX, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %137

104:                                              ; preds = %95
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 6
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 0
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %19, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %104
  %117 = load i32, i32* @ETO_OPAQUE, align 4
  br label %119

118:                                              ; preds = %104
  br label %119

119:                                              ; preds = %118, %116
  %120 = phi i32 [ %117, %116 ], [ 0, %118 ]
  %121 = load i32*, i32** %12, align 8
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 5
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @ScriptTextOut(i32 %107, i32* %111, i32 %112, i32 %113, i32 %120, i32* %121, i32* %123, i32* null, i32 0, i32 %126, i32 %129, i32 %132, i32* null, i32 %135)
  br label %156

137:                                              ; preds = %95
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %19, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %137
  %146 = load i32, i32* @ETO_OPAQUE, align 4
  br label %148

147:                                              ; preds = %137
  br label %148

148:                                              ; preds = %147, %145
  %149 = phi i32 [ %146, %145 ], [ 0, %147 ]
  %150 = load i32*, i32** %12, align 8
  %151 = load i32*, i32** %17, align 8
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @ExtTextOutW(i32 %140, i32 %141, i32 %142, i32 %149, i32* %150, i32* %151, i32 %154, i32* null)
  br label %156

156:                                              ; preds = %148, %119
  %157 = load i32, i32* %19, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %156
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %16, align 4
  %164 = call i32 @SetBkColor(i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %159, %156
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %15, align 4
  %170 = call i32 @SetTextColor(i32 %168, i32 %169)
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* %13, align 4
  %176 = call i32 @draw_underline(%struct.TYPE_23__* %171, %struct.TYPE_22__* %172, i32 %173, i32 %174, i32 %175)
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %178 = call i32 @ME_DestroyString(%struct.TYPE_21__* %177)
  ret void
}

declare dso_local i32 @get_text_color(%struct.TYPE_23__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @get_back_color(%struct.TYPE_23__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32* @get_text(%struct.TYPE_22__*, i32) #1

declare dso_local %struct.TYPE_21__* @ME_MakeStringR(i64, i32) #1

declare dso_local i32 @SetTextColor(i32, i32) #1

declare dso_local i32 @SetBkColor(i32, i32) #1

declare dso_local i32 @ScriptTextOut(i32, i32*, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ExtTextOutW(i32, i32, i32, i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @draw_underline(%struct.TYPE_23__*, %struct.TYPE_22__*, i32, i32, i32) #1

declare dso_local i32 @ME_DestroyString(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

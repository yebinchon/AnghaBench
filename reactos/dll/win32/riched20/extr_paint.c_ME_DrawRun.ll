; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_paint.c_ME_DrawRun.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_paint.c_ME_DrawRun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_28__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__, %struct.TYPE_26__ }
%struct.TYPE_24__ = type { i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64 }

@MERF_HIDDEN = common dso_local global i32 0, align 4
@diStartRow = common dso_local global i32 0, align 4
@MERF_ENDPARA = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MERF_TAB = common dso_local global i32 0, align 4
@MERF_ENDCELL = common dso_local global i32 0, align 4
@MERF_GRAPHICS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_29__*, i32, i32, %struct.TYPE_28__*, %struct.TYPE_27__*)* @ME_DrawRun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ME_DrawRun(%struct.TYPE_29__* %0, i32 %1, i32 %2, %struct.TYPE_28__* %3, %struct.TYPE_27__* %4) #0 {
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca %struct.TYPE_28__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_28__* %3, %struct.TYPE_28__** %9, align 8
  store %struct.TYPE_27__* %4, %struct.TYPE_27__** %10, align 8
  %17 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 1
  store %struct.TYPE_26__* %19, %struct.TYPE_26__** %11, align 8
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %22, %25
  store i32 %26, i32* %13, align 4
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MERF_HIDDEN, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %5
  br label %190

34:                                               ; preds = %5
  %35 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %36 = load i32, i32* @diStartRow, align 4
  %37 = call %struct.TYPE_28__* @ME_FindItemBack(%struct.TYPE_28__* %35, i32 %36)
  store %struct.TYPE_28__* %37, %struct.TYPE_28__** %12, align 8
  %38 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ME_GetSelectionOfs(i32 %40, i32* %14, i32* %15)
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MERF_ENDPARA, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %86

48:                                               ; preds = %34
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %85

52:                                               ; preds = %48
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %85

56:                                               ; preds = %52
  %57 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @TRUE, align 4
  %62 = load i32, i32* @FALSE, align 4
  %63 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %66, %70
  %72 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %71, %77
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @draw_space(%struct.TYPE_29__* %57, %struct.TYPE_26__* %58, i32 %59, i32 %60, i32 %61, i32 %62, i64 %78, i32 %83)
  br label %85

85:                                               ; preds = %56, %52, %48
  br label %190

86:                                               ; preds = %34
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @MERF_TAB, align 4
  %91 = load i32, i32* @MERF_ENDCELL, align 4
  %92 = or i32 %90, %91
  %93 = and i32 %89, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %134

95:                                               ; preds = %86
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %14, align 4
  %98 = icmp sge i32 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %15, align 4
  %102 = icmp slt i32 %100, %101
  br label %103

103:                                              ; preds = %99, %95
  %104 = phi i1 [ false, %95 ], [ %102, %99 ]
  %105 = zext i1 %104 to i32
  store i32 %105, i32* %16, align 4
  %106 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* @TRUE, align 4
  %112 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %115, %119
  %121 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %120, %126
  %128 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @draw_space(%struct.TYPE_29__* %106, %struct.TYPE_26__* %107, i32 %108, i32 %109, i32 %110, i32 %111, i64 %127, i32 %132)
  br label %190

134:                                              ; preds = %86
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @MERF_GRAPHICS, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %157

141:                                              ; preds = %134
  %142 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* %8, align 4
  %145 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %146 = load i32, i32* %13, align 4
  %147 = load i32, i32* %14, align 4
  %148 = icmp sge i32 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %141
  %150 = load i32, i32* %13, align 4
  %151 = load i32, i32* %15, align 4
  %152 = icmp slt i32 %150, %151
  br label %153

153:                                              ; preds = %149, %141
  %154 = phi i1 [ false, %141 ], [ %152, %149 ]
  %155 = zext i1 %154 to i32
  %156 = call i32 @ME_DrawOLE(%struct.TYPE_29__* %142, i32 %143, i32 %144, %struct.TYPE_26__* %145, i32 %155)
  br label %190

157:                                              ; preds = %134
  %158 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %159 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* %14, align 4
  %163 = load i32, i32* %13, align 4
  %164 = sub nsw i32 %162, %163
  %165 = load i32, i32* %15, align 4
  %166 = load i32, i32* %13, align 4
  %167 = sub nsw i32 %165, %166
  %168 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = add nsw i64 %171, %175
  %177 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = add nsw i64 %176, %182
  %184 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %185 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @ME_DrawTextWithStyle(%struct.TYPE_29__* %158, %struct.TYPE_26__* %159, i32 %160, i32 %161, i32 %164, i32 %167, i64 %183, i32 %188)
  br label %190

190:                                              ; preds = %33, %85, %103, %157, %153
  ret void
}

declare dso_local %struct.TYPE_28__* @ME_FindItemBack(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @ME_GetSelectionOfs(i32, i32*, i32*) #1

declare dso_local i32 @draw_space(%struct.TYPE_29__*, %struct.TYPE_26__*, i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @ME_DrawOLE(%struct.TYPE_29__*, i32, i32, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @ME_DrawTextWithStyle(%struct.TYPE_29__*, %struct.TYPE_26__*, i32, i32, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

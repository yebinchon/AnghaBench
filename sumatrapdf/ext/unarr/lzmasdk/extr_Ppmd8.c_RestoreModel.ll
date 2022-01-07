; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/lzmasdk/extr_Ppmd8.c_RestoreModel.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/lzmasdk/extr_Ppmd8.c_RestoreModel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, i32*, i32, i32, i32, i64, %struct.TYPE_23__*, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, i32, i32, i64 }
%struct.TYPE_24__ = type { i32, i32 }

@PPMD8_RESTORE_METHOD_RESTART = common dso_local global i64 0, align 8
@PPMD8_RESTORE_METHOD_FREEZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*, %struct.TYPE_23__*)* @RestoreModel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RestoreModel(%struct.TYPE_25__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %4, align 8
  %7 = call i32 @RESET_TEXT(i32 0)
  %8 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 6
  %10 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  store %struct.TYPE_23__* %10, %struct.TYPE_23__** %5, align 8
  br label %11

11:                                               ; preds = %65, %2
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %14 = icmp ne %struct.TYPE_23__* %12, %13
  br i1 %14, label %15, label %69

15:                                               ; preds = %11
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* %17, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %54

21:                                               ; preds = %15
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %23 = call %struct.TYPE_24__* @STATS(%struct.TYPE_23__* %22)
  store %struct.TYPE_24__* %23, %struct.TYPE_24__** %6, align 8
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, 16
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sge i32 %30, 64
  %32 = zext i1 %31 to i32
  %33 = mul nsw i32 8, %32
  %34 = add nsw i32 %27, %33
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %38 = call %struct.TYPE_24__* @ONE_STATE(%struct.TYPE_23__* %37)
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %40 = bitcast %struct.TYPE_24__* %38 to i8*
  %41 = bitcast %struct.TYPE_24__* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 8, i1 false)
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %44 = call i32 @SpecialFreeUnit(%struct.TYPE_25__* %42, %struct.TYPE_24__* %43)
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %46 = call %struct.TYPE_24__* @ONE_STATE(%struct.TYPE_23__* %45)
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 11
  %50 = ashr i32 %49, 3
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %52 = call %struct.TYPE_24__* @ONE_STATE(%struct.TYPE_23__* %51)
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  br label %64

54:                                               ; preds = %15
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 3
  %61 = ashr i64 %60, 1
  %62 = trunc i64 %61 to i32
  %63 = call i32 @Refresh(%struct.TYPE_25__* %55, %struct.TYPE_23__* %56, i32 %62, i32 0)
  br label %64

64:                                               ; preds = %54, %21
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %67 = call i8* @SUFFIX(%struct.TYPE_23__* %66)
  %68 = bitcast i8* %67 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %68, %struct.TYPE_23__** %5, align 8
  br label %11

69:                                               ; preds = %11
  br label %70

70:                                               ; preds = %116, %69
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 7
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %73, align 8
  %75 = icmp ne %struct.TYPE_23__* %71, %74
  br i1 %75, label %76, label %120

76:                                               ; preds = %70
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %76
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %83 = call %struct.TYPE_24__* @ONE_STATE(%struct.TYPE_23__* %82)
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = ashr i32 %85, 1
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %88 = call %struct.TYPE_24__* @ONE_STATE(%struct.TYPE_23__* %87)
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %90, %86
  store i32 %91, i32* %89, align 4
  br label %115

92:                                               ; preds = %76
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 4
  store i32 %96, i32* %94, align 4
  %97 = sext i32 %96 to i64
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = mul nsw i64 4, %100
  %102 = add nsw i64 128, %101
  %103 = icmp sgt i64 %97, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %92
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, 2
  %111 = ashr i64 %110, 1
  %112 = trunc i64 %111 to i32
  %113 = call i32 @Refresh(%struct.TYPE_25__* %105, %struct.TYPE_23__* %106, i32 %112, i32 1)
  br label %114

114:                                              ; preds = %104, %92
  br label %115

115:                                              ; preds = %114, %81
  br label %116

116:                                              ; preds = %115
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %118 = call i8* @SUFFIX(%struct.TYPE_23__* %117)
  %119 = bitcast i8* %118 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %119, %struct.TYPE_23__** %5, align 8
  br label %70

120:                                              ; preds = %70
  %121 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @PPMD8_RESTORE_METHOD_RESTART, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %134, label %126

126:                                              ; preds = %120
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %128 = call i32 @GetUsedMemory(%struct.TYPE_25__* %127)
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = ashr i32 %131, 1
  %133 = icmp slt i32 %128, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %126, %120
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %136 = call i32 @RestartModel(%struct.TYPE_25__* %135)
  br label %179

137:                                              ; preds = %126
  br label %138

138:                                              ; preds = %145, %137
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %139, i32 0, i32 6
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %138
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 6
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %147, align 8
  %149 = call i8* @SUFFIX(%struct.TYPE_23__* %148)
  %150 = bitcast i8* %149 to %struct.TYPE_23__*
  %151 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %151, i32 0, i32 6
  store %struct.TYPE_23__* %150, %struct.TYPE_23__** %152, align 8
  br label %138

153:                                              ; preds = %138
  br label %154

154:                                              ; preds = %162, %153
  %155 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 6
  %158 = load %struct.TYPE_23__*, %struct.TYPE_23__** %157, align 8
  %159 = call i32 @CutOff(%struct.TYPE_25__* %155, %struct.TYPE_23__* %158, i32 0)
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %161 = call i32 @ExpandTextArea(%struct.TYPE_25__* %160)
  br label %162

162:                                              ; preds = %154
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %164 = call i32 @GetUsedMemory(%struct.TYPE_25__* %163)
  %165 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = ashr i32 %167, 2
  %169 = mul nsw i32 3, %168
  %170 = icmp sgt i32 %164, %169
  br i1 %170, label %154, label %171

171:                                              ; preds = %162
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %172, i32 0, i32 5
  store i64 0, i64* %173, align 8
  %174 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %177, i32 0, i32 4
  store i32 %176, i32* %178, align 8
  br label %179

179:                                              ; preds = %171, %134
  ret void
}

declare dso_local i32 @RESET_TEXT(i32) #1

declare dso_local %struct.TYPE_24__* @STATS(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_24__* @ONE_STATE(%struct.TYPE_23__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SpecialFreeUnit(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local i32 @Refresh(%struct.TYPE_25__*, %struct.TYPE_23__*, i32, i32) #1

declare dso_local i8* @SUFFIX(%struct.TYPE_23__*) #1

declare dso_local i32 @GetUsedMemory(%struct.TYPE_25__*) #1

declare dso_local i32 @RestartModel(%struct.TYPE_25__*) #1

declare dso_local i32 @CutOff(%struct.TYPE_25__*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @ExpandTextArea(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

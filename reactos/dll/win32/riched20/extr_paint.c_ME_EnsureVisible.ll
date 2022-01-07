; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_paint.c_ME_EnsureVisible.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_paint.c_ME_EnsureVisible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, %struct.TYPE_24__, %struct.TYPE_38__, %struct.TYPE_37__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_37__ = type { i32, i32 }
%struct.TYPE_28__ = type { i32, %struct.TYPE_27__*, %struct.TYPE_30__* }
%struct.TYPE_27__ = type { %struct.TYPE_36__ }
%struct.TYPE_36__ = type { %struct.TYPE_35__, %struct.TYPE_33__ }
%struct.TYPE_35__ = type { i32, %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_33__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32 }

@diStartRow = common dso_local global i32 0, align 4
@ES_AUTOHSCROLL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ES_AUTOVSCROLL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ME_EnsureVisible(%struct.TYPE_25__* %0, %struct.TYPE_28__* %1) #0 {
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %4, align 8
  %11 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 0
  store %struct.TYPE_26__* %15, %struct.TYPE_26__** %5, align 8
  %16 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %19 = load i32, i32* @diStartRow, align 4
  %20 = call %struct.TYPE_27__* @ME_FindItemBack(%struct.TYPE_30__* %18, i32 %19)
  store %struct.TYPE_27__* %20, %struct.TYPE_27__** %6, align 8
  %21 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %22, align 8
  store %struct.TYPE_27__* %23, %struct.TYPE_27__** %7, align 8
  %24 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %25 = call i32 @assert(%struct.TYPE_27__* %24)
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %27 = call i32 @assert(%struct.TYPE_27__* %26)
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ES_AUTOHSCROLL, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %92

34:                                               ; preds = %2
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @TRUE, align 4
  %45 = call i32 @ME_PointFromChar(%struct.TYPE_25__* %39, %struct.TYPE_26__* %40, i32 %43, i32 %44)
  %46 = add nsw i32 %38, %45
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %51, %55
  %57 = icmp sgt i32 %47, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %34
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %60, %64
  store i32 %65, i32* %8, align 4
  br label %79

66:                                               ; preds = %34
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp sgt i32 %67, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %66
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %73, %66
  br label %79

79:                                               ; preds = %78, %58
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = xor i32 %82, -1
  %84 = load i32, i32* @ES_AUTOVSCROLL, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %79
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @ME_HScrollAbs(%struct.TYPE_25__* %88, i32 %89)
  br label %179

91:                                               ; preds = %79
  br label %106

92:                                               ; preds = %2
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = xor i32 %95, -1
  %97 = load i32, i32* @ES_AUTOVSCROLL, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  br label %179

101:                                              ; preds = %92
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %101, %91
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %112, %118
  store i32 %119, i32* %9, align 4
  %120 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp slt i32 %125, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %106
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @ME_ScrollAbs(%struct.TYPE_25__* %132, i32 %133, i32 %134)
  br label %179

136:                                              ; preds = %106
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* %10, align 4
  %139 = add nsw i32 %137, %138
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %143, %147
  %149 = icmp sgt i32 %139, %148
  br i1 %149, label %150, label %162

150:                                              ; preds = %136
  %151 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* %10, align 4
  %155 = add nsw i32 %153, %154
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = sub nsw i32 %155, %159
  %161 = call i32 @ME_ScrollAbs(%struct.TYPE_25__* %151, i32 %152, i32 %160)
  br label %178

162:                                              ; preds = %136
  %163 = load i32, i32* %8, align 4
  %164 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %163, %167
  br i1 %168, label %169, label %177

169:                                              ; preds = %162
  %170 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %171 = load i32, i32* %8, align 4
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @ME_ScrollAbs(%struct.TYPE_25__* %170, i32 %171, i32 %175)
  br label %177

177:                                              ; preds = %169, %162
  br label %178

178:                                              ; preds = %177, %150
  br label %179

179:                                              ; preds = %87, %100, %178, %131
  ret void
}

declare dso_local %struct.TYPE_27__* @ME_FindItemBack(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @assert(%struct.TYPE_27__*) #1

declare dso_local i32 @ME_PointFromChar(%struct.TYPE_25__*, %struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @ME_HScrollAbs(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @ME_ScrollAbs(%struct.TYPE_25__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

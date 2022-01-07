; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_item.c_input_item_Release.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_item.c_input_item_Release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_14__**, %struct.TYPE_14__**, %struct.TYPE_14__**, %struct.TYPE_14__**, %struct.TYPE_14__*, %struct.TYPE_14__**, %struct.TYPE_14__*, i32*, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_14__*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_item_Release(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %12 = call %struct.TYPE_14__* @item_owner(%struct.TYPE_13__* %11)
  store %struct.TYPE_14__* %12, %struct.TYPE_14__** %3, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %15 = call i32 @vlc_atomic_rc_dec(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %206

18:                                               ; preds = %1
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 17
  %21 = call i32 @vlc_event_manager_fini(i32* %20)
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 16
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %25 = call i32 @free(%struct.TYPE_14__* %24)
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 15
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %29 = call i32 @free(%struct.TYPE_14__* %28)
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 14
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = call i32 @free(%struct.TYPE_14__* %32)
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 13
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %18
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 13
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @vlc_meta_Delete(i32* %41)
  br label %43

43:                                               ; preds = %38, %18
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 12
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  store %struct.TYPE_14__* %46, %struct.TYPE_14__** %4, align 8
  br label %47

47:                                               ; preds = %56, %43
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %49 = icmp ne %struct.TYPE_14__* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  store %struct.TYPE_14__* %53, %struct.TYPE_14__** %5, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %55 = call i32 @free(%struct.TYPE_14__* %54)
  br label %56

56:                                               ; preds = %50
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_14__* %57, %struct.TYPE_14__** %4, align 8
  br label %47

58:                                               ; preds = %47
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %74, %58
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %59
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 11
  %68 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %68, i64 %70
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %71, align 8
  %73 = call i32 @free(%struct.TYPE_14__* %72)
  br label %74

74:                                               ; preds = %65
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %59

77:                                               ; preds = %59
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 11
  %83 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %82, align 8
  %84 = call i32 @TAB_CLEAN(i32 %80, %struct.TYPE_14__** %83)
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 10
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = call i32 @free(%struct.TYPE_14__* %87)
  store i32 0, i32* %7, align 4
  br label %89

89:                                               ; preds = %112, %77
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %115

95:                                               ; preds = %89
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 9
  %98 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %98, i64 %100
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %101, align 8
  %103 = call i32 @es_format_Clean(%struct.TYPE_14__* %102)
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 9
  %106 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %106, i64 %108
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %109, align 8
  %111 = call i32 @free(%struct.TYPE_14__* %110)
  br label %112

112:                                              ; preds = %95
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %7, align 4
  br label %89

115:                                              ; preds = %89
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 9
  %121 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %120, align 8
  %122 = call i32 @TAB_CLEAN(i32 %118, %struct.TYPE_14__** %121)
  store i32 0, i32* %8, align 4
  br label %123

123:                                              ; preds = %138, %115
  %124 = load i32, i32* %8, align 4
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = icmp slt i32 %124, %127
  br i1 %128, label %129, label %141

129:                                              ; preds = %123
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 8
  %132 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %132, i64 %134
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %135, align 8
  %137 = call i32 @vlc_epg_Delete(%struct.TYPE_14__* %136)
  br label %138

138:                                              ; preds = %129
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %8, align 4
  br label %123

141:                                              ; preds = %123
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 8
  %147 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %146, align 8
  %148 = call i32 @TAB_CLEAN(i32 %144, %struct.TYPE_14__** %147)
  store i32 0, i32* %9, align 4
  br label %149

149:                                              ; preds = %164, %141
  %150 = load i32, i32* %9, align 4
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = icmp slt i32 %150, %153
  br i1 %154, label %155, label %167

155:                                              ; preds = %149
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 7
  %158 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %157, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %158, i64 %160
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %161, align 8
  %163 = call i32 @info_category_Delete(%struct.TYPE_14__* %162)
  br label %164

164:                                              ; preds = %155
  %165 = load i32, i32* %9, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %9, align 4
  br label %149

167:                                              ; preds = %149
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 7
  %173 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %172, align 8
  %174 = call i32 @TAB_CLEAN(i32 %170, %struct.TYPE_14__** %173)
  store i32 0, i32* %10, align 4
  br label %175

175:                                              ; preds = %190, %167
  %176 = load i32, i32* %10, align 4
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = icmp slt i32 %176, %179
  br i1 %180, label %181, label %193

181:                                              ; preds = %175
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 6
  %184 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %183, align 8
  %185 = load i32, i32* %10, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %184, i64 %186
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %187, align 8
  %189 = call i32 @input_item_slave_Delete(%struct.TYPE_14__* %188)
  br label %190

190:                                              ; preds = %181
  %191 = load i32, i32* %10, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %10, align 4
  br label %175

193:                                              ; preds = %175
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 6
  %199 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %198, align 8
  %200 = call i32 @TAB_CLEAN(i32 %196, %struct.TYPE_14__** %199)
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 5
  %203 = call i32 @vlc_mutex_destroy(i32* %202)
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %205 = call i32 @free(%struct.TYPE_14__* %204)
  br label %206

206:                                              ; preds = %193, %17
  ret void
}

declare dso_local %struct.TYPE_14__* @item_owner(%struct.TYPE_13__*) #1

declare dso_local i32 @vlc_atomic_rc_dec(i32*) #1

declare dso_local i32 @vlc_event_manager_fini(i32*) #1

declare dso_local i32 @free(%struct.TYPE_14__*) #1

declare dso_local i32 @vlc_meta_Delete(i32*) #1

declare dso_local i32 @TAB_CLEAN(i32, %struct.TYPE_14__**) #1

declare dso_local i32 @es_format_Clean(%struct.TYPE_14__*) #1

declare dso_local i32 @vlc_epg_Delete(%struct.TYPE_14__*) #1

declare dso_local i32 @info_category_Delete(%struct.TYPE_14__*) #1

declare dso_local i32 @input_item_slave_Delete(%struct.TYPE_14__*) #1

declare dso_local i32 @vlc_mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

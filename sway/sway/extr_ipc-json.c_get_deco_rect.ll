; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_ipc-json.c_get_deco_rect.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_ipc-json.c_get_deco_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { i64, i64, i64, i64, i32, %struct.TYPE_11__*, %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i64, i64, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.wlr_box = type { i64, i64, i64, i64 }
%struct.TYPE_12__ = type { i64 }

@L_TABBED = common dso_local global i32 0, align 4
@L_STACKED = common dso_local global i32 0, align 4
@B_NORMAL = common dso_local global i64 0, align 8
@FULLSCREEN_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_container*, %struct.wlr_box*)* @get_deco_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_deco_rect(%struct.sway_container* %0, %struct.wlr_box* %1) #0 {
  %3 = alloca %struct.sway_container*, align 8
  %4 = alloca %struct.wlr_box*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.sway_container* %0, %struct.sway_container** %3, align 8
  store %struct.wlr_box* %1, %struct.wlr_box** %4, align 8
  %8 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %9 = call i32 @container_parent_layout(%struct.sway_container* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @L_TABBED, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @L_STACKED, align 4
  %16 = icmp eq i32 %14, %15
  br label %17

17:                                               ; preds = %13, %2
  %18 = phi i1 [ true, %2 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %24 = call i64 @container_is_floating(%struct.sway_container* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %22, %17
  %27 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %28 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %27, i32 0, i32 7
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @B_NORMAL, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %44, label %33

33:                                               ; preds = %26, %22
  %34 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %35 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @FULLSCREEN_NONE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %44, label %39

39:                                               ; preds = %33
  %40 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %41 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %40, i32 0, i32 5
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = icmp eq %struct.TYPE_11__* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %39, %33, %26
  %45 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %46 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %45, i32 0, i32 3
  store i64 0, i64* %46, align 8
  %47 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %48 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %50 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %52 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  br label %206

53:                                               ; preds = %39
  %54 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %55 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %54, i32 0, i32 6
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = icmp ne %struct.TYPE_9__* %56, null
  br i1 %57, label %58, label %81

58:                                               ; preds = %53
  %59 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %60 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %63 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %62, i32 0, i32 6
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = sub i64 %61, %66
  %68 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %69 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %71 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %74 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %73, i32 0, i32 6
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = sub i64 %72, %77
  %79 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %80 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  br label %104

81:                                               ; preds = %53
  %82 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %83 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %86 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %85, i32 0, i32 5
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = sub i64 %84, %89
  %91 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %92 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %94 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %97 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %96, i32 0, i32 5
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = sub i64 %95, %100
  %102 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %103 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %102, i32 0, i32 1
  store i64 %101, i64* %103, align 8
  br label %104

104:                                              ; preds = %81, %58
  %105 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %106 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %109 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %108, i32 0, i32 2
  store i64 %107, i64* %109, align 8
  %110 = call i64 (...) @container_titlebar_height()
  %111 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %112 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %111, i32 0, i32 3
  store i64 %110, i64* %112, align 8
  %113 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %114 = call i64 @container_is_floating(%struct.sway_container* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %206, label %116

116:                                              ; preds = %104
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* @L_TABBED, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %169

120:                                              ; preds = %116
  %121 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %122 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %121, i32 0, i32 6
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = icmp ne %struct.TYPE_9__* %123, null
  br i1 %124, label %125, label %139

125:                                              ; preds = %120
  %126 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %127 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %126, i32 0, i32 6
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %132 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %131, i32 0, i32 6
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 3
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = sdiv i32 %130, %137
  br label %153

139:                                              ; preds = %120
  %140 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %141 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %140, i32 0, i32 5
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %146 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %145, i32 0, i32 5
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 3
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = sdiv i32 %144, %151
  br label %153

153:                                              ; preds = %139, %125
  %154 = phi i32 [ %138, %125 ], [ %152, %139 ]
  %155 = sext i32 %154 to i64
  %156 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %157 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %156, i32 0, i32 2
  store i64 %155, i64* %157, align 8
  %158 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %159 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %162 = call i32 @container_sibling_index(%struct.sway_container* %161)
  %163 = sext i32 %162 to i64
  %164 = mul i64 %160, %163
  %165 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %166 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = add i64 %167, %164
  store i64 %168, i64* %166, align 8
  br label %205

169:                                              ; preds = %116
  %170 = load i32, i32* %5, align 4
  %171 = load i32, i32* @L_STACKED, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %204

173:                                              ; preds = %169
  %174 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %175 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %192, label %178

178:                                              ; preds = %173
  %179 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %180 = call %struct.TYPE_12__* @container_get_siblings(%struct.sway_container* %179)
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  store i64 %182, i64* %7, align 8
  %183 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %184 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* %7, align 8
  %187 = mul i64 %185, %186
  %188 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %189 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = sub i64 %190, %187
  store i64 %191, i64* %189, align 8
  br label %192

192:                                              ; preds = %178, %173
  %193 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %194 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %193, i32 0, i32 3
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %197 = call i32 @container_sibling_index(%struct.sway_container* %196)
  %198 = sext i32 %197 to i64
  %199 = mul i64 %195, %198
  %200 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %201 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = add i64 %202, %199
  store i64 %203, i64* %201, align 8
  br label %204

204:                                              ; preds = %192, %169
  br label %205

205:                                              ; preds = %204, %153
  br label %206

206:                                              ; preds = %44, %205, %104
  ret void
}

declare dso_local i32 @container_parent_layout(%struct.sway_container*) #1

declare dso_local i64 @container_is_floating(%struct.sway_container*) #1

declare dso_local i64 @container_titlebar_height(...) #1

declare dso_local i32 @container_sibling_index(%struct.sway_container*) #1

declare dso_local %struct.TYPE_12__* @container_get_siblings(%struct.sway_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_transaction.c_apply_container_state.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_transaction.c_apply_container_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { i64, i32, i64, i32, i32, i32, %struct.TYPE_9__, i64, i64, i64, i64, %struct.TYPE_10__, %struct.sway_view* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64, i64, i32 }
%struct.sway_view = type { i64, i64, %struct.wlr_surface*, %struct.TYPE_7__, i64, %struct.TYPE_6__ }
%struct.wlr_surface = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.sway_container_state = type { i32 }
%struct.wlr_box = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_container*, %struct.sway_container_state*)* @apply_container_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_container_state(%struct.sway_container* %0, %struct.sway_container_state* %1) #0 {
  %3 = alloca %struct.sway_container*, align 8
  %4 = alloca %struct.sway_container_state*, align 8
  %5 = alloca %struct.sway_view*, align 8
  %6 = alloca %struct.wlr_box, align 8
  %7 = alloca %struct.wlr_surface*, align 8
  %8 = alloca %struct.wlr_box, align 8
  store %struct.sway_container* %0, %struct.sway_container** %3, align 8
  store %struct.sway_container_state* %1, %struct.sway_container_state** %4, align 8
  %9 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %10 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %9, i32 0, i32 12
  %11 = load %struct.sway_view*, %struct.sway_view** %10, align 8
  store %struct.sway_view* %11, %struct.sway_view** %5, align 8
  %12 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %13 = call i32 @desktop_damage_whole_container(%struct.sway_container* %12)
  %14 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %15 = icmp ne %struct.sway_view* %14, null
  br i1 %15, label %16, label %51

16:                                               ; preds = %2
  %17 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %18 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %51

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %6, i32 0, i32 0
  %23 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %24 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %22, align 8
  %26 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %6, i32 0, i32 1
  %27 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %28 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %26, align 8
  %30 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %6, i32 0, i32 2
  %31 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %32 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %31, i32 0, i32 11
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %36 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %34, %38
  store i64 %39, i64* %30, align 8
  %40 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %6, i32 0, i32 3
  %41 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %42 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %41, i32 0, i32 11
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %46 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %44, %48
  store i64 %49, i64* %40, align 8
  %50 = call i32 @desktop_damage_box(%struct.wlr_box* %6)
  br label %51

51:                                               ; preds = %21, %16, %2
  %52 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %53 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %52, i32 0, i32 11
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @list_free(i32 %55)
  %57 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %58 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %57, i32 0, i32 11
  %59 = load %struct.sway_container_state*, %struct.sway_container_state** %4, align 8
  %60 = call i32 @memcpy(%struct.TYPE_10__* %58, %struct.sway_container_state* %59, i32 4)
  %61 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %62 = icmp ne %struct.sway_view* %61, null
  br i1 %62, label %63, label %84

63:                                               ; preds = %51
  %64 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %65 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %63
  %69 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %70 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %69, i32 0, i32 6
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %76 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %75, i32 0, i32 6
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %83

80:                                               ; preds = %74, %68
  %81 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %82 = call i32 @view_remove_saved_buffer(%struct.sway_view* %81)
  br label %83

83:                                               ; preds = %80, %74
  br label %84

84:                                               ; preds = %83, %63, %51
  %85 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %86 = call i32 @desktop_damage_whole_container(%struct.sway_container* %85)
  %87 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %88 = icmp ne %struct.sway_view* %87, null
  br i1 %88, label %89, label %129

89:                                               ; preds = %84
  %90 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %91 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %90, i32 0, i32 2
  %92 = load %struct.wlr_surface*, %struct.wlr_surface** %91, align 8
  %93 = icmp ne %struct.wlr_surface* %92, null
  br i1 %93, label %94, label %129

94:                                               ; preds = %89
  %95 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %96 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %95, i32 0, i32 2
  %97 = load %struct.wlr_surface*, %struct.wlr_surface** %96, align 8
  store %struct.wlr_surface* %97, %struct.wlr_surface** %7, align 8
  %98 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %8, i32 0, i32 0
  %99 = load %struct.wlr_surface*, %struct.wlr_surface** %7, align 8
  %100 = getelementptr inbounds %struct.wlr_surface, %struct.wlr_surface* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %98, align 8
  %103 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %8, i32 0, i32 1
  %104 = load %struct.wlr_surface*, %struct.wlr_surface** %7, align 8
  %105 = getelementptr inbounds %struct.wlr_surface, %struct.wlr_surface* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %103, align 8
  %108 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %8, i32 0, i32 2
  %109 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %110 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %109, i32 0, i32 11
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %114 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = sub nsw i64 %112, %116
  store i64 %117, i64* %108, align 8
  %118 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %8, i32 0, i32 3
  %119 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %120 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %119, i32 0, i32 11
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %124 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = sub nsw i64 %122, %126
  store i64 %127, i64* %118, align 8
  %128 = call i32 @desktop_damage_box(%struct.wlr_box* %8)
  br label %129

129:                                              ; preds = %94, %89, %84
  %130 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %131 = icmp ne %struct.sway_view* %130, null
  br i1 %131, label %132, label %228

132:                                              ; preds = %129
  %133 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %134 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %133, i32 0, i32 2
  %135 = load %struct.wlr_surface*, %struct.wlr_surface** %134, align 8
  %136 = icmp ne %struct.wlr_surface* %135, null
  br i1 %136, label %137, label %228

137:                                              ; preds = %132
  %138 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %139 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %138, i32 0, i32 2
  %140 = load %struct.wlr_surface*, %struct.wlr_surface** %139, align 8
  %141 = getelementptr inbounds %struct.wlr_surface, %struct.wlr_surface* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %145 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp slt i64 %143, %146
  br i1 %147, label %148, label %167

148:                                              ; preds = %137
  %149 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %150 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %149, i32 0, i32 9
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %153 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %157 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %156, i32 0, i32 2
  %158 = load %struct.wlr_surface*, %struct.wlr_surface** %157, align 8
  %159 = getelementptr inbounds %struct.wlr_surface, %struct.wlr_surface* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = sub nsw i64 %155, %161
  %163 = sdiv i64 %162, 2
  %164 = add nsw i64 %151, %163
  %165 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %166 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %165, i32 0, i32 10
  store i64 %164, i64* %166, align 8
  br label %173

167:                                              ; preds = %137
  %168 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %169 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %168, i32 0, i32 9
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %172 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %171, i32 0, i32 10
  store i64 %170, i64* %172, align 8
  br label %173

173:                                              ; preds = %167, %148
  %174 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %175 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %174, i32 0, i32 2
  %176 = load %struct.wlr_surface*, %struct.wlr_surface** %175, align 8
  %177 = getelementptr inbounds %struct.wlr_surface, %struct.wlr_surface* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %181 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = icmp slt i64 %179, %182
  br i1 %183, label %184, label %203

184:                                              ; preds = %173
  %185 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %186 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %185, i32 0, i32 7
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %189 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = sext i32 %190 to i64
  %192 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %193 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %192, i32 0, i32 2
  %194 = load %struct.wlr_surface*, %struct.wlr_surface** %193, align 8
  %195 = getelementptr inbounds %struct.wlr_surface, %struct.wlr_surface* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = sub nsw i64 %191, %197
  %199 = sdiv i64 %198, 2
  %200 = add nsw i64 %187, %199
  %201 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %202 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %201, i32 0, i32 8
  store i64 %200, i64* %202, align 8
  br label %209

203:                                              ; preds = %173
  %204 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %205 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %204, i32 0, i32 7
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %208 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %207, i32 0, i32 8
  store i64 %206, i64* %208, align 8
  br label %209

209:                                              ; preds = %203, %184
  %210 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %211 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %210, i32 0, i32 2
  %212 = load %struct.wlr_surface*, %struct.wlr_surface** %211, align 8
  %213 = getelementptr inbounds %struct.wlr_surface, %struct.wlr_surface* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = trunc i64 %215 to i32
  %217 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %218 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %217, i32 0, i32 4
  store i32 %216, i32* %218, align 4
  %219 = load %struct.sway_view*, %struct.sway_view** %5, align 8
  %220 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %219, i32 0, i32 2
  %221 = load %struct.wlr_surface*, %struct.wlr_surface** %220, align 8
  %222 = getelementptr inbounds %struct.wlr_surface, %struct.wlr_surface* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = trunc i64 %224 to i32
  %226 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %227 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %226, i32 0, i32 5
  store i32 %225, i32* %227, align 8
  br label %228

228:                                              ; preds = %209, %132, %129
  %229 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %230 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %229, i32 0, i32 6
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %237, label %234

234:                                              ; preds = %228
  %235 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %236 = call i32 @container_discover_outputs(%struct.sway_container* %235)
  br label %237

237:                                              ; preds = %234, %228
  ret void
}

declare dso_local i32 @desktop_damage_whole_container(%struct.sway_container*) #1

declare dso_local i32 @desktop_damage_box(%struct.wlr_box*) #1

declare dso_local i32 @list_free(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_10__*, %struct.sway_container_state*, i32) #1

declare dso_local i32 @view_remove_saved_buffer(%struct.sway_view*) #1

declare dso_local i32 @container_discover_outputs(%struct.sway_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

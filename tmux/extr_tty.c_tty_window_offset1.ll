; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_window_offset1.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_window_offset1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i64, i64, %struct.client* }
%struct.client = type { i64, i64, %struct.window*, %struct.TYPE_5__* }
%struct.window = type { i64, i64, %struct.window_pane* }
%struct.window_pane = type { i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.window* }

@MODE_CURSOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*, i64*, i64*, i64*, i64*)* @tty_window_offset1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty_window_offset1(%struct.tty* %0, i64* %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tty*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.client*, align 8
  %13 = alloca %struct.window*, align 8
  %14 = alloca %struct.window_pane*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.tty* %0, %struct.tty** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %18 = load %struct.tty*, %struct.tty** %7, align 8
  %19 = getelementptr inbounds %struct.tty, %struct.tty* %18, i32 0, i32 2
  %20 = load %struct.client*, %struct.client** %19, align 8
  store %struct.client* %20, %struct.client** %12, align 8
  %21 = load %struct.client*, %struct.client** %12, align 8
  %22 = getelementptr inbounds %struct.client, %struct.client* %21, i32 0, i32 3
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.window*, %struct.window** %26, align 8
  store %struct.window* %27, %struct.window** %13, align 8
  %28 = load %struct.window*, %struct.window** %13, align 8
  %29 = getelementptr inbounds %struct.window, %struct.window* %28, i32 0, i32 2
  %30 = load %struct.window_pane*, %struct.window_pane** %29, align 8
  store %struct.window_pane* %30, %struct.window_pane** %14, align 8
  %31 = load %struct.client*, %struct.client** %12, align 8
  %32 = call i64 @status_line_size(%struct.client* %31)
  store i64 %32, i64* %17, align 8
  %33 = load %struct.tty*, %struct.tty** %7, align 8
  %34 = getelementptr inbounds %struct.tty, %struct.tty* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.window*, %struct.window** %13, align 8
  %37 = getelementptr inbounds %struct.window, %struct.window* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %35, %38
  br i1 %39, label %40, label %63

40:                                               ; preds = %5
  %41 = load %struct.tty*, %struct.tty** %7, align 8
  %42 = getelementptr inbounds %struct.tty, %struct.tty* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %17, align 8
  %45 = sub nsw i64 %43, %44
  %46 = load %struct.window*, %struct.window** %13, align 8
  %47 = getelementptr inbounds %struct.window, %struct.window* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sge i64 %45, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %40
  %51 = load i64*, i64** %8, align 8
  store i64 0, i64* %51, align 8
  %52 = load i64*, i64** %9, align 8
  store i64 0, i64* %52, align 8
  %53 = load %struct.window*, %struct.window** %13, align 8
  %54 = getelementptr inbounds %struct.window, %struct.window* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64*, i64** %10, align 8
  store i64 %55, i64* %56, align 8
  %57 = load %struct.window*, %struct.window** %13, align 8
  %58 = getelementptr inbounds %struct.window, %struct.window* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64*, i64** %11, align 8
  store i64 %59, i64* %60, align 8
  %61 = load %struct.client*, %struct.client** %12, align 8
  %62 = getelementptr inbounds %struct.client, %struct.client* %61, i32 0, i32 2
  store %struct.window* null, %struct.window** %62, align 8
  store i32 0, i32* %6, align 4
  br label %249

63:                                               ; preds = %40, %5
  %64 = load %struct.tty*, %struct.tty** %7, align 8
  %65 = getelementptr inbounds %struct.tty, %struct.tty* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64*, i64** %10, align 8
  store i64 %66, i64* %67, align 8
  %68 = load %struct.tty*, %struct.tty** %7, align 8
  %69 = getelementptr inbounds %struct.tty, %struct.tty* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %17, align 8
  %72 = sub nsw i64 %70, %71
  %73 = load i64*, i64** %11, align 8
  store i64 %72, i64* %73, align 8
  %74 = load %struct.client*, %struct.client** %12, align 8
  %75 = getelementptr inbounds %struct.client, %struct.client* %74, i32 0, i32 2
  %76 = load %struct.window*, %struct.window** %75, align 8
  %77 = load %struct.window*, %struct.window** %13, align 8
  %78 = icmp eq %struct.window* %76, %77
  br i1 %78, label %79, label %150

79:                                               ; preds = %63
  %80 = load i64*, i64** %10, align 8
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.window*, %struct.window** %13, align 8
  %83 = getelementptr inbounds %struct.window, %struct.window* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp sge i64 %81, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load %struct.client*, %struct.client** %12, align 8
  %88 = getelementptr inbounds %struct.client, %struct.client* %87, i32 0, i32 0
  store i64 0, i64* %88, align 8
  br label %110

89:                                               ; preds = %79
  %90 = load %struct.client*, %struct.client** %12, align 8
  %91 = getelementptr inbounds %struct.client, %struct.client* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64*, i64** %10, align 8
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %92, %94
  %96 = load %struct.window*, %struct.window** %13, align 8
  %97 = getelementptr inbounds %struct.window, %struct.window* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp sgt i64 %95, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %89
  %101 = load %struct.window*, %struct.window** %13, align 8
  %102 = getelementptr inbounds %struct.window, %struct.window* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64*, i64** %10, align 8
  %105 = load i64, i64* %104, align 8
  %106 = sub nsw i64 %103, %105
  %107 = load %struct.client*, %struct.client** %12, align 8
  %108 = getelementptr inbounds %struct.client, %struct.client* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  br label %109

109:                                              ; preds = %100, %89
  br label %110

110:                                              ; preds = %109, %86
  %111 = load %struct.client*, %struct.client** %12, align 8
  %112 = getelementptr inbounds %struct.client, %struct.client* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64*, i64** %8, align 8
  store i64 %113, i64* %114, align 8
  %115 = load i64*, i64** %11, align 8
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.window*, %struct.window** %13, align 8
  %118 = getelementptr inbounds %struct.window, %struct.window* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp sge i64 %116, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %110
  %122 = load %struct.client*, %struct.client** %12, align 8
  %123 = getelementptr inbounds %struct.client, %struct.client* %122, i32 0, i32 1
  store i64 0, i64* %123, align 8
  br label %145

124:                                              ; preds = %110
  %125 = load %struct.client*, %struct.client** %12, align 8
  %126 = getelementptr inbounds %struct.client, %struct.client* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64*, i64** %11, align 8
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %127, %129
  %131 = load %struct.window*, %struct.window** %13, align 8
  %132 = getelementptr inbounds %struct.window, %struct.window* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp sgt i64 %130, %133
  br i1 %134, label %135, label %144

135:                                              ; preds = %124
  %136 = load %struct.window*, %struct.window** %13, align 8
  %137 = getelementptr inbounds %struct.window, %struct.window* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64*, i64** %11, align 8
  %140 = load i64, i64* %139, align 8
  %141 = sub nsw i64 %138, %140
  %142 = load %struct.client*, %struct.client** %12, align 8
  %143 = getelementptr inbounds %struct.client, %struct.client* %142, i32 0, i32 1
  store i64 %141, i64* %143, align 8
  br label %144

144:                                              ; preds = %135, %124
  br label %145

145:                                              ; preds = %144, %121
  %146 = load %struct.client*, %struct.client** %12, align 8
  %147 = getelementptr inbounds %struct.client, %struct.client* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64*, i64** %9, align 8
  store i64 %148, i64* %149, align 8
  store i32 1, i32* %6, align 4
  br label %249

150:                                              ; preds = %63
  %151 = load %struct.window_pane*, %struct.window_pane** %14, align 8
  %152 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %151, i32 0, i32 2
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = xor i32 %155, -1
  %157 = load i32, i32* @MODE_CURSOR, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %150
  %161 = load i64*, i64** %8, align 8
  store i64 0, i64* %161, align 8
  %162 = load i64*, i64** %9, align 8
  store i64 0, i64* %162, align 8
  br label %246

163:                                              ; preds = %150
  %164 = load %struct.window_pane*, %struct.window_pane** %14, align 8
  %165 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.window_pane*, %struct.window_pane** %14, align 8
  %168 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %167, i32 0, i32 2
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = add nsw i64 %166, %171
  store i64 %172, i64* %15, align 8
  %173 = load %struct.window_pane*, %struct.window_pane** %14, align 8
  %174 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.window_pane*, %struct.window_pane** %14, align 8
  %177 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %176, i32 0, i32 2
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = add nsw i64 %175, %180
  store i64 %181, i64* %16, align 8
  %182 = load i64, i64* %15, align 8
  %183 = load i64*, i64** %10, align 8
  %184 = load i64, i64* %183, align 8
  %185 = icmp slt i64 %182, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %163
  %187 = load i64*, i64** %8, align 8
  store i64 0, i64* %187, align 8
  br label %213

188:                                              ; preds = %163
  %189 = load i64, i64* %15, align 8
  %190 = load %struct.window*, %struct.window** %13, align 8
  %191 = getelementptr inbounds %struct.window, %struct.window* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64*, i64** %10, align 8
  %194 = load i64, i64* %193, align 8
  %195 = sub nsw i64 %192, %194
  %196 = icmp sgt i64 %189, %195
  br i1 %196, label %197, label %205

197:                                              ; preds = %188
  %198 = load %struct.window*, %struct.window** %13, align 8
  %199 = getelementptr inbounds %struct.window, %struct.window* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64*, i64** %10, align 8
  %202 = load i64, i64* %201, align 8
  %203 = sub nsw i64 %200, %202
  %204 = load i64*, i64** %8, align 8
  store i64 %203, i64* %204, align 8
  br label %212

205:                                              ; preds = %188
  %206 = load i64, i64* %15, align 8
  %207 = load i64*, i64** %10, align 8
  %208 = load i64, i64* %207, align 8
  %209 = sdiv i64 %208, 2
  %210 = sub nsw i64 %206, %209
  %211 = load i64*, i64** %8, align 8
  store i64 %210, i64* %211, align 8
  br label %212

212:                                              ; preds = %205, %197
  br label %213

213:                                              ; preds = %212, %186
  %214 = load i64, i64* %16, align 8
  %215 = load i64*, i64** %11, align 8
  %216 = load i64, i64* %215, align 8
  %217 = icmp slt i64 %214, %216
  br i1 %217, label %218, label %220

218:                                              ; preds = %213
  %219 = load i64*, i64** %9, align 8
  store i64 0, i64* %219, align 8
  br label %245

220:                                              ; preds = %213
  %221 = load i64, i64* %16, align 8
  %222 = load %struct.window*, %struct.window** %13, align 8
  %223 = getelementptr inbounds %struct.window, %struct.window* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = load i64*, i64** %11, align 8
  %226 = load i64, i64* %225, align 8
  %227 = sub nsw i64 %224, %226
  %228 = icmp sgt i64 %221, %227
  br i1 %228, label %229, label %237

229:                                              ; preds = %220
  %230 = load %struct.window*, %struct.window** %13, align 8
  %231 = getelementptr inbounds %struct.window, %struct.window* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = load i64*, i64** %11, align 8
  %234 = load i64, i64* %233, align 8
  %235 = sub nsw i64 %232, %234
  %236 = load i64*, i64** %9, align 8
  store i64 %235, i64* %236, align 8
  br label %244

237:                                              ; preds = %220
  %238 = load i64, i64* %16, align 8
  %239 = load i64*, i64** %11, align 8
  %240 = load i64, i64* %239, align 8
  %241 = sdiv i64 %240, 2
  %242 = sub nsw i64 %238, %241
  %243 = load i64*, i64** %9, align 8
  store i64 %242, i64* %243, align 8
  br label %244

244:                                              ; preds = %237, %229
  br label %245

245:                                              ; preds = %244, %218
  br label %246

246:                                              ; preds = %245, %160
  %247 = load %struct.client*, %struct.client** %12, align 8
  %248 = getelementptr inbounds %struct.client, %struct.client* %247, i32 0, i32 2
  store %struct.window* null, %struct.window** %248, align 8
  store i32 1, i32* %6, align 4
  br label %249

249:                                              ; preds = %246, %145, %50
  %250 = load i32, i32* %6, align 4
  ret i32 %250
}

declare dso_local i64 @status_line_size(%struct.client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

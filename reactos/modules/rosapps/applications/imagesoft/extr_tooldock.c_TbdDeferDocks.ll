; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/imagesoft/extr_tooldock.c_TbdDeferDocks.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/imagesoft/extr_tooldock.c_TbdDeferDocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__, i32** }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64, i64, i64 }

@TOP_DOCK = common dso_local global i64 0, align 8
@LEFT_DOCK = common dso_local global i64 0, align 8
@RIGHT_DOCK = common dso_local global i64 0, align 8
@SWP_NOZORDER = common dso_local global i32 0, align 4
@BOTTOM_DOCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @TbdDeferDocks(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %9 = load i32*, i32** %4, align 8
  store i32* %9, i32** %8, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %13, %17
  store i64 %18, i64* %6, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %22, %26
  store i64 %27, i64* %7, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = load i32**, i32*** %29, align 8
  %31 = load i64, i64* @TOP_DOCK, align 8
  %32 = getelementptr inbounds i32*, i32** %30, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %97

35:                                               ; preds = %2
  %36 = load i32*, i32** %8, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = load i32**, i32*** %38, align 8
  %40 = load i64, i64* @TOP_DOCK, align 8
  %41 = getelementptr inbounds i32*, i32** %39, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load i64, i64* @LEFT_DOCK, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %46, %53
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = load i64, i64* @TOP_DOCK, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %58, %65
  %67 = load i64, i64* %6, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = load i64, i64* @LEFT_DOCK, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %67, %74
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = load i64, i64* @RIGHT_DOCK, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %75, %82
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = load i64, i64* @TOP_DOCK, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* @SWP_NOZORDER, align 4
  %92 = call i32* @DeferWindowPos(i32* %36, i32* %42, i32* null, i64 %54, i64 %66, i64 %83, i64 %90, i32 %91)
  store i32* %92, i32** %8, align 8
  %93 = load i32*, i32** %8, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %35
  store i32* null, i32** %3, align 8
  br label %245

96:                                               ; preds = %35
  br label %97

97:                                               ; preds = %96, %2
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 2
  %100 = load i32**, i32*** %99, align 8
  %101 = load i64, i64* @LEFT_DOCK, align 8
  %102 = getelementptr inbounds i32*, i32** %100, i64 %101
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %143

105:                                              ; preds = %97
  %106 = load i32*, i32** %8, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 2
  %109 = load i32**, i32*** %108, align 8
  %110 = load i64, i64* @LEFT_DOCK, align 8
  %111 = getelementptr inbounds i32*, i32** %109, i64 %110
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = load i64, i64* @LEFT_DOCK, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = sub nsw i64 %116, %123
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = load i64, i64* @LEFT_DOCK, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %7, align 8
  %137 = load i32, i32* @SWP_NOZORDER, align 4
  %138 = call i32* @DeferWindowPos(i32* %106, i32* %112, i32* null, i64 %124, i64 %128, i64 %135, i64 %136, i32 %137)
  store i32* %138, i32** %8, align 8
  %139 = load i32*, i32** %8, align 8
  %140 = icmp eq i32* %139, null
  br i1 %140, label %141, label %142

141:                                              ; preds = %105
  store i32* null, i32** %3, align 8
  br label %245

142:                                              ; preds = %105
  br label %143

143:                                              ; preds = %142, %97
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 2
  %146 = load i32**, i32*** %145, align 8
  %147 = load i64, i64* @RIGHT_DOCK, align 8
  %148 = getelementptr inbounds i32*, i32** %146, i64 %147
  %149 = load i32*, i32** %148, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %181

151:                                              ; preds = %143
  %152 = load i32*, i32** %8, align 8
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 2
  %155 = load i32**, i32*** %154, align 8
  %156 = load i64, i64* @RIGHT_DOCK, align 8
  %157 = getelementptr inbounds i32*, i32** %155, i64 %156
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = load i64, i64* @RIGHT_DOCK, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* %7, align 8
  %175 = load i32, i32* @SWP_NOZORDER, align 4
  %176 = call i32* @DeferWindowPos(i32* %152, i32* %158, i32* null, i64 %162, i64 %166, i64 %173, i64 %174, i32 %175)
  store i32* %176, i32** %8, align 8
  %177 = load i32*, i32** %8, align 8
  %178 = icmp eq i32* %177, null
  br i1 %178, label %179, label %180

179:                                              ; preds = %151
  store i32* null, i32** %3, align 8
  br label %245

180:                                              ; preds = %151
  br label %181

181:                                              ; preds = %180, %143
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 2
  %184 = load i32**, i32*** %183, align 8
  %185 = load i64, i64* @BOTTOM_DOCK, align 8
  %186 = getelementptr inbounds i32*, i32** %184, i64 %185
  %187 = load i32*, i32** %186, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %189, label %243

189:                                              ; preds = %181
  %190 = load i32*, i32** %8, align 8
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 2
  %193 = load i32**, i32*** %192, align 8
  %194 = load i64, i64* @BOTTOM_DOCK, align 8
  %195 = getelementptr inbounds i32*, i32** %193, i64 %194
  %196 = load i32*, i32** %195, align 8
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %202, align 8
  %204 = load i64, i64* @LEFT_DOCK, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = sub nsw i64 %200, %207
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* %6, align 8
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %215, align 8
  %217 = load i64, i64* @LEFT_DOCK, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = add nsw i64 %213, %220
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %223, align 8
  %225 = load i64, i64* @RIGHT_DOCK, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = add nsw i64 %221, %228
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 0
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %231, align 8
  %233 = load i64, i64* @BOTTOM_DOCK, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load i32, i32* @SWP_NOZORDER, align 4
  %238 = call i32* @DeferWindowPos(i32* %190, i32* %196, i32* null, i64 %208, i64 %212, i64 %229, i64 %236, i32 %237)
  store i32* %238, i32** %8, align 8
  %239 = load i32*, i32** %8, align 8
  %240 = icmp eq i32* %239, null
  br i1 %240, label %241, label %242

241:                                              ; preds = %189
  store i32* null, i32** %3, align 8
  br label %245

242:                                              ; preds = %189
  br label %243

243:                                              ; preds = %242, %181
  %244 = load i32*, i32** %8, align 8
  store i32* %244, i32** %3, align 8
  br label %245

245:                                              ; preds = %243, %241, %179, %141, %95
  %246 = load i32*, i32** %3, align 8
  ret i32* %246
}

declare dso_local i32* @DeferWindowPos(i32*, i32*, i32*, i64, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

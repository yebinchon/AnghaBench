; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_gc.c_gc_onestep.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_gc.c_gc_onestep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__, i32, i32* }
%struct.TYPE_11__ = type { i32, i32, i64, i64, i32, i32, i32, i32, i32 }

@LJ_MAX_MEM = common dso_local global i64 0, align 8
@GCSWEEPCOST = common dso_local global i64 0, align 8
@GCRef = common dso_local global i32 0, align 4
@GCSWEEPMAX = common dso_local global i64 0, align 8
@LJ_MIN_STRTAB = common dso_local global i32 0, align 4
@GCFINALIZECOST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @gc_onestep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gc_onestep(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call %struct.TYPE_12__* @G(i32* %7)
  store %struct.TYPE_12__* %8, %struct.TYPE_12__** %4, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %232 [
    i32 131, label %13
    i32 130, label %16
    i32 133, label %30
    i32 128, label %48
    i32 129, label %98
    i32 132, label %192
  ]

13:                                               ; preds = %1
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = call i32 @gc_mark_start(%struct.TYPE_12__* %14)
  store i64 0, i64* %2, align 8
  br label %234

16:                                               ; preds = %1
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 8
  %21 = call i32* @gcref(i32 %20)
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %25 = call i64 @propagatemark(%struct.TYPE_12__* %24)
  store i64 %25, i64* %2, align 8
  br label %234

26:                                               ; preds = %16
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  store i32 133, i32* %29, align 8
  store i64 0, i64* %2, align 8
  br label %234

30:                                               ; preds = %1
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @tvref(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i64, i64* @LJ_MAX_MEM, align 8
  store i64 %37, i64* %2, align 8
  br label %234

38:                                               ; preds = %30
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @atomic(%struct.TYPE_12__* %39, i32* %40)
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  store i32 128, i32* %44, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  store i32 0, i32* %47, align 4
  store i64 0, i64* %2, align 8
  br label %234

48:                                               ; preds = %1
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %5, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i32, i32* %56, i64 %62
  %64 = call i32 @gc_fullsweep(%struct.TYPE_12__* %53, i32* %63)
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp sgt i32 %68, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %48
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  store i32 129, i32* %76, align 8
  br label %77

77:                                               ; preds = %73, %48
  %78 = load i64, i64* %5, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp uge i64 %78, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @lua_assert(i32 %84)
  %86 = load i64, i64* %5, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = sub i64 %86, %90
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = sub i64 %95, %91
  store i64 %96, i64* %94, align 8
  %97 = load i64, i64* @GCSWEEPCOST, align 8
  store i64 %97, i64* %2, align 8
  br label %234

98:                                               ; preds = %1
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %6, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @GCRef, align 4
  %113 = call i32* @mref(i32 %111, i32 %112)
  %114 = load i64, i64* @GCSWEEPMAX, align 8
  %115 = call i32 @gc_sweep(%struct.TYPE_12__* %107, i32* %113, i64 %114)
  %116 = call i32 @setmref(i32 %106, i32 %115)
  %117 = load i64, i64* %6, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp uge i64 %117, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 @lua_assert(i32 %123)
  %125 = load i64, i64* %6, align 8
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = sub i64 %125, %129
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = sub i64 %134, %130
  store i64 %135, i64* %133, align 8
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 7
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @GCRef, align 4
  %141 = call i32* @mref(i32 %139, i32 %140)
  %142 = load i32, i32* %141, align 4
  %143 = call i32* @gcref(i32 %142)
  %144 = icmp eq i32* %143, null
  br i1 %144, label %145, label %188

145:                                              ; preds = %98
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = ashr i32 %151, 2
  %153 = icmp sle i32 %148, %152
  br i1 %153, label %154, label %169

154:                                              ; preds = %145
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @LJ_MIN_STRTAB, align 4
  %159 = mul nsw i32 %158, 2
  %160 = sub nsw i32 %159, 1
  %161 = icmp sgt i32 %157, %160
  br i1 %161, label %162, label %169

162:                                              ; preds = %154
  %163 = load i32*, i32** %3, align 8
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = ashr i32 %166, 1
  %168 = call i32 @lj_str_resize(i32* %163, i32 %167)
  br label %169

169:                                              ; preds = %162, %154, %145
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 6
  %173 = load i32, i32* %172, align 8
  %174 = call i32* @gcref(i32 %173)
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %180

176:                                              ; preds = %169
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  store i32 132, i32* %179, align 8
  br label %187

180:                                              ; preds = %169
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 0
  store i32 131, i32* %183, align 8
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 5
  store i32 0, i32* %186, align 4
  br label %187

187:                                              ; preds = %180, %176
  br label %188

188:                                              ; preds = %187, %98
  %189 = load i64, i64* @GCSWEEPMAX, align 8
  %190 = load i64, i64* @GCSWEEPCOST, align 8
  %191 = mul i64 %189, %190
  store i64 %191, i64* %2, align 8
  br label %234

192:                                              ; preds = %1
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 6
  %196 = load i32, i32* %195, align 8
  %197 = call i32* @gcref(i32 %196)
  %198 = icmp ne i32* %197, null
  br i1 %198, label %199, label %225

199:                                              ; preds = %192
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @tvref(i32 %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %199
  %206 = load i64, i64* @LJ_MAX_MEM, align 8
  store i64 %206, i64* %2, align 8
  br label %234

207:                                              ; preds = %199
  %208 = load i32*, i32** %3, align 8
  %209 = call i32 @gc_finalize(i32* %208)
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @GCFINALIZECOST, align 8
  %215 = icmp ugt i64 %213, %214
  br i1 %215, label %216, label %223

216:                                              ; preds = %207
  %217 = load i64, i64* @GCFINALIZECOST, align 8
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 3
  %221 = load i64, i64* %220, align 8
  %222 = sub i64 %221, %217
  store i64 %222, i64* %220, align 8
  br label %223

223:                                              ; preds = %216, %207
  %224 = load i64, i64* @GCFINALIZECOST, align 8
  store i64 %224, i64* %2, align 8
  br label %234

225:                                              ; preds = %192
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 0
  store i32 131, i32* %228, align 8
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 5
  store i32 0, i32* %231, align 4
  store i64 0, i64* %2, align 8
  br label %234

232:                                              ; preds = %1
  %233 = call i32 @lua_assert(i32 0)
  store i64 0, i64* %2, align 8
  br label %234

234:                                              ; preds = %232, %225, %223, %205, %188, %77, %38, %36, %26, %23, %13
  %235 = load i64, i64* %2, align 8
  ret i64 %235
}

declare dso_local %struct.TYPE_12__* @G(i32*) #1

declare dso_local i32 @gc_mark_start(%struct.TYPE_12__*) #1

declare dso_local i32* @gcref(i32) #1

declare dso_local i64 @propagatemark(%struct.TYPE_12__*) #1

declare dso_local i32 @tvref(i32) #1

declare dso_local i32 @atomic(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @gc_fullsweep(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @setmref(i32, i32) #1

declare dso_local i32 @gc_sweep(%struct.TYPE_12__*, i32*, i64) #1

declare dso_local i32* @mref(i32, i32) #1

declare dso_local i32 @lj_str_resize(i32*, i32) #1

declare dso_local i32 @gc_finalize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

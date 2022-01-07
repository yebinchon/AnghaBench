; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_vout_helper.c_DrawWithShaders.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_vout_helper.c_DrawWithShaders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64*, i32, %struct.TYPE_16__, i32, i32, i32*, %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_16__ = type { i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32)*, i32 (i32)*, i32 (i32, i32)*, i32 (i32, i64)*, i32 (i64)* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.prgm = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_18__* }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32*, i32 }
%struct.TYPE_18__ = type { i32, i32 (%struct.TYPE_18__*, i32, i32, float)* }

@GL_TEXTURE0 = common dso_local global i64 0, align 8
@GL_ARRAY_BUFFER = common dso_local global i32 0, align 4
@GL_FLOAT = common dso_local global i32 0, align 4
@GL_ELEMENT_ARRAY_BUFFER = common dso_local global i32 0, align 4
@GL_FALSE = common dso_local global i32 0, align 4
@GL_TRIANGLES = common dso_local global i32 0, align 4
@GL_UNSIGNED_SHORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.prgm*)* @DrawWithShaders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DrawWithShaders(%struct.TYPE_17__* %0, %struct.prgm* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.prgm*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.prgm* %1, %struct.prgm** %4, align 8
  %7 = load %struct.prgm*, %struct.prgm** %4, align 8
  %8 = getelementptr inbounds %struct.prgm, %struct.prgm* %7, i32 0, i32 3
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_18__* %9, %struct.TYPE_18__** %5, align 8
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 1
  %12 = load i32 (%struct.TYPE_18__*, i32, i32, float)*, i32 (%struct.TYPE_18__*, i32, i32, float)** %11, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 8
  %20 = call i32 %12(%struct.TYPE_18__* %13, i32 %16, i32 %19, float 1.000000e+00)
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %117, %2
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 6
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ult i32 %22, %29
  br i1 %30, label %31, label %120

31:                                               ; preds = %21
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 6
  %45 = load i32 (i64)*, i32 (i64)** %44, align 8
  %46 = load i64, i64* @GL_TEXTURE0, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = call i32 %45(i64 %49)
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 5
  %54 = load i32 (i32, i64)*, i32 (i32, i64)** %53, align 8
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = call i32 %54(i32 %57, i64 %64)
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 4
  %69 = load i32 (i32, i32)*, i32 (i32, i32)** %68, align 8
  %70 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 5
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 %69(i32 %70, i32 %77)
  %79 = load %struct.prgm*, %struct.prgm** %4, align 8
  %80 = getelementptr inbounds %struct.prgm, %struct.prgm* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, -1
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 3
  %93 = load i32 (i32)*, i32 (i32)** %92, align 8
  %94 = load %struct.prgm*, %struct.prgm** %4, align 8
  %95 = getelementptr inbounds %struct.prgm, %struct.prgm* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 %93(i32 %101)
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 2
  %106 = load i32 (i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32)** %105, align 8
  %107 = load %struct.prgm*, %struct.prgm** %4, align 8
  %108 = getelementptr inbounds %struct.prgm, %struct.prgm* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @GL_FLOAT, align 4
  %116 = call i32 %106(i32 %114, i32 2, i32 %115, i32 0, i32 0, i32 0)
  br label %117

117:                                              ; preds = %31
  %118 = load i32, i32* %6, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %6, align 4
  br label %21

120:                                              ; preds = %21
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 4
  %124 = load i32 (i32, i32)*, i32 (i32, i32)** %123, align 8
  %125 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = call i32 %124(i32 %125, i32 %128)
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 4
  %133 = load i32 (i32, i32)*, i32 (i32, i32)** %132, align 8
  %134 = load i32, i32* @GL_ELEMENT_ARRAY_BUFFER, align 4
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = call i32 %133(i32 %134, i32 %137)
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 3
  %142 = load i32 (i32)*, i32 (i32)** %141, align 8
  %143 = load %struct.prgm*, %struct.prgm** %4, align 8
  %144 = getelementptr inbounds %struct.prgm, %struct.prgm* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = call i32 %142(i32 %146)
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 2
  %151 = load i32 (i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32)** %150, align 8
  %152 = load %struct.prgm*, %struct.prgm** %4, align 8
  %153 = getelementptr inbounds %struct.prgm, %struct.prgm* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @GL_FLOAT, align 4
  %157 = call i32 %151(i32 %155, i32 3, i32 %156, i32 0, i32 0, i32 0)
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 1
  %161 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %160, align 8
  %162 = load %struct.prgm*, %struct.prgm** %4, align 8
  %163 = getelementptr inbounds %struct.prgm, %struct.prgm* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @GL_FALSE, align 4
  %167 = load %struct.prgm*, %struct.prgm** %4, align 8
  %168 = getelementptr inbounds %struct.prgm, %struct.prgm* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = call i32 %161(i32 %165, i32 1, i32 %166, i32 %170)
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 1
  %175 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %174, align 8
  %176 = load %struct.prgm*, %struct.prgm** %4, align 8
  %177 = getelementptr inbounds %struct.prgm, %struct.prgm* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @GL_FALSE, align 4
  %181 = load %struct.prgm*, %struct.prgm** %4, align 8
  %182 = getelementptr inbounds %struct.prgm, %struct.prgm* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = call i32 %175(i32 %179, i32 1, i32 %180, i32 %184)
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 1
  %189 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %188, align 8
  %190 = load %struct.prgm*, %struct.prgm** %4, align 8
  %191 = getelementptr inbounds %struct.prgm, %struct.prgm* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @GL_FALSE, align 4
  %195 = load %struct.prgm*, %struct.prgm** %4, align 8
  %196 = getelementptr inbounds %struct.prgm, %struct.prgm* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i32 %189(i32 %193, i32 1, i32 %194, i32 %198)
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 1
  %203 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %202, align 8
  %204 = load %struct.prgm*, %struct.prgm** %4, align 8
  %205 = getelementptr inbounds %struct.prgm, %struct.prgm* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @GL_FALSE, align 4
  %209 = load %struct.prgm*, %struct.prgm** %4, align 8
  %210 = getelementptr inbounds %struct.prgm, %struct.prgm* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = call i32 %203(i32 %207, i32 1, i32 %208, i32 %212)
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 0
  %217 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %216, align 8
  %218 = load i32, i32* @GL_TRIANGLES, align 4
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @GL_UNSIGNED_SHORT, align 4
  %223 = call i32 %217(i32 %218, i32 %221, i32 %222, i32 0)
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

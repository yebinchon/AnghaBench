; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_frame.c_frame_init_par.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_frame.c_frame_init_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32*, i32, i32, i32, i32*, i32*, i32*, i64, %struct.TYPE_16__, %struct.TYPE_14__, i32, i32*, i32*, i32, i32, %struct.TYPE_13__, i32*, i32*, i32*, i32*, i64, i32*, i64, i32*, %struct.TYPE_12__, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64, i64, i32*, i32* }

@TRUE = common dso_local global i32 0, align 4
@NTOM_MUL = common dso_local global i32 0, align 4
@MPG123_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @frame_init_par(%struct.TYPE_15__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* @TRUE, align 4
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 25
  store i32 %5, i32* %7, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 24
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 3
  store i32* null, i32** %10, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 24
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  store i32* null, i32** %13, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 24
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 24
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 23
  store i32* null, i32** %21, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 22
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 21
  store i32* null, i32** %25, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 20
  store i64 0, i64* %27, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 19
  store i32* null, i32** %29, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 17
  store i32* null, i32** %31, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 16
  store i32* null, i32** %33, align 8
  %34 = call i32 (...) @defdec()
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 15
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 15
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @decclass(i32 %41)
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 15
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @NTOM_MUL, align 4
  %47 = ashr i32 %46, 1
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 %47, i32* %51, align 4
  %52 = load i32, i32* @NTOM_MUL, align 4
  %53 = ashr i32 %52, 1
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  store i32 %53, i32* %57, align 4
  %58 = load i32, i32* @NTOM_MUL, align 4
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %62 = call i32 @mpg123_reset_eq(%struct.TYPE_15__* %61)
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 14
  %65 = call i32 @init_icy(i32* %64)
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %67 = call i32 @init_id3(%struct.TYPE_15__* %66)
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 13
  %70 = call i32 @invalidate_format(i32* %69)
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 9
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 6
  store i32* null, i32** %73, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 9
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 5
  store i32* null, i32** %76, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 9
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 4
  store i32* null, i32** %79, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 9
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 3
  store i32* null, i32** %82, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 9
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 2
  store i32* null, i32** %85, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 9
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 1
  store i32* null, i32** %88, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 12
  store i32* null, i32** %90, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 11
  store i32* null, i32** %92, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 2
  store i32 1, i32* %94, align 4
  %95 = load i32, i32* @MPG123_OK, align 4
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 10
  store i32 %95, i32* %97, align 8
  %98 = load i32*, i32** %4, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %2
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 8
  %103 = call i32 @frame_default_pars(%struct.TYPE_16__* %102)
  br label %109

104:                                              ; preds = %2
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 8
  %107 = load i32*, i32** %4, align 8
  %108 = call i32 @memcpy(%struct.TYPE_16__* %106, i32* %107, i32 4)
  br label %109

109:                                              ; preds = %104, %100
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 9
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @bc_prepare(i32* %112, i32 %116, i32 %120)
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 7
  store i64 0, i64* %123, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %125 = call i32 @frame_fixed_reset(%struct.TYPE_15__* %124)
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 6
  store i32* null, i32** %127, align 8
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 5
  store i32* null, i32** %129, align 8
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 4
  store i32* null, i32** %131, align 8
  ret void
}

declare dso_local i32 @defdec(...) #1

declare dso_local i32 @decclass(i32) #1

declare dso_local i32 @mpg123_reset_eq(%struct.TYPE_15__*) #1

declare dso_local i32 @init_icy(i32*) #1

declare dso_local i32 @init_id3(%struct.TYPE_15__*) #1

declare dso_local i32 @invalidate_format(i32*) #1

declare dso_local i32 @frame_default_pars(%struct.TYPE_16__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @bc_prepare(i32*, i32, i32) #1

declare dso_local i32 @frame_fixed_reset(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

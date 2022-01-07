; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_opt_sink.c_sink_sweep_ins.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_opt_sink.c_sink_sweep_ins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64, i64 }
%struct.TYPE_13__ = type { i32, i8*, %struct.TYPE_14__, i64, i64 }
%struct.TYPE_14__ = type { i32 }

@RID_SINK = common dso_local global i32 0, align 4
@REGSP_INIT = common dso_local global i8* null, align 8
@IRT_GUARD = common dso_local global i32 0, align 4
@LJ_HASFFI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @sink_sweep_ins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sink_sweep_ins(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = call %struct.TYPE_13__* @IR(i64 %11)
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %4, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %16, 1
  %18 = call %struct.TYPE_13__* @IR(i64 %17)
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %3, align 8
  br label %19

19:                                               ; preds = %175, %1
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %22 = icmp uge %struct.TYPE_13__* %20, %21
  br i1 %22, label %23, label %178

23:                                               ; preds = %19
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %165 [
    i32 137, label %27
    i32 133, label %27
    i32 134, label %27
    i32 128, label %27
    i32 132, label %64
    i32 129, label %89
    i32 130, label %89
    i32 131, label %121
  ]

27:                                               ; preds = %23, %23, %23, %23
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %30 = call %struct.TYPE_13__* @sink_checkalloc(%struct.TYPE_12__* %28, %struct.TYPE_13__* %29)
  store %struct.TYPE_13__* %30, %struct.TYPE_13__** %5, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %32 = icmp ne %struct.TYPE_13__* %31, null
  br i1 %32, label %33, label %59

33:                                               ; preds = %27
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @irt_ismarked(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %59, label %40

40:                                               ; preds = %33
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %43 = ptrtoint %struct.TYPE_13__* %41 to i64
  %44 = ptrtoint %struct.TYPE_13__* %42 to i64
  %45 = sub i64 %43, %44
  %46 = sdiv exact i64 %45, 40
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* @RID_SINK, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp sgt i32 %49, 255
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %54

52:                                               ; preds = %40
  %53 = load i32, i32* %6, align 4
  br label %54

54:                                               ; preds = %52, %51
  %55 = phi i32 [ 255, %51 ], [ %53, %52 ]
  %56 = call i8* @REGSP(i32 %48, i32 %55)
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  br label %63

59:                                               ; preds = %33, %27
  %60 = load i8*, i8** @REGSP_INIT, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  br label %63

63:                                               ; preds = %59, %54
  br label %174

64:                                               ; preds = %23
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = call %struct.TYPE_13__* @IR(i64 %67)
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @irt_ismarked(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %64
  %75 = load i32, i32* @RID_SINK, align 4
  %76 = call i8* @REGSP(i32 %75, i32 0)
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  br label %88

79:                                               ; preds = %64
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @irt_clearmark(i32 %83)
  %85 = load i8*, i8** @REGSP_INIT, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  br label %88

88:                                               ; preds = %79, %74
  br label %174

89:                                               ; preds = %23, %23
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @irt_ismarked(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %111, label %96

96:                                               ; preds = %89
  %97 = load i32, i32* @IRT_GUARD, align 4
  %98 = xor i32 %97, -1
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %102, %98
  store i32 %103, i32* %101, align 8
  %104 = load i32, i32* @RID_SINK, align 4
  %105 = call i8* @REGSP(i32 %104, i32 0)
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  store i32 1, i32* %110, align 8
  br label %120

111:                                              ; preds = %89
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @irt_clearmark(i32 %115)
  %117 = load i8*, i8** @REGSP_INIT, align 8
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 1
  store i8* %117, i8** %119, align 8
  br label %120

120:                                              ; preds = %111, %96
  br label %174

121:                                              ; preds = %23
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = call %struct.TYPE_13__* @IR(i64 %124)
  store %struct.TYPE_13__* %125, %struct.TYPE_13__** %7, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @irt_ismarked(i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %160, label %132

132:                                              ; preds = %121
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp eq i32 %135, 129
  br i1 %136, label %155, label %137

137:                                              ; preds = %132
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp eq i32 %140, 130
  br i1 %141, label %155, label %142

142:                                              ; preds = %137
  %143 = load i32, i32* @LJ_HASFFI, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %160

145:                                              ; preds = %142
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp eq i32 %148, 136
  br i1 %149, label %155, label %150

150:                                              ; preds = %145
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp eq i32 %153, 135
  br i1 %154, label %155, label %160

155:                                              ; preds = %150, %145, %137, %132
  %156 = load i32, i32* @RID_SINK, align 4
  %157 = call i8* @REGSP(i32 %156, i32 0)
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 1
  store i8* %157, i8** %159, align 8
  br label %164

160:                                              ; preds = %150, %142, %121
  %161 = load i8*, i8** @REGSP_INIT, align 8
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 1
  store i8* %161, i8** %163, align 8
  br label %164

164:                                              ; preds = %160, %155
  br label %174

165:                                              ; preds = %23
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @irt_clearmark(i32 %169)
  %171 = load i8*, i8** @REGSP_INIT, align 8
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 1
  store i8* %171, i8** %173, align 8
  br label %174

174:                                              ; preds = %165, %164, %120, %88, %63
  br label %175

175:                                              ; preds = %174
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 -1
  store %struct.TYPE_13__* %177, %struct.TYPE_13__** %3, align 8
  br label %19

178:                                              ; preds = %19
  ret void
}

declare dso_local %struct.TYPE_13__* @IR(i64) #1

declare dso_local %struct.TYPE_13__* @sink_checkalloc(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i32 @irt_ismarked(i32) #1

declare dso_local i8* @REGSP(i32, i32) #1

declare dso_local i32 @irt_clearmark(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

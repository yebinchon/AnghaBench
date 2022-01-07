; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_opt_sink.c_sink_sweep_ins.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_opt_sink.c_sink_sweep_ins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i64, i64 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_15__, i8*, i64, i64 }
%struct.TYPE_15__ = type { i32 }

@REF_BASE = common dso_local global i64 0, align 8
@RID_SINK = common dso_local global i32 0, align 4
@REGSP_INIT = common dso_local global i8* null, align 8
@IRT_GUARD = common dso_local global i32 0, align 4
@LJ_HASFFI = common dso_local global i32 0, align 4
@IR_KNULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @sink_sweep_ins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sink_sweep_ins(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %8 = load i64, i64* @REF_BASE, align 8
  %9 = call %struct.TYPE_14__* @IR(i64 %8)
  store %struct.TYPE_14__* %9, %struct.TYPE_14__** %4, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = sub nsw i64 %13, 1
  %15 = call %struct.TYPE_14__* @IR(i64 %14)
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %3, align 8
  br label %16

16:                                               ; preds = %172, %1
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %19 = icmp uge %struct.TYPE_14__* %17, %18
  br i1 %19, label %20, label %175

20:                                               ; preds = %16
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %162 [
    i32 137, label %24
    i32 133, label %24
    i32 134, label %24
    i32 128, label %24
    i32 132, label %61
    i32 129, label %86
    i32 130, label %86
    i32 131, label %118
  ]

24:                                               ; preds = %20, %20, %20, %20
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %27 = call %struct.TYPE_14__* @sink_checkalloc(%struct.TYPE_13__* %25, %struct.TYPE_14__* %26)
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %5, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %29 = icmp ne %struct.TYPE_14__* %28, null
  br i1 %29, label %30, label %56

30:                                               ; preds = %24
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @irt_ismarked(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %56, label %37

37:                                               ; preds = %30
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %40 = ptrtoint %struct.TYPE_14__* %38 to i64
  %41 = ptrtoint %struct.TYPE_14__* %39 to i64
  %42 = sub i64 %40, %41
  %43 = sdiv exact i64 %42, 32
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* @RID_SINK, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp sgt i32 %46, 255
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %51

49:                                               ; preds = %37
  %50 = load i32, i32* %6, align 4
  br label %51

51:                                               ; preds = %49, %48
  %52 = phi i32 [ 255, %48 ], [ %50, %49 ]
  %53 = call i8* @REGSP(i32 %45, i32 %52)
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  br label %60

56:                                               ; preds = %30, %24
  %57 = load i8*, i8** @REGSP_INIT, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  br label %60

60:                                               ; preds = %56, %51
  br label %171

61:                                               ; preds = %20
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = call %struct.TYPE_14__* @IR(i64 %64)
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @irt_ismarked(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %61
  %72 = load i32, i32* @RID_SINK, align 4
  %73 = call i8* @REGSP(i32 %72, i32 0)
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 2
  store i8* %73, i8** %75, align 8
  br label %85

76:                                               ; preds = %61
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @irt_clearmark(i32 %80)
  %82 = load i8*, i8** @REGSP_INIT, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 2
  store i8* %82, i8** %84, align 8
  br label %85

85:                                               ; preds = %76, %71
  br label %171

86:                                               ; preds = %20, %20
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @irt_ismarked(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %108, label %93

93:                                               ; preds = %86
  %94 = load i32, i32* @IRT_GUARD, align 4
  %95 = xor i32 %94, -1
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, %95
  store i32 %100, i32* %98, align 4
  %101 = load i32, i32* @RID_SINK, align 4
  %102 = call i8* @REGSP(i32 %101, i32 0)
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 2
  store i8* %102, i8** %104, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  store i32 1, i32* %107, align 8
  br label %117

108:                                              ; preds = %86
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @irt_clearmark(i32 %112)
  %114 = load i8*, i8** @REGSP_INIT, align 8
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 2
  store i8* %114, i8** %116, align 8
  br label %117

117:                                              ; preds = %108, %93
  br label %171

118:                                              ; preds = %20
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = call %struct.TYPE_14__* @IR(i64 %121)
  store %struct.TYPE_14__* %122, %struct.TYPE_14__** %7, align 8
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @irt_ismarked(i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %157, label %129

129:                                              ; preds = %118
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp eq i32 %132, 129
  br i1 %133, label %152, label %134

134:                                              ; preds = %129
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp eq i32 %137, 130
  br i1 %138, label %152, label %139

139:                                              ; preds = %134
  %140 = load i32, i32* @LJ_HASFFI, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %157

142:                                              ; preds = %139
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp eq i32 %145, 136
  br i1 %146, label %152, label %147

147:                                              ; preds = %142
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp eq i32 %150, 135
  br i1 %151, label %152, label %157

152:                                              ; preds = %147, %142, %134, %129
  %153 = load i32, i32* @RID_SINK, align 4
  %154 = call i8* @REGSP(i32 %153, i32 0)
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 2
  store i8* %154, i8** %156, align 8
  br label %161

157:                                              ; preds = %147, %139, %118
  %158 = load i8*, i8** @REGSP_INIT, align 8
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 2
  store i8* %158, i8** %160, align 8
  br label %161

161:                                              ; preds = %157, %152
  br label %171

162:                                              ; preds = %20
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @irt_clearmark(i32 %166)
  %168 = load i8*, i8** @REGSP_INIT, align 8
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 2
  store i8* %168, i8** %170, align 8
  br label %171

171:                                              ; preds = %162, %161, %117, %85, %60
  br label %172

172:                                              ; preds = %171
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 -1
  store %struct.TYPE_14__* %174, %struct.TYPE_14__** %3, align 8
  br label %16

175:                                              ; preds = %16
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = call %struct.TYPE_14__* @IR(i64 %179)
  store %struct.TYPE_14__* %180, %struct.TYPE_14__** %3, align 8
  br label %181

181:                                              ; preds = %210, %175
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %184 = icmp ult %struct.TYPE_14__* %182, %183
  br i1 %184, label %185, label %213

185:                                              ; preds = %181
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @irt_clearmark(i32 %189)
  %191 = load i8*, i8** @REGSP_INIT, align 8
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 2
  store i8* %191, i8** %193, align 8
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i64 @irt_is64(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %209

200:                                              ; preds = %185
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @IR_KNULL, align 4
  %205 = icmp ne i32 %203, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %200
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 1
  store %struct.TYPE_14__* %208, %struct.TYPE_14__** %3, align 8
  br label %209

209:                                              ; preds = %206, %200, %185
  br label %210

210:                                              ; preds = %209
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 1
  store %struct.TYPE_14__* %212, %struct.TYPE_14__** %3, align 8
  br label %181

213:                                              ; preds = %181
  ret void
}

declare dso_local %struct.TYPE_14__* @IR(i64) #1

declare dso_local %struct.TYPE_14__* @sink_checkalloc(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i32 @irt_ismarked(i32) #1

declare dso_local i8* @REGSP(i32, i32) #1

declare dso_local i32 @irt_clearmark(i32) #1

declare dso_local i64 @irt_is64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

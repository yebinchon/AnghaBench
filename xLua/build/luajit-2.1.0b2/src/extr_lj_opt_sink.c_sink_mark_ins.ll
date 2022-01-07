; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_opt_sink.c_sink_mark_ins.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_opt_sink.c_sink_mark_ins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32, i64, i64, i32 }

@IRFL_TAB_META = common dso_local global i64 0, align 8
@IR_TNEW = common dso_local global i32 0, align 4
@IR_TDUP = common dso_local global i32 0, align 4
@LJ_HASFFI = common dso_local global i32 0, align 4
@IR_CNEW = common dso_local global i32 0, align 4
@REF_FIRST = common dso_local global i64 0, align 8
@IR_HIOP = common dso_local global i32 0, align 4
@LJ_32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @sink_mark_ins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sink_mark_ins(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = sub nsw i64 %11, 1
  %13 = call %struct.TYPE_13__* @IR(i64 %12)
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %4, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %3, align 8
  br label %15

15:                                               ; preds = %200, %1
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %157 [
    i32 141, label %19
    i32 140, label %20
    i32 143, label %20
    i32 134, label %20
    i32 129, label %20
    i32 131, label %20
    i32 136, label %28
    i32 142, label %49
    i32 133, label %49
    i32 135, label %49
    i32 128, label %49
    i32 130, label %85
    i32 139, label %93
    i32 132, label %101
  ]

19:                                               ; preds = %15
  ret void

20:                                               ; preds = %15, %15, %15, %15, %15
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = call %struct.TYPE_13__* @IR(i64 %23)
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @irt_setmark(i32 %26)
  br label %199

28:                                               ; preds = %15
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @irt_ismarked(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @IRFL_TAB_META, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %34, %28
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = call %struct.TYPE_13__* @IR(i64 %43)
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @irt_setmark(i32 %46)
  br label %48

48:                                               ; preds = %40, %34
  br label %199

49:                                               ; preds = %15, %15, %15, %15
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %52 = call %struct.TYPE_13__* @sink_checkalloc(%struct.TYPE_12__* %50, %struct.TYPE_13__* %51)
  store %struct.TYPE_13__* %52, %struct.TYPE_13__** %5, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %54 = icmp ne %struct.TYPE_13__* %53, null
  br i1 %54, label %55, label %69

55:                                               ; preds = %49
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @irt_isphi(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %55
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @sink_checkphi(%struct.TYPE_12__* %62, %struct.TYPE_13__* %63, i64 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %61, %49
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = call %struct.TYPE_13__* @IR(i64 %72)
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @irt_setmark(i32 %75)
  br label %77

77:                                               ; preds = %69, %61, %55
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = call %struct.TYPE_13__* @IR(i64 %80)
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @irt_setmark(i32 %83)
  br label %199

85:                                               ; preds = %15
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = call %struct.TYPE_13__* @IR(i64 %88)
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @irt_setmark(i32 %91)
  br label %199

93:                                               ; preds = %15
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = call %struct.TYPE_13__* @IR(i64 %96)
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @irt_setmark(i32 %99)
  br label %199

101:                                              ; preds = %15
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = call %struct.TYPE_13__* @IR(i64 %104)
  store %struct.TYPE_13__* %105, %struct.TYPE_13__** %6, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = call %struct.TYPE_13__* @IR(i64 %108)
  store %struct.TYPE_13__* %109, %struct.TYPE_13__** %7, align 8
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 4
  store i32 0, i32* %111, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 4
  store i32 0, i32* %113, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp eq i32 %116, %119
  br i1 %120, label %121, label %148

121:                                              ; preds = %101
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @IR_TNEW, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %147, label %127

127:                                              ; preds = %121
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @IR_TDUP, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %147, label %133

133:                                              ; preds = %127
  %134 = load i32, i32* @LJ_HASFFI, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %148

136:                                              ; preds = %133
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @IR_CNEW, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %147, label %142

142:                                              ; preds = %136
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp eq i32 %145, 137
  br i1 %146, label %147, label %148

147:                                              ; preds = %142, %136, %127, %121
  br label %199

148:                                              ; preds = %142, %133, %101
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @irt_setmark(i32 %151)
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @irt_setmark(i32 %155)
  br label %199

157:                                              ; preds = %15
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @irt_ismarked(i32 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %169, label %163

163:                                              ; preds = %157
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @irt_isguard(i32 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %198

169:                                              ; preds = %163, %157
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @REF_FIRST, align 8
  %174 = icmp sge i64 %172, %173
  br i1 %174, label %175, label %183

175:                                              ; preds = %169
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = call %struct.TYPE_13__* @IR(i64 %178)
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @irt_setmark(i32 %181)
  br label %183

183:                                              ; preds = %175, %169
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @REF_FIRST, align 8
  %188 = icmp sge i64 %186, %187
  br i1 %188, label %189, label %197

189:                                              ; preds = %183
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = call %struct.TYPE_13__* @IR(i64 %192)
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @irt_setmark(i32 %195)
  br label %197

197:                                              ; preds = %189, %183
  br label %198

198:                                              ; preds = %197, %163
  br label %199

199:                                              ; preds = %198, %148, %147, %93, %85, %77, %48, %20
  br label %200

200:                                              ; preds = %199
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 -1
  store %struct.TYPE_13__* %202, %struct.TYPE_13__** %3, align 8
  br label %15
}

declare dso_local %struct.TYPE_13__* @IR(i64) #1

declare dso_local i32 @irt_setmark(i32) #1

declare dso_local i32 @irt_ismarked(i32) #1

declare dso_local %struct.TYPE_13__* @sink_checkalloc(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i32 @irt_isphi(i32) #1

declare dso_local i32 @sink_checkphi(%struct.TYPE_12__*, %struct.TYPE_13__*, i64) #1

declare dso_local i32 @irt_isguard(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

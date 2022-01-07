; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_input.c_End.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_input.c_End.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32*, i32, %struct.TYPE_5__*, i32*, i32*, i32*, i64, i64, i64, i64, i32, i32* }
%struct.TYPE_5__ = type { i32, i32 }

@END_S = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i32 0, align 4
@ES_OUT_MODE_NONE = common dso_local global i32 0, align 4
@ES_OUT_MODE_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @End to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @End(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call %struct.TYPE_4__* @input_priv(i32* %7)
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %3, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @END_S, align 4
  %11 = load i32, i32* @VLC_TICK_INVALID, align 4
  %12 = call i32 @input_ChangeState(i32* %9, i32 %10, i32 %11)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 9
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* @ES_OUT_MODE_NONE, align 4
  %17 = call i32 @es_out_SetMode(i64 %15, i32 %16)
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %33, %1
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 13
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @InputSourceDestroy(i32 %31)
  br label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %18

36:                                               ; preds = %18
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 13
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @free(i32* %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 12
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @InputSourceDestroy(i32 %43)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 11
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 10
  store i64 0, i64* %48, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 9
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %36
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 9
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @es_out_Delete(i64 %56)
  br label %58

58:                                               ; preds = %53, %36
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 8
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @ES_OUT_MODE_END, align 4
  %63 = call i32 @es_out_SetMode(i64 %61, i32 %62)
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 7
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %85

68:                                               ; preds = %58
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  store %struct.TYPE_5__* %71, %struct.TYPE_5__** %5, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = call i32 @vlc_mutex_lock(i32* %73)
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 7
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @input_stats_Compute(i32* %77, i32 %80)
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = call i32 @vlc_mutex_unlock(i32* %83)
  br label %85

85:                                               ; preds = %68, %58
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = call i32 @vlc_mutex_lock(i32* %89)
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %93, 0
  br i1 %94, label %95, label %130

95:                                               ; preds = %85
  store i32 0, i32* %6, align 4
  br label %96

96:                                               ; preds = %112, %95
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp slt i64 %98, %101
  br i1 %102, label %103, label %115

103:                                              ; preds = %96
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 6
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @vlc_input_attachment_Delete(i32 %110)
  br label %112

112:                                              ; preds = %103
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %6, align 4
  br label %96

115:                                              ; preds = %96
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = trunc i64 %118 to i32
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 6
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @TAB_CLEAN(i32 %119, i32* %122)
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 5
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @free(i32* %126)
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 5
  store i32* null, i32** %129, align 8
  br label %130

130:                                              ; preds = %115, %85
  %131 = load i32*, i32** %2, align 8
  %132 = call %struct.TYPE_4__* @input_priv(i32* %131)
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 4
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = call i32 @vlc_mutex_unlock(i32* %135)
  %137 = load i32*, i32** %2, align 8
  %138 = call %struct.TYPE_4__* @input_priv(i32* %137)
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = load i32*, i32** %2, align 8
  %142 = call %struct.TYPE_4__* @input_priv(i32* %141)
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @input_resource_RequestSout(i32* %140, i32 %144, i32* null)
  %146 = load i32*, i32** %2, align 8
  %147 = call %struct.TYPE_4__* @input_priv(i32* %146)
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = call i32 @input_resource_SetInput(i32* %149, i32* null)
  %151 = load i32*, i32** %2, align 8
  %152 = call %struct.TYPE_4__* @input_priv(i32* %151)
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %165

156:                                              ; preds = %130
  %157 = load i32*, i32** %2, align 8
  %158 = call %struct.TYPE_4__* @input_priv(i32* %157)
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = call i32 @input_resource_Release(i32* %160)
  %162 = load i32*, i32** %2, align 8
  %163 = call %struct.TYPE_4__* @input_priv(i32* %162)
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 2
  store i32* null, i32** %164, align 8
  br label %165

165:                                              ; preds = %156, %130
  ret void
}

declare dso_local %struct.TYPE_4__* @input_priv(i32*) #1

declare dso_local i32 @input_ChangeState(i32*, i32, i32) #1

declare dso_local i32 @es_out_SetMode(i64, i32) #1

declare dso_local i32 @InputSourceDestroy(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @es_out_Delete(i64) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @input_stats_Compute(i32*, i32) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @vlc_input_attachment_Delete(i32) #1

declare dso_local i32 @TAB_CLEAN(i32, i32*) #1

declare dso_local i32 @input_resource_RequestSout(i32*, i32, i32*) #1

declare dso_local i32 @input_resource_SetInput(i32*, i32*) #1

declare dso_local i32 @input_resource_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

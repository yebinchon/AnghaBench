; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_wrap.c_ME_SplitByBacktracking.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_wrap.c_ME_SplitByBacktracking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_22__*, %struct.TYPE_22__*, i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Must backtrack to split at: %s\0A\00", align 1
@MERF_GRAPHICS = common dso_local global i32 0, align 4
@MERF_TAB = common dso_local global i32 0, align 4
@MERF_SPLITTABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Splittable, but no whitespaces\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Backtracking failed, trying desperate: %s\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_22__* (%struct.TYPE_20__*, %struct.TYPE_22__*, i32)* @ME_SplitByBacktracking to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_22__* @ME_SplitByBacktracking(%struct.TYPE_20__* %0, %struct.TYPE_22__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_22__* %15, %struct.TYPE_22__** %8, align 8
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  store %struct.TYPE_21__* %18, %struct.TYPE_21__** %13, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %24 = call i32 @find_split_point(%struct.TYPE_23__* %21, i32 %22, %struct.TYPE_21__* %23)
  store i32 %24, i32* %10, align 4
  store i32 %24, i32* %11, align 4
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp sgt i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp slt i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %3
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %41 = call i32 @get_text(%struct.TYPE_21__* %40, i32 0)
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @reverse_find_whitespace(i32 %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call %struct.TYPE_22__* @ME_MaximizeSplit(%struct.TYPE_20__* %44, %struct.TYPE_22__* %45, i32 %46)
  store %struct.TYPE_22__* %47, %struct.TYPE_22__** %9, align 8
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %49 = icmp ne %struct.TYPE_22__* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  store %struct.TYPE_22__* %51, %struct.TYPE_22__** %4, align 8
  br label %210

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52, %3
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = call i32 @debugstr_run(%struct.TYPE_21__* %56)
  %58 = call i32 @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %60, align 8
  %62 = icmp ne %struct.TYPE_22__* %61, null
  br i1 %62, label %63, label %172

63:                                               ; preds = %53
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @MERF_GRAPHICS, align 4
  %72 = load i32, i32* @MERF_TAB, align 4
  %73 = or i32 %71, %72
  %74 = and i32 %70, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %63
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %87, align 8
  store %struct.TYPE_22__* %88, %struct.TYPE_22__** %4, align 8
  br label %210

89:                                               ; preds = %63
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @MERF_SPLITTABLE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %157

100:                                              ; preds = %89
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 4
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %107 = call i32 @ME_UpdateRunFlags(i32 %105, %struct.TYPE_21__* %106)
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @MERF_SPLITTABLE, align 4
  %116 = and i32 %114, %115
  %117 = call i32 @assert(i32 %116)
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %119, align 8
  store %struct.TYPE_22__* %120, %struct.TYPE_22__** %8, align 8
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  store %struct.TYPE_21__* %123, %struct.TYPE_21__** %13, align 8
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %12, align 4
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %128 = call i32 @get_text(%struct.TYPE_21__* %127, i32 0)
  %129 = load i32, i32* %12, align 4
  %130 = call i32 @reverse_find_whitespace(i32 %128, i32 %129)
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* %12, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %100
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %136 = call i32 @get_text(%struct.TYPE_21__* %135, i32 0)
  %137 = load i32, i32* %12, align 4
  %138 = call i32 @reverse_find_non_whitespace(i32 %136, i32 %137)
  store i32 %138, i32* %10, align 4
  br label %139

139:                                              ; preds = %134, %100
  %140 = load i32, i32* %10, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %155

142:                                              ; preds = %139
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %145 = load i32, i32* %10, align 4
  %146 = call %struct.TYPE_22__* @split_run_extents(%struct.TYPE_20__* %143, %struct.TYPE_22__* %144, i32 %145)
  store %struct.TYPE_22__* %146, %struct.TYPE_22__** %14, align 8
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 3
  store i32 %151, i32* %153, align 8
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  store %struct.TYPE_22__* %154, %struct.TYPE_22__** %4, align 8
  br label %210

155:                                              ; preds = %139
  %156 = call i32 @assert(i32 0)
  br label %170

157:                                              ; preds = %89
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 3
  store i32 %164, i32* %166, align 8
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %168, align 8
  store %struct.TYPE_22__* %169, %struct.TYPE_22__** %4, align 8
  br label %210

170:                                              ; preds = %155
  br label %171

171:                                              ; preds = %170
  br label %172

172:                                              ; preds = %171, %53
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 0
  %176 = call i32 @debugstr_run(%struct.TYPE_21__* %175)
  %177 = call i32 @TRACE(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %176)
  %178 = load i32, i32* %11, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %172
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %183 = load i32, i32* %11, align 4
  %184 = call %struct.TYPE_22__* @split_run_extents(%struct.TYPE_20__* %181, %struct.TYPE_22__* %182, i32 %183)
  store %struct.TYPE_22__* %184, %struct.TYPE_22__** %4, align 8
  br label %210

185:                                              ; preds = %172
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** %187, align 8
  %189 = icmp ne %struct.TYPE_22__* %188, null
  br i1 %189, label %190, label %201

190:                                              ; preds = %185
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %193, align 8
  %195 = icmp ne %struct.TYPE_22__* %191, %194
  br i1 %195, label %196, label %201

196:                                              ; preds = %190
  %197 = load i32, i32* @TRUE, align 4
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 0
  store i32 %197, i32* %199, align 8
  %200 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_22__* %200, %struct.TYPE_22__** %4, align 8
  br label %210

201:                                              ; preds = %190, %185
  %202 = load i32, i32* %12, align 4
  %203 = icmp ne i32 %202, 1
  br i1 %203, label %204, label %208

204:                                              ; preds = %201
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %206 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %207 = call %struct.TYPE_22__* @split_run_extents(%struct.TYPE_20__* %205, %struct.TYPE_22__* %206, i32 1)
  store %struct.TYPE_22__* %207, %struct.TYPE_22__** %4, align 8
  br label %210

208:                                              ; preds = %201
  %209 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_22__* %209, %struct.TYPE_22__** %4, align 8
  br label %210

210:                                              ; preds = %208, %204, %196, %180, %157, %142, %76, %50
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  ret %struct.TYPE_22__* %211
}

declare dso_local i32 @find_split_point(%struct.TYPE_23__*, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @reverse_find_whitespace(i32, i32) #1

declare dso_local i32 @get_text(%struct.TYPE_21__*, i32) #1

declare dso_local %struct.TYPE_22__* @ME_MaximizeSplit(%struct.TYPE_20__*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_run(%struct.TYPE_21__*) #1

declare dso_local i32 @ME_UpdateRunFlags(i32, %struct.TYPE_21__*) #1

declare dso_local i32 @reverse_find_non_whitespace(i32, i32) #1

declare dso_local %struct.TYPE_22__* @split_run_extents(%struct.TYPE_20__*, %struct.TYPE_22__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

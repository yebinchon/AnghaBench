; ModuleID = '/home/carl/AnghaBench/stb/tests/caveview/extr_cave_render.c_world_init.c'
source_filename = "/home/carl/AnghaBench/stb/tests/caveview/extr_cave_render.c_world_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@num_mesh_workers = common dso_local global i32 0, align 4
@mesh_data = common dso_local global %struct.TYPE_2__* null, align 8
@WSTATE_idle = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Build time: %7.2fs\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @world_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 12, i32* %7, align 4
  %9 = call float (...) @SDL_GetPerformanceCounter()
  store float %9, float* %5, align 4
  %10 = load i32, i32* %7, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %72, %0
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %75

16:                                               ; preds = %12
  %17 = load i32, i32* %7, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %68, %16
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %71

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %64, %23
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 16
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp sle i32 %31, %32
  br label %34

34:                                               ; preds = %30, %25
  %35 = phi i1 [ false, %25 ], [ %33, %30 ]
  br i1 %35, label %36, label %67

36:                                               ; preds = %34
  %37 = load i32, i32* %3, align 4
  store i32 %37, i32* %1, align 4
  br label %38

38:                                               ; preds = %60, %36
  %39 = load i32, i32* %1, align 4
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 16
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* %1, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp sle i32 %44, %45
  br label %47

47:                                               ; preds = %43, %38
  %48 = phi i1 [ false, %38 ], [ %46, %43 ]
  br i1 %48, label %49, label %63

49:                                               ; preds = %47
  br label %50

50:                                               ; preds = %56, %49
  %51 = load i32, i32* %1, align 4
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @request_chunk(i32 %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = call i32 (...) @update_meshes_from_render_thread()
  %58 = call i32 @SDL_Delay(i32 1)
  br label %50

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %1, align 4
  %62 = add nsw i32 %61, 2
  store i32 %62, i32* %1, align 4
  br label %38

63:                                               ; preds = %47
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %2, align 4
  %66 = add nsw i32 %65, 2
  store i32 %66, i32* %2, align 4
  br label %25

67:                                               ; preds = %34
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 16
  store i32 %70, i32* %4, align 4
  br label %19

71:                                               ; preds = %19
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 16
  store i32 %74, i32* %3, align 4
  br label %12

75:                                               ; preds = %12
  br label %76

76:                                               ; preds = %101, %75
  %77 = call i32 (...) @update_meshes_from_render_thread()
  store i32 0, i32* %8, align 4
  br label %78

78:                                               ; preds = %93, %76
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @num_mesh_workers, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %78
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mesh_data, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @WSTATE_idle, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  br label %96

92:                                               ; preds = %82
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %78

96:                                               ; preds = %91, %78
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @num_mesh_workers, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %103

101:                                              ; preds = %96
  %102 = call i32 @SDL_Delay(i32 3)
  br label %76

103:                                              ; preds = %100
  %104 = call float (...) @SDL_GetPerformanceCounter()
  store float %104, float* %6, align 4
  %105 = load float, float* %6, align 4
  %106 = load float, float* %5, align 4
  %107 = fsub float %105, %106
  %108 = call i64 (...) @SDL_GetPerformanceFrequency()
  %109 = sitofp i64 %108 to float
  %110 = fdiv float %107, %109
  %111 = call i32 @ods(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), float %110)
  %112 = call i32 @reset_cache_size(i32 32)
  ret void
}

declare dso_local float @SDL_GetPerformanceCounter(...) #1

declare dso_local i32 @request_chunk(i32, i32) #1

declare dso_local i32 @update_meshes_from_render_thread(...) #1

declare dso_local i32 @SDL_Delay(i32) #1

declare dso_local i32 @ods(i8*, float) #1

declare dso_local i64 @SDL_GetPerformanceFrequency(...) #1

declare dso_local i32 @reset_cache_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

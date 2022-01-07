; ModuleID = '/home/carl/AnghaBench/stb/tests/caveview/extr_cave_render.c_prepare_threads.c'
source_filename = "/home/carl/AnghaBench/stb/tests/caveview/extr_cave_render.c_prepare_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8* }

@num_mesh_workers = common dso_local global i32 0, align 4
@MAX_MESH_WORKERS = common dso_local global i32 0, align 4
@mesh_data = common dso_local global %struct.TYPE_4__* null, align 8
@mesh_worker_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"mesh worker\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prepare_threads() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = call i32 (...) @SDL_GetCPUCount()
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp sgt i32 %5, 6
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4
  %9 = sdiv i32 %8, 2
  store i32 %9, i32* @num_mesh_workers, align 4
  br label %18

10:                                               ; preds = %0
  %11 = load i32, i32* %2, align 4
  %12 = icmp sgt i32 %11, 4
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 4, i32* @num_mesh_workers, align 4
  br label %17

14:                                               ; preds = %10
  %15 = load i32, i32* %2, align 4
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* @num_mesh_workers, align 4
  br label %17

17:                                               ; preds = %14, %13
  br label %18

18:                                               ; preds = %17, %7
  %19 = load i32, i32* @num_mesh_workers, align 4
  %20 = mul nsw i32 %19, 2
  store i32 %20, i32* @num_mesh_workers, align 4
  %21 = load i32, i32* @num_mesh_workers, align 4
  %22 = load i32, i32* @MAX_MESH_WORKERS, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @MAX_MESH_WORKERS, align 4
  store i32 %25, i32* @num_mesh_workers, align 4
  br label %26

26:                                               ; preds = %24, %18
  store i32 0, i32* %1, align 4
  br label %27

27:                                               ; preds = %45, %26
  %28 = load i32, i32* %1, align 4
  %29 = load i32, i32* @num_mesh_workers, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %27
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mesh_data, align 8
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %3, align 8
  %36 = call i8* @SDL_CreateSemaphore(i32 0)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = call i8* @SDL_CreateSemaphore(i32 0)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* @mesh_worker_handler, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = call i32 @SDL_CreateThread(i32 %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %43)
  br label %45

45:                                               ; preds = %31
  %46 = load i32, i32* %1, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %1, align 4
  br label %27

48:                                               ; preds = %27
  ret void
}

declare dso_local i32 @SDL_GetCPUCount(...) #1

declare dso_local i8* @SDL_CreateSemaphore(i32) #1

declare dso_local i32 @SDL_CreateThread(i32, i8*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/extr_fps_counter.c_run_fps_counter.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/extr_fps_counter.c_run_fps_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fps_counter = type { i64, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @run_fps_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_fps_counter(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.fps_counter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.fps_counter*
  store %struct.fps_counter* %7, %struct.fps_counter** %3, align 8
  %8 = load %struct.fps_counter*, %struct.fps_counter** %3, align 8
  %9 = getelementptr inbounds %struct.fps_counter, %struct.fps_counter* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @mutex_lock(i32 %10)
  br label %12

12:                                               ; preds = %78, %1
  %13 = load %struct.fps_counter*, %struct.fps_counter** %3, align 8
  %14 = getelementptr inbounds %struct.fps_counter, %struct.fps_counter* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %79

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %32, %18
  %20 = load %struct.fps_counter*, %struct.fps_counter** %3, align 8
  %21 = getelementptr inbounds %struct.fps_counter, %struct.fps_counter* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = load %struct.fps_counter*, %struct.fps_counter** %3, align 8
  %26 = getelementptr inbounds %struct.fps_counter, %struct.fps_counter* %25, i32 0, i32 3
  %27 = call i64 @SDL_AtomicGet(i32* %26)
  %28 = icmp ne i64 %27, 0
  %29 = xor i1 %28, true
  br label %30

30:                                               ; preds = %24, %19
  %31 = phi i1 [ false, %19 ], [ %29, %24 ]
  br i1 %31, label %32, label %40

32:                                               ; preds = %30
  %33 = load %struct.fps_counter*, %struct.fps_counter** %3, align 8
  %34 = getelementptr inbounds %struct.fps_counter, %struct.fps_counter* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.fps_counter*, %struct.fps_counter** %3, align 8
  %37 = getelementptr inbounds %struct.fps_counter, %struct.fps_counter* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @cond_wait(i32 %35, i32 %38)
  br label %19

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %53, %40
  %42 = load %struct.fps_counter*, %struct.fps_counter** %3, align 8
  %43 = getelementptr inbounds %struct.fps_counter, %struct.fps_counter* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load %struct.fps_counter*, %struct.fps_counter** %3, align 8
  %48 = getelementptr inbounds %struct.fps_counter, %struct.fps_counter* %47, i32 0, i32 3
  %49 = call i64 @SDL_AtomicGet(i32* %48)
  %50 = icmp ne i64 %49, 0
  br label %51

51:                                               ; preds = %46, %41
  %52 = phi i1 [ false, %41 ], [ %50, %46 ]
  br i1 %52, label %53, label %78

53:                                               ; preds = %51
  %54 = call i64 (...) @SDL_GetTicks()
  store i64 %54, i64* %4, align 8
  %55 = load %struct.fps_counter*, %struct.fps_counter** %3, align 8
  %56 = load i64, i64* %4, align 8
  %57 = call i32 @check_interval_expired(%struct.fps_counter* %55, i64 %56)
  %58 = load %struct.fps_counter*, %struct.fps_counter** %3, align 8
  %59 = getelementptr inbounds %struct.fps_counter, %struct.fps_counter* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %4, align 8
  %62 = icmp sgt i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @SDL_assert(i32 %63)
  %65 = load %struct.fps_counter*, %struct.fps_counter** %3, align 8
  %66 = getelementptr inbounds %struct.fps_counter, %struct.fps_counter* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %4, align 8
  %69 = sub nsw i64 %67, %68
  store i64 %69, i64* %5, align 8
  %70 = load %struct.fps_counter*, %struct.fps_counter** %3, align 8
  %71 = getelementptr inbounds %struct.fps_counter, %struct.fps_counter* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.fps_counter*, %struct.fps_counter** %3, align 8
  %74 = getelementptr inbounds %struct.fps_counter, %struct.fps_counter* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i64, i64* %5, align 8
  %77 = call i32 @cond_wait_timeout(i32 %72, i32 %75, i64 %76)
  br label %41

78:                                               ; preds = %51
  br label %12

79:                                               ; preds = %12
  %80 = load %struct.fps_counter*, %struct.fps_counter** %3, align 8
  %81 = getelementptr inbounds %struct.fps_counter, %struct.fps_counter* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @mutex_unlock(i32 %82)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32) #1

declare dso_local i64 @SDL_AtomicGet(i32*) #1

declare dso_local i32 @cond_wait(i32, i32) #1

declare dso_local i64 @SDL_GetTicks(...) #1

declare dso_local i32 @check_interval_expired(%struct.fps_counter*, i64) #1

declare dso_local i32 @SDL_assert(i32) #1

declare dso_local i32 @cond_wait_timeout(i32, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_puzzle_mgt.c_puzzle_generate_rand_pce_list.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_puzzle_mgt.c_puzzle_generate_rand_pce_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@NO_PCE = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @puzzle_generate_rand_pce_list(%struct.TYPE_6__* %0, i64** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64**, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64** %1, i64*** %5, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %6, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load i64**, i64*** %5, align 8
  %19 = load i64*, i64** %18, align 8
  %20 = call i32 @free(i64* %19)
  %21 = load i64, i64* %7, align 8
  %22 = call i64* @calloc(i64 %21, i32 8)
  %23 = load i64**, i64*** %5, align 8
  store i64* %22, i64** %23, align 8
  %24 = load i64**, i64*** %5, align 8
  %25 = load i64*, i64** %24, align 8
  %26 = icmp ne i64* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %28, i32* %3, align 4
  br label %71

29:                                               ; preds = %2
  store i64 0, i64* %8, align 8
  br label %30

30:                                               ; preds = %40, %29
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load i64, i64* @NO_PCE, align 8
  %36 = load i64**, i64*** %5, align 8
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  store i64 %35, i64* %39, align 8
  br label %40

40:                                               ; preds = %34
  %41 = load i64, i64* %8, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %8, align 8
  br label %30

43:                                               ; preds = %30
  store i64 0, i64* %9, align 8
  br label %44

44:                                               ; preds = %68, %43
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* %7, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %44
  %49 = call i64 (...) @vlc_mrand48()
  %50 = trunc i64 %49 to i32
  %51 = zext i32 %50 to i64
  %52 = load i64, i64* %7, align 8
  %53 = urem i64 %51, %52
  store i64 %53, i64* %10, align 8
  %54 = load i64**, i64*** %5, align 8
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @NO_PCE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %48
  %62 = load i64, i64* %9, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %9, align 8
  %64 = load i64**, i64*** %5, align 8
  %65 = load i64*, i64** %64, align 8
  %66 = load i64, i64* %10, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  store i64 %62, i64* %67, align 8
  br label %68

68:                                               ; preds = %61, %48
  br label %44

69:                                               ; preds = %44
  %70 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %27
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @free(i64*) #1

declare dso_local i64* @calloc(i64, i32) #1

declare dso_local i64 @vlc_mrand48(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

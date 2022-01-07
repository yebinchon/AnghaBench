; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame.c_vlc_h2_frame_alloc.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame.c_vlc_h2_frame_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_h2_frame = type { i64*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vlc_h2_frame* (i8*, i8*, i32, i64)* @vlc_h2_frame_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vlc_h2_frame* @vlc_h2_frame_alloc(i8* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.vlc_h2_frame*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.vlc_h2_frame*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %11 = load i32, i32* %8, align 4
  %12 = ashr i32 %11, 31
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i64, i64* %9, align 8
  %17 = icmp uge i64 %16, 16777216
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* @errno, align 4
  store %struct.vlc_h2_frame* null, %struct.vlc_h2_frame** %5, align 8
  br label %73

23:                                               ; preds = %4
  %24 = load i64, i64* %9, align 8
  %25 = add i64 25, %24
  %26 = trunc i64 %25 to i32
  %27 = call %struct.vlc_h2_frame* @malloc(i32 %26)
  store %struct.vlc_h2_frame* %27, %struct.vlc_h2_frame** %10, align 8
  %28 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %10, align 8
  %29 = icmp eq %struct.vlc_h2_frame* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store %struct.vlc_h2_frame* null, %struct.vlc_h2_frame** %5, align 8
  br label %73

34:                                               ; preds = %23
  %35 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %10, align 8
  %36 = getelementptr inbounds %struct.vlc_h2_frame, %struct.vlc_h2_frame* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  %37 = load i64, i64* %9, align 8
  %38 = lshr i64 %37, 16
  %39 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %10, align 8
  %40 = getelementptr inbounds %struct.vlc_h2_frame, %struct.vlc_h2_frame* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  store i64 %38, i64* %42, align 8
  %43 = load i64, i64* %9, align 8
  %44 = lshr i64 %43, 8
  %45 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %10, align 8
  %46 = getelementptr inbounds %struct.vlc_h2_frame, %struct.vlc_h2_frame* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 1
  store i64 %44, i64* %48, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %10, align 8
  %51 = getelementptr inbounds %struct.vlc_h2_frame, %struct.vlc_h2_frame* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 2
  store i64 %49, i64* %53, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = ptrtoint i8* %54 to i64
  %56 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %10, align 8
  %57 = getelementptr inbounds %struct.vlc_h2_frame, %struct.vlc_h2_frame* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 3
  store i64 %55, i64* %59, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = ptrtoint i8* %60 to i64
  %62 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %10, align 8
  %63 = getelementptr inbounds %struct.vlc_h2_frame, %struct.vlc_h2_frame* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 4
  store i64 %61, i64* %65, align 8
  %66 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %10, align 8
  %67 = getelementptr inbounds %struct.vlc_h2_frame, %struct.vlc_h2_frame* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 5
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @SetDWBE(i64* %69, i32 %70)
  %72 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %10, align 8
  store %struct.vlc_h2_frame* %72, %struct.vlc_h2_frame** %5, align 8
  br label %73

73:                                               ; preds = %34, %33, %21
  %74 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %5, align 8
  ret %struct.vlc_h2_frame* %74
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.vlc_h2_frame* @malloc(i32) #1

declare dso_local i32 @SetDWBE(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

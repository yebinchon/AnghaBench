; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/xcb/extr_window.c_ReleaseDrawable.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/xcb/extr_window.c_ReleaseDrawable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@serializer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"xid-in-use\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @ReleaseDrawable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ReleaseDrawable(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @vlc_object_instance(i32* %8)
  %10 = call i32* @VLC_OBJECT(i32 %9)
  store i32* %10, i32** %5, align 8
  store i64 0, i64* %7, align 8
  %11 = call i32 @vlc_mutex_lock(i32* @serializer)
  %12 = load i32*, i32** %5, align 8
  %13 = call i64* @var_GetAddress(i32* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i64* %13, i64** %6, align 8
  %14 = load i64*, i64** %6, align 8
  %15 = ptrtoint i64* %14 to i64
  %16 = call i32 @assert(i64 %15)
  br label %17

17:                                               ; preds = %24, %2
  %18 = load i64*, i64** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load i64*, i64** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @assert(i64 %28)
  %30 = load i64, i64* %7, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %7, align 8
  br label %17

32:                                               ; preds = %17
  br label %33

33:                                               ; preds = %42, %32
  %34 = load i64*, i64** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = add i64 %35, 1
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load i64*, i64** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  store i64 %38, i64* %41, align 8
  br label %42

42:                                               ; preds = %33
  %43 = load i64*, i64** %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %7, align 8
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %33, label %49

49:                                               ; preds = %42
  %50 = load i64*, i64** %6, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @var_SetAddress(i32* %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null)
  br label %58

57:                                               ; preds = %49
  store i64* null, i64** %6, align 8
  br label %58

58:                                               ; preds = %57, %54
  %59 = call i32 @vlc_mutex_unlock(i32* @serializer)
  %60 = load i64*, i64** %6, align 8
  %61 = call i32 @free(i64* %60)
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @var_Destroy(i32* %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32* @VLC_OBJECT(i32) #1

declare dso_local i32 @vlc_object_instance(i32*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i64* @var_GetAddress(i32*, i8*) #1

declare dso_local i32 @assert(i64) #1

declare dso_local i32 @var_SetAddress(i32*, i8*, i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @free(i64*) #1

declare dso_local i32 @var_Destroy(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

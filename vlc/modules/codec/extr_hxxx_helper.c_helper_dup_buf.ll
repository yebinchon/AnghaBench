; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_hxxx_helper.c_helper_dup_buf.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_hxxx_helper.c_helper_dup_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hxxx_helper_nal = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hxxx_helper_nal*, i32*, i64)* @helper_dup_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @helper_dup_buf(%struct.hxxx_helper_nal* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hxxx_helper_nal*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store %struct.hxxx_helper_nal* %0, %struct.hxxx_helper_nal** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %5, align 8
  %10 = getelementptr inbounds %struct.hxxx_helper_nal, %struct.hxxx_helper_nal* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* %7, align 8
  %15 = call %struct.TYPE_5__* @block_Alloc(i64 %14)
  %16 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %5, align 8
  %17 = getelementptr inbounds %struct.hxxx_helper_nal, %struct.hxxx_helper_nal* %16, i32 0, i32 0
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %17, align 8
  %18 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %5, align 8
  %19 = getelementptr inbounds %struct.hxxx_helper_nal, %struct.hxxx_helper_nal* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = icmp ne %struct.TYPE_5__* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %13
  %23 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %23, i32* %4, align 4
  br label %68

24:                                               ; preds = %13
  br label %53

25:                                               ; preds = %3
  %26 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %5, align 8
  %27 = getelementptr inbounds %struct.hxxx_helper_nal, %struct.hxxx_helper_nal* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = icmp ne %struct.TYPE_5__* %28, null
  br i1 %29, label %30, label %52

30:                                               ; preds = %25
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %5, align 8
  %33 = getelementptr inbounds %struct.hxxx_helper_nal, %struct.hxxx_helper_nal* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ugt i64 %31, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %30
  %39 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %5, align 8
  %40 = getelementptr inbounds %struct.hxxx_helper_nal, %struct.hxxx_helper_nal* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call %struct.TYPE_5__* @block_TryRealloc(%struct.TYPE_5__* %41, i32 0, i64 %42)
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** %8, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %45 = icmp eq %struct.TYPE_5__* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %47, i32* %4, align 4
  br label %68

48:                                               ; preds = %38
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %50 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %5, align 8
  %51 = getelementptr inbounds %struct.hxxx_helper_nal, %struct.hxxx_helper_nal* %50, i32 0, i32 0
  store %struct.TYPE_5__* %49, %struct.TYPE_5__** %51, align 8
  br label %52

52:                                               ; preds = %48, %30, %25
  br label %53

53:                                               ; preds = %52, %24
  %54 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %5, align 8
  %55 = getelementptr inbounds %struct.hxxx_helper_nal, %struct.hxxx_helper_nal* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @memcpy(i32 %58, i32* %59, i64 %60)
  %62 = load i64, i64* %7, align 8
  %63 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %5, align 8
  %64 = getelementptr inbounds %struct.hxxx_helper_nal, %struct.hxxx_helper_nal* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store i64 %62, i64* %66, align 8
  %67 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %53, %46, %22
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.TYPE_5__* @block_Alloc(i64) #1

declare dso_local %struct.TYPE_5__* @block_TryRealloc(%struct.TYPE_5__*, i32, i64) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

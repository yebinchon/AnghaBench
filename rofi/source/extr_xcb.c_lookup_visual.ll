; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_xcb.c_lookup_visual.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_xcb.c_lookup_visual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (i32*, i64)* @lookup_visual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @lookup_visual(i32* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_11__, align 8
  %7 = alloca %struct.TYPE_11__, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call { i32, i64 } @xcb_screen_allowed_depths_iterator(i32* %9)
  %11 = bitcast %struct.TYPE_11__* %7 to { i32, i64 }*
  %12 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %11, i32 0, i32 0
  %13 = extractvalue { i32, i64 } %10, 0
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %11, i32 0, i32 1
  %15 = extractvalue { i32, i64 } %10, 1
  store i64 %15, i64* %14, align 8
  %16 = bitcast %struct.TYPE_11__* %6 to i8*
  %17 = bitcast %struct.TYPE_11__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 16, i1 false)
  br label %18

18:                                               ; preds = %49, %2
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %51

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call { %struct.TYPE_9__*, i64 } @xcb_depth_visuals_iterator(i32 %24)
  %26 = bitcast %struct.TYPE_10__* %8 to { %struct.TYPE_9__*, i64 }*
  %27 = getelementptr inbounds { %struct.TYPE_9__*, i64 }, { %struct.TYPE_9__*, i64 }* %26, i32 0, i32 0
  %28 = extractvalue { %struct.TYPE_9__*, i64 } %25, 0
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds { %struct.TYPE_9__*, i64 }, { %struct.TYPE_9__*, i64 }* %26, i32 0, i32 1
  %30 = extractvalue { %struct.TYPE_9__*, i64 } %25, 1
  store i64 %30, i64* %29, align 8
  br label %31

31:                                               ; preds = %46, %22
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %3, align 8
  br label %52

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45
  %47 = call i32 @xcb_visualtype_next(%struct.TYPE_10__* %8)
  br label %31

48:                                               ; preds = %31
  br label %49

49:                                               ; preds = %48
  %50 = call i32 @xcb_depth_next(%struct.TYPE_11__* %6)
  br label %18

51:                                               ; preds = %18
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %52

52:                                               ; preds = %51, %42
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %53
}

declare dso_local { i32, i64 } @xcb_screen_allowed_depths_iterator(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { %struct.TYPE_9__*, i64 } @xcb_depth_visuals_iterator(i32) #1

declare dso_local i32 @xcb_visualtype_next(%struct.TYPE_10__*) #1

declare dso_local i32 @xcb_depth_next(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

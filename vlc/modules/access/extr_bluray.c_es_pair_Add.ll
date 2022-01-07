; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_bluray.c_es_pair_Add.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_bluray.c_es_pair_Add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i64, i32* }

@VLC_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*, i32*)* @es_pair_Add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @es_pair_Add(i32* %0, %struct.TYPE_9__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = call %struct.TYPE_8__* @malloc(i32 32)
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %7, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %10 = icmp ne %struct.TYPE_8__* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i64 @likely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %47

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 4
  store i32* %15, i32** %17, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  store i32 1, i32* %23, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %26 = call i64 @vlc_array_append(i32* %24, %struct.TYPE_8__* %25)
  %27 = load i64, i64* @VLC_SUCCESS, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %14
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %31 = call i32 @free(%struct.TYPE_8__* %30)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %7, align 8
  br label %46

32:                                               ; preds = %14
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @es_format_Init(i32* %34, i32 %37, i32 %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %45 = call i32 @es_format_Copy(i32* %43, %struct.TYPE_9__* %44)
  br label %46

46:                                               ; preds = %32, %29
  br label %47

47:                                               ; preds = %46, %3
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %49 = icmp ne %struct.TYPE_8__* %48, null
  %50 = zext i1 %49 to i32
  ret i32 %50
}

declare dso_local %struct.TYPE_8__* @malloc(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @vlc_array_append(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i32 @es_format_Init(i32*, i32, i32) #1

declare dso_local i32 @es_format_Copy(i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

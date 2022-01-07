; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_item.c_input_item_AddOpaque.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_item.c_input_item_AddOpaque.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_6__*, i8*, i32 }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @input_item_AddOpaque(%struct.TYPE_5__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = add i64 24, %16
  %18 = trunc i64 %17 to i32
  %19 = call %struct.TYPE_6__* @malloc(i32 %18)
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %9, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %21 = icmp eq %struct.TYPE_6__* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %26, i32* %4, align 4
  br label %53

27:                                               ; preds = %3
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i64, i64* %8, align 8
  %33 = add i64 %32, 1
  %34 = call i32 @memcpy(i32 %30, i8* %31, i64 %33)
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = call i32 @vlc_mutex_lock(i32* %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %45, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %48, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = call i32 @vlc_mutex_unlock(i32* %50)
  %52 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %27, %25
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.TYPE_6__* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

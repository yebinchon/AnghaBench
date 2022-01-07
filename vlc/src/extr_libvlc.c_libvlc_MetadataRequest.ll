; ModuleID = '/home/carl/AnghaBench/vlc/src/extr_libvlc.c_libvlc_MetadataRequest.c'
source_filename = "/home/carl/AnghaBench/vlc/src/extr_libvlc.c_libvlc_MetadataRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32* }

@META_REQUEST_OPTION_SCOPE_ANY = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libvlc_MetadataRequest(i32* %0, %struct.TYPE_7__* %1, i32 %2, i32* %3, i8* %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = call %struct.TYPE_6__* @libvlc_priv(i32* %17)
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %16, align 8
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @META_REQUEST_OPTION_SCOPE_ANY, align 4
  %21 = and i32 %19, %20
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %7
  %31 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %31, i32* %8, align 4
  br label %55

32:                                               ; preds = %7
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = call i32 @vlc_mutex_lock(i32* %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %32
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = call i32 @vlc_mutex_unlock(i32* %45)
  %47 = load i32*, i32** %9, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32*, i32** %12, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = load i32, i32* %14, align 4
  %53 = load i8*, i8** %15, align 8
  %54 = call i32 @vlc_MetadataRequest(i32* %47, %struct.TYPE_7__* %48, i32 %49, i32* %50, i8* %51, i32 %52, i8* %53)
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %43, %30
  %56 = load i32, i32* %8, align 4
  ret i32 %56
}

declare dso_local %struct.TYPE_6__* @libvlc_priv(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @vlc_MetadataRequest(i32*, %struct.TYPE_7__*, i32, i32*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

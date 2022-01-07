; ModuleID = '/home/carl/AnghaBench/vlc/src/extr_libvlc.c_libvlc_ArtRequest.c'
source_filename = "/home/carl/AnghaBench/vlc/src/extr_libvlc.c_libvlc_ArtRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@META_REQUEST_OPTION_FETCH_ANY = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libvlc_ArtRequest(i32* %0, i32* %1, i32 %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call %struct.TYPE_3__* @libvlc_priv(i32* %13)
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %12, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @META_REQUEST_OPTION_FETCH_ANY, align 4
  %17 = and i32 %15, %16
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %27, i32* %6, align 4
  br label %38

28:                                               ; preds = %5
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32*, i32** %10, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = call i32 @input_preparser_fetcher_Push(i32* %31, i32* %32, i32 %33, i32* %34, i8* %35)
  %37 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %28, %26
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local %struct.TYPE_3__* @libvlc_priv(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @input_preparser_fetcher_Push(i32*, i32*, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

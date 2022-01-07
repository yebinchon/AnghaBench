; ModuleID = '/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_player_get_next.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_player_get_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*)* @player_get_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @player_get_next(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ctx*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call %struct.ctx* @get_ctx(i32* %8, i8* %9)
  store %struct.ctx* %10, %struct.ctx** %5, align 8
  %11 = load %struct.ctx*, %struct.ctx** %5, align 8
  %12 = getelementptr inbounds %struct.ctx, %struct.ctx* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %2
  %17 = load %struct.ctx*, %struct.ctx** %5, align 8
  %18 = getelementptr inbounds %struct.ctx, %struct.ctx* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32**, i32*** %19, align 8
  %21 = getelementptr inbounds i32*, i32** %20, i64 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %6, align 8
  %23 = load %struct.ctx*, %struct.ctx** %5, align 8
  %24 = getelementptr inbounds %struct.ctx, %struct.ctx* %23, i32 0, i32 1
  %25 = call i32 @vlc_vector_remove(%struct.TYPE_2__* %24, i32 0)
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @input_item_Hold(i32* %26)
  %28 = load %struct.ctx*, %struct.ctx** %5, align 8
  %29 = getelementptr inbounds %struct.ctx, %struct.ctx* %28, i32 0, i32 0
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @vlc_vector_push(i32* %29, i32* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @assert(i32 %32)
  br label %35

34:                                               ; preds = %2
  store i32* null, i32** %6, align 8
  br label %35

35:                                               ; preds = %34, %16
  %36 = load i32*, i32** %6, align 8
  ret i32* %36
}

declare dso_local %struct.ctx* @get_ctx(i32*, i8*) #1

declare dso_local i32 @vlc_vector_remove(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @input_item_Hold(i32*) #1

declare dso_local i32 @vlc_vector_push(i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/vlc/src/media_source/extr_test.c_on_children_removed.c'
source_filename = "/home/carl/AnghaBench/vlc/src/media_source/extr_test.c_on_children_removed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.callback_ctx = type { i32 }
%struct.children_removed_report = type { i64, i32, %struct.TYPE_4__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*, %struct.TYPE_4__**, i64, i8*)* @on_children_removed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_children_removed(i32* %0, %struct.TYPE_4__* %1, %struct.TYPE_4__** %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.TYPE_4__**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.callback_ctx*, align 8
  %12 = alloca %struct.children_removed_report, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__** %2, %struct.TYPE_4__*** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @VLC_UNUSED(i32* %14)
  %16 = load i8*, i8** %10, align 8
  %17 = bitcast i8* %16 to %struct.callback_ctx*
  store %struct.callback_ctx* %17, %struct.callback_ctx** %11, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %19 = getelementptr inbounds %struct.children_removed_report, %struct.children_removed_report* %12, i32 0, i32 2
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %19, align 8
  %20 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %20, i64 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @input_item_Hold(i32 %24)
  %26 = getelementptr inbounds %struct.children_removed_report, %struct.children_removed_report* %12, i32 0, i32 1
  store i32 %25, i32* %26, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds %struct.children_removed_report, %struct.children_removed_report* %12, i32 0, i32 0
  store i64 %27, i64* %28, align 8
  %29 = load %struct.callback_ctx*, %struct.callback_ctx** %11, align 8
  %30 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %29, i32 0, i32 0
  %31 = call i32 @vlc_vector_push(i32* %30, %struct.children_removed_report* byval(%struct.children_removed_report) align 8 %12)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @assert(i32 %32)
  ret void
}

declare dso_local i32 @VLC_UNUSED(i32*) #1

declare dso_local i32 @input_item_Hold(i32) #1

declare dso_local i32 @vlc_vector_push(i32*, %struct.children_removed_report* byval(%struct.children_removed_report) align 8) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

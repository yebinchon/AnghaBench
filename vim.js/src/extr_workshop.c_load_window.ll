; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_workshop.c_load_window.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_workshop.c_load_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@False = common dso_local global i32 0, align 4
@curwin = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @load_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_window(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to i32*
  %9 = call i32* @buflist_findname(i32* %8)
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = call %struct.TYPE_7__* @get_window(i32* %13)
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %6, align 8
  %15 = icmp eq %struct.TYPE_7__* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %12, %2
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @load_buffer_by_name(i8* %17, i32 %18)
  br label %34

20:                                               ; preds = %12
  %21 = load i32, i32* %4, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @warp_to_pc(i32 %31)
  br label %33

33:                                               ; preds = %30, %23, %20
  br label %34

34:                                               ; preds = %33, %16
  %35 = call i32 (...) @out_flush()
  ret void
}

declare dso_local i32* @buflist_findname(i32*) #1

declare dso_local %struct.TYPE_7__* @get_window(i32*) #1

declare dso_local i32 @load_buffer_by_name(i8*, i32) #1

declare dso_local i32 @warp_to_pc(i32) #1

declare dso_local i32 @out_flush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

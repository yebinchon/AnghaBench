; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zap.c_zap_value_search.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zap.c_zap_value_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@KM_SLEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zap_value_search(i32* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %14 = load i32, i32* %9, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store i32 -1, i32* %9, align 4
  br label %17

17:                                               ; preds = %16, %5
  %18 = load i32, i32* @KM_SLEEP, align 4
  %19 = call %struct.TYPE_5__* @kmem_alloc(i32 8, i32 %18)
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %13, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @zap_cursor_init(i32* %11, i32* %20, i32 %21)
  br label %23

23:                                               ; preds = %44, %17
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %25 = call i32 @zap_cursor_retrieve(i32* %11, %struct.TYPE_5__* %24)
  store i32 %25, i32* %12, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %23
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %27
  %38 = load i8*, i8** %10, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @strcpy(i8* %38, i32 %41)
  br label %46

43:                                               ; preds = %27
  br label %44

44:                                               ; preds = %43
  %45 = call i32 @zap_cursor_advance(i32* %11)
  br label %23

46:                                               ; preds = %37, %23
  %47 = call i32 @zap_cursor_fini(i32* %11)
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %49 = call i32 @kmem_free(%struct.TYPE_5__* %48, i32 8)
  %50 = load i32, i32* %12, align 4
  ret i32 %50
}

declare dso_local %struct.TYPE_5__* @kmem_alloc(i32, i32) #1

declare dso_local i32 @zap_cursor_init(i32*, i32*, i32) #1

declare dso_local i32 @zap_cursor_retrieve(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @zap_cursor_advance(i32*) #1

declare dso_local i32 @zap_cursor_fini(i32*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

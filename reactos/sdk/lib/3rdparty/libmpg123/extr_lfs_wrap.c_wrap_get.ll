; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_lfs_wrap.c_wrap_get.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_lfs_wrap.c_wrap_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wrap_data = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i64, i32* }
%struct.TYPE_3__ = type { %struct.wrap_data*, i32, i32 }

@MPG123_OUT_OF_MEM = common dso_local global i32 0, align 4
@wrap_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wrap_data* (%struct.TYPE_3__*)* @wrap_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wrap_data* @wrap_get(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.wrap_data*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.wrap_data*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = icmp eq %struct.TYPE_3__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.wrap_data* null, %struct.wrap_data** %2, align 8
  br label %58

8:                                                ; preds = %1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.wrap_data*, %struct.wrap_data** %10, align 8
  %12 = icmp eq %struct.wrap_data* %11, null
  br i1 %12, label %13, label %52

13:                                               ; preds = %8
  %14 = call %struct.wrap_data* @malloc(i32 72)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.wrap_data* %14, %struct.wrap_data** %16, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.wrap_data*, %struct.wrap_data** %18, align 8
  %20 = icmp eq %struct.wrap_data* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = load i32, i32* @MPG123_OUT_OF_MEM, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  store %struct.wrap_data* null, %struct.wrap_data** %2, align 8
  br label %58

25:                                               ; preds = %13
  %26 = load i32, i32* @wrap_destroy, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.wrap_data*, %struct.wrap_data** %30, align 8
  store %struct.wrap_data* %31, %struct.wrap_data** %4, align 8
  %32 = load %struct.wrap_data*, %struct.wrap_data** %4, align 8
  %33 = getelementptr inbounds %struct.wrap_data, %struct.wrap_data* %32, i32 0, i32 9
  store i32* null, i32** %33, align 8
  %34 = load %struct.wrap_data*, %struct.wrap_data** %4, align 8
  %35 = getelementptr inbounds %struct.wrap_data, %struct.wrap_data* %34, i32 0, i32 8
  store i64 0, i64* %35, align 8
  %36 = load %struct.wrap_data*, %struct.wrap_data** %4, align 8
  %37 = getelementptr inbounds %struct.wrap_data, %struct.wrap_data* %36, i32 0, i32 0
  store i32 -1, i32* %37, align 8
  %38 = load %struct.wrap_data*, %struct.wrap_data** %4, align 8
  %39 = getelementptr inbounds %struct.wrap_data, %struct.wrap_data* %38, i32 0, i32 1
  store i32 -1, i32* %39, align 4
  %40 = load %struct.wrap_data*, %struct.wrap_data** %4, align 8
  %41 = getelementptr inbounds %struct.wrap_data, %struct.wrap_data* %40, i32 0, i32 7
  store i32* null, i32** %41, align 8
  %42 = load %struct.wrap_data*, %struct.wrap_data** %4, align 8
  %43 = getelementptr inbounds %struct.wrap_data, %struct.wrap_data* %42, i32 0, i32 6
  store i32* null, i32** %43, align 8
  %44 = load %struct.wrap_data*, %struct.wrap_data** %4, align 8
  %45 = getelementptr inbounds %struct.wrap_data, %struct.wrap_data* %44, i32 0, i32 5
  store i32* null, i32** %45, align 8
  %46 = load %struct.wrap_data*, %struct.wrap_data** %4, align 8
  %47 = getelementptr inbounds %struct.wrap_data, %struct.wrap_data* %46, i32 0, i32 4
  store i32* null, i32** %47, align 8
  %48 = load %struct.wrap_data*, %struct.wrap_data** %4, align 8
  %49 = getelementptr inbounds %struct.wrap_data, %struct.wrap_data* %48, i32 0, i32 3
  store i32* null, i32** %49, align 8
  %50 = load %struct.wrap_data*, %struct.wrap_data** %4, align 8
  %51 = getelementptr inbounds %struct.wrap_data, %struct.wrap_data* %50, i32 0, i32 2
  store i32* null, i32** %51, align 8
  br label %56

52:                                               ; preds = %8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load %struct.wrap_data*, %struct.wrap_data** %54, align 8
  store %struct.wrap_data* %55, %struct.wrap_data** %4, align 8
  br label %56

56:                                               ; preds = %52, %25
  %57 = load %struct.wrap_data*, %struct.wrap_data** %4, align 8
  store %struct.wrap_data* %57, %struct.wrap_data** %2, align 8
  br label %58

58:                                               ; preds = %56, %21, %7
  %59 = load %struct.wrap_data*, %struct.wrap_data** %2, align 8
  ret %struct.wrap_data* %59
}

declare dso_local %struct.wrap_data* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

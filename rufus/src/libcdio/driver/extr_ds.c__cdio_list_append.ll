; ModuleID = '/home/carl/AnghaBench/rufus/src/libcdio/driver/extr_ds.c__cdio_list_append.c'
source_filename = "/home/carl/AnghaBench/rufus/src/libcdio/driver/extr_ds.c__cdio_list_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_7__*, i8*, %struct.TYPE_6__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_cdio_list_append(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = icmp ne %struct.TYPE_6__* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @cdio_assert(i32 %8)
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @_cdio_list_prepend(%struct.TYPE_6__* %15, i8* %16)
  br label %44

18:                                               ; preds = %2
  %19 = call %struct.TYPE_7__* @calloc(i32 1, i32 24)
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %5, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = icmp ne %struct.TYPE_7__* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @cdio_assert(i32 %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %26, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %28, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %36, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %39, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %41, align 8
  br label %44

44:                                               ; preds = %18, %14
  ret void
}

declare dso_local i32 @cdio_assert(i32) #1

declare dso_local i32 @_cdio_list_prepend(%struct.TYPE_6__*, i8*) #1

declare dso_local %struct.TYPE_7__* @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

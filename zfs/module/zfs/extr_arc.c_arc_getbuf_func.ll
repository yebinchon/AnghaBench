; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_arc.c_arc_getbuf_func.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_arc.c_arc_getbuf_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arc_getbuf_func(%struct.TYPE_5__* %0, i32* %1, i32* %2, %struct.TYPE_6__* %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_6__**, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load i8*, i8** %10, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_6__**
  store %struct.TYPE_6__** %13, %struct.TYPE_6__*** %11, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %15 = icmp eq %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %5
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = icmp eq %struct.TYPE_5__* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %19, %16
  %25 = phi i1 [ true, %16 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %11, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %28, align 8
  br label %49

29:                                               ; preds = %5
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = icmp eq %struct.TYPE_5__* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br label %37

37:                                               ; preds = %32, %29
  %38 = phi i1 [ true, %29 ], [ %36, %32 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @ASSERT(i32 %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %42 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %11, align 8
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %42, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i32 @ASSERT(i32 %47)
  br label %49

49:                                               ; preds = %37, %24
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

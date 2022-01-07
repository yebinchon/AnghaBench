; ModuleID = '/home/carl/AnghaBench/robotjs/src/extr_MMBitmap.c_createMMBitmap.c'
source_filename = "/home/carl/AnghaBench/robotjs/src/extr_MMBitmap.c_createMMBitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8**, i64, i64, i64, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @createMMBitmap(i8** %0, i64 %1, i64 %2, i64 %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  store i8** %0, i8*** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %15 = call %struct.TYPE_4__* @malloc(i32 4)
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %14, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %17 = icmp eq %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %7, align 8
  br label %39

19:                                               ; preds = %6
  %20 = load i8**, i8*** %8, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i8** %20, i8*** %22, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  store i64 %26, i64* %28, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  store i64 %29, i64* %31, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 5
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %7, align 8
  br label %39

39:                                               ; preds = %19, %18
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  ret %struct.TYPE_4__* %40
}

declare dso_local %struct.TYPE_4__* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

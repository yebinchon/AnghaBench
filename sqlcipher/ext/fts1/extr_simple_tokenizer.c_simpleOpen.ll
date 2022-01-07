; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_simple_tokenizer.c_simpleOpen.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_simple_tokenizer.c_simpleOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i8*, i32, i64, i64, i32*, i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32**)* @simpleOpen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simpleOpen(i32* %0, i8* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32** %3, i32*** %8, align 8
  %10 = call i64 @malloc(i32 64)
  %11 = inttoptr i64 %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i8*, i8** %6, align 8
  %19 = call i64 @strlen(i8* %18)
  %20 = trunc i64 %19 to i32
  br label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi i32 [ %20, %17 ], [ %22, %21 ]
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 7
  store i64 0, i64* %33, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 6
  store i32* null, i32** %35, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 5
  store i64 0, i64* %37, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 4
  store i64 0, i64* %39, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  %42 = load i32**, i32*** %8, align 8
  store i32* %41, i32** %42, align 8
  %43 = load i32, i32* @SQLITE_OK, align 4
  ret i32 %43
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

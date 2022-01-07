; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_ps_fastlist.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_ps_fastlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8** }
%struct.TYPE_9__ = type { i32, i8** }
%struct.TYPE_7__ = type { i32, i8** }

@stb_ps_fastlist.storage = internal global i8* null, align 8
@STB_BUCKET_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @stb_ps_fastlist(i32* %0, i32* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = ptrtoint i32* %9 to i64
  %11 = trunc i64 %10 to i32
  %12 = and i32 3, %11
  switch i32 %12, label %50 [
    i32 129, label %13
    i32 130, label %22
    i32 131, label %30
    i32 128, label %40
  ]

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32*, i32** %5, align 8
  store i32 0, i32* %17, align 4
  store i8** null, i8*** %3, align 8
  br label %51

18:                                               ; preds = %13
  %19 = load i32*, i32** %4, align 8
  %20 = bitcast i32* %19 to i8*
  store i8* %20, i8** @stb_ps_fastlist.storage, align 8
  %21 = load i32*, i32** %5, align 8
  store i32 1, i32* %21, align 4
  store i8** @stb_ps_fastlist.storage, i8*** %3, align 8
  br label %51

22:                                               ; preds = %2
  %23 = load i32*, i32** %4, align 8
  %24 = call %struct.TYPE_8__* @GetBucket(i32* %23)
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %6, align 8
  %25 = load i32, i32* @STB_BUCKET_SIZE, align 4
  %26 = load i32*, i32** %5, align 8
  store i32 %25, i32* %26, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i8**, i8*** %28, align 8
  store i8** %29, i8*** %3, align 8
  br label %51

30:                                               ; preds = %2
  %31 = load i32*, i32** %4, align 8
  %32 = call %struct.TYPE_9__* @GetArray(i32* %31)
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %7, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32*, i32** %5, align 8
  store i32 %35, i32* %36, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i8**, i8*** %38, align 8
  store i8** %39, i8*** %3, align 8
  br label %51

40:                                               ; preds = %2
  %41 = load i32*, i32** %4, align 8
  %42 = call %struct.TYPE_7__* @GetHash(i32* %41)
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** %8, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** %5, align 8
  store i32 %45, i32* %46, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i8**, i8*** %48, align 8
  store i8** %49, i8*** %3, align 8
  br label %51

50:                                               ; preds = %2
  store i8** null, i8*** %3, align 8
  br label %51

51:                                               ; preds = %50, %40, %30, %22, %18, %16
  %52 = load i8**, i8*** %3, align 8
  ret i8** %52
}

declare dso_local %struct.TYPE_8__* @GetBucket(i32*) #1

declare dso_local %struct.TYPE_9__* @GetArray(i32*) #1

declare dso_local %struct.TYPE_7__* @GetHash(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

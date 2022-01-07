; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_ps_count.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_ps_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32** }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stb_ps_count(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = ptrtoint i32* %7 to i64
  %9 = trunc i64 %8 to i32
  %10 = and i32 3, %9
  switch i32 %10, label %61 [
    i32 129, label %11
    i32 130, label %15
    i32 131, label %49
    i32 128, label %55
  ]

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = icmp ne i32* %12, null
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %2, align 4
  br label %62

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = call %struct.TYPE_8__* @GetBucket(i32* %16)
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %4, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32**, i32*** %19, align 8
  %21 = getelementptr inbounds i32*, i32** %20, i64 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32**, i32*** %26, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = add nsw i32 %24, %31
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32**, i32*** %34, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i64 2
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  %39 = zext i1 %38 to i32
  %40 = add nsw i32 %32, %39
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32**, i32*** %42, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i64 3
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  %47 = zext i1 %46 to i32
  %48 = add nsw i32 %40, %47
  store i32 %48, i32* %2, align 4
  br label %62

49:                                               ; preds = %1
  %50 = load i32*, i32** %3, align 8
  %51 = call %struct.TYPE_9__* @GetArray(i32* %50)
  store %struct.TYPE_9__* %51, %struct.TYPE_9__** %5, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %2, align 4
  br label %62

55:                                               ; preds = %1
  %56 = load i32*, i32** %3, align 8
  %57 = call %struct.TYPE_7__* @GetHash(i32* %56)
  store %struct.TYPE_7__* %57, %struct.TYPE_7__** %6, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %2, align 4
  br label %62

61:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %55, %49, %15, %11
  %63 = load i32, i32* %2, align 4
  ret i32 %63
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

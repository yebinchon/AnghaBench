; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dtv/extr_en50221.c_CAPMTES.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dtv/extr_en50221.c_CAPMTES.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i32*, i64, i64, i32, i32*)* @CAPMTES to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @CAPMTES(%struct.TYPE_3__* %0, i32* %1, i64 %2, i64 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %15 = load i64, i64* %10, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %6
  %18 = load i32*, i32** %12, align 8
  %19 = load i64, i64* %9, align 8
  %20 = add i64 %19, 6
  %21 = load i64, i64* %10, align 8
  %22 = add i64 %20, %21
  %23 = call i32* @xrealloc(i32* %18, i64 %22)
  store i32* %23, i32** %13, align 8
  br label %29

24:                                               ; preds = %6
  %25 = load i32*, i32** %12, align 8
  %26 = load i64, i64* %9, align 8
  %27 = add i64 %26, 5
  %28 = call i32* @xrealloc(i32* %25, i64 %27)
  store i32* %28, i32** %13, align 8
  br label %29

29:                                               ; preds = %24, %17
  %30 = load i32*, i32** %13, align 8
  %31 = load i64, i64* %9, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32* %32, i32** %14, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %14, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 8
  %42 = load i32*, i32** %14, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 255
  %48 = load i32*, i32** %14, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  store i32 %47, i32* %49, align 4
  %50 = load i64, i64* %10, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %78

52:                                               ; preds = %29
  %53 = load i64, i64* %10, align 8
  %54 = add i64 %53, 1
  %55 = lshr i64 %54, 8
  %56 = trunc i64 %55 to i32
  %57 = load i32*, i32** %14, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 3
  store i32 %56, i32* %58, align 4
  %59 = load i64, i64* %10, align 8
  %60 = add i64 %59, 1
  %61 = and i64 %60, 255
  %62 = trunc i64 %61 to i32
  %63 = load i32*, i32** %14, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32*, i32** %14, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 5
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = load i32*, i32** %14, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 6
  %77 = call i32 @CopyDescriptors(i32 %70, i32 %73, i32* %74, i32* %76)
  br label %83

78:                                               ; preds = %29
  %79 = load i32*, i32** %14, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 3
  store i32 0, i32* %80, align 4
  %81 = load i32*, i32** %14, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 4
  store i32 0, i32* %82, align 4
  br label %83

83:                                               ; preds = %78, %52
  %84 = load i32*, i32** %13, align 8
  ret i32* %84
}

declare dso_local i32* @xrealloc(i32*, i64) #1

declare dso_local i32 @CopyDescriptors(i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

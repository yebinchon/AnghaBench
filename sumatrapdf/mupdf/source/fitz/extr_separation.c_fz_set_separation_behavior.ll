; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_separation.c_fz_set_separation_behavior.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_separation.c_fz_set_separation_behavior.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32 }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"can't control non-existent separation\00", align 1
@FZ_SEPARATION_DISABLED = common dso_local global i32 0, align 4
@FZ_SEPARATION_DISABLED_RENDER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_set_separation_behavior(i32* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sge i32 %17, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16, %13, %4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %25 = call i32 @fz_throw(i32* %23, i32 %24, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %22, %16
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @FZ_SEPARATION_DISABLED, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @FZ_SEPARATION_DISABLED_RENDER, align 4
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %35, %30, %26
  %38 = load i32, i32* %7, align 4
  %39 = mul nsw i32 2, %38
  %40 = and i32 %39, 31
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %7, align 4
  %42 = ashr i32 %41, 4
  store i32 %42, i32* %7, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %9, align 4
  %51 = ashr i32 %49, %50
  %52 = and i32 %51, 3
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @FZ_SEPARATION_DISABLED_RENDER, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %37
  %57 = load i32, i32* @FZ_SEPARATION_DISABLED, align 4
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %56, %37
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %87

63:                                               ; preds = %58
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %9, align 4
  %72 = shl i32 3, %71
  %73 = xor i32 %72, -1
  %74 = and i32 %70, %73
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %9, align 4
  %77 = shl i32 %75, %76
  %78 = or i32 %74, %77
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %78, i32* %84, align 4
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @fz_empty_store(i32* %85)
  br label %87

87:                                               ; preds = %63, %62
  ret void
}

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i32 @fz_empty_store(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

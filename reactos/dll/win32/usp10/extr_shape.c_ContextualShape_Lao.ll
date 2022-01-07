; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_ContextualShape_Lao.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_ContextualShape_Lao.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@.str = private unnamed_addr constant [59 x i8] c"Number of Glyphs and Chars need to match at the beginning\0A\00", align 1
@combining_lexical_Lao = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, %struct.TYPE_3__*, i32*, i64, i32*, i64*, i64, i32*)* @ContextualShape_Lao to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ContextualShape_Lao(i32 %0, i32* %1, %struct.TYPE_3__* %2, i32* %3, i64 %4, i32* %5, i64* %6, i64 %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  store i32 %0, i32* %10, align 4
  store i32* %1, i32** %11, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %12, align 8
  store i32* %3, i32** %13, align 8
  store i64 %4, i64* %14, align 8
  store i32* %5, i32** %15, align 8
  store i64* %6, i64** %16, align 8
  store i64 %7, i64* %17, align 8
  store i32* %8, i32** %18, align 8
  %20 = load i64*, i64** %16, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %14, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %9
  %25 = call i32 @ERR(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %48

26:                                               ; preds = %9
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i64 -1, i64* %19, align 8
  br label %38

37:                                               ; preds = %31, %26
  store i64 1, i64* %19, align 8
  br label %38

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %10, align 4
  %40 = load i32*, i32** %13, align 8
  %41 = load i64, i64* %14, align 8
  %42 = load i32*, i32** %15, align 8
  %43 = load i64*, i64** %16, align 8
  %44 = load i64, i64* %19, align 8
  %45 = load i32*, i32** %18, align 8
  %46 = load i32, i32* @combining_lexical_Lao, align 4
  %47 = call i32 @mark_invalid_combinations(i32 %39, i32* %40, i64 %41, i32* %42, i64* %43, i64 %44, i32* %45, i32 %46)
  br label %48

48:                                               ; preds = %38, %24
  ret void
}

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @mark_invalid_combinations(i32, i32*, i64, i32*, i64*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

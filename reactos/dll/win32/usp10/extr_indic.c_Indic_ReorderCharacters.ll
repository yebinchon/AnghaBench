; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_indic.c_Indic_ReorderCharacters.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_indic.c_Indic_ReorderCharacters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"Failure to have required functions\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Indic_ReorderCharacters(i32 %0, i32* %1, i32* %2, i32* %3, i32 %4, i32** %5, i32* %6, i32 %7, i32 (i32*, i32*, i32)* %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32 (i32*, i32*, i32)*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32** %5, i32*** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 (i32*, i32*, i32)* %8, i32 (i32*, i32*, i32)** %19, align 8
  store i32 %9, i32* %20, align 4
  %22 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %19, align 8
  %23 = icmp ne i32 (i32*, i32*, i32)* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %10
  %25 = call i32 @ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %55

26:                                               ; preds = %10
  %27 = load i32, i32* %11, align 4
  %28 = load i32*, i32** %12, align 8
  %29 = load i32*, i32** %13, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = load i32, i32* %15, align 4
  %32 = load i32**, i32*** %16, align 8
  %33 = load i32*, i32** %17, align 8
  %34 = load i32, i32* %18, align 4
  %35 = load i32, i32* %20, align 4
  %36 = call i32 @Indic_ParseSyllables(i32 %27, i32* %28, i32* %29, i32* %30, i32 %31, i32** %32, i32* %33, i32 %34, i32 %35)
  store i32 0, i32* %21, align 4
  br label %37

37:                                               ; preds = %52, %26
  %38 = load i32, i32* %21, align 4
  %39 = load i32*, i32** %17, align 8
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %37
  %43 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %19, align 8
  %44 = load i32*, i32** %14, align 8
  %45 = load i32**, i32*** %16, align 8
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %21, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %18, align 4
  %51 = call i32 %43(i32* %44, i32* %49, i32 %50)
  br label %52

52:                                               ; preds = %42
  %53 = load i32, i32* %21, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %21, align 4
  br label %37

55:                                               ; preds = %24, %37
  ret void
}

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @Indic_ParseSyllables(i32, i32*, i32*, i32*, i32, i32**, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_msstyles.c_MSSTYLES_FindProperty.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_msstyles.c_MSSTYLES_FindProperty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"(%p, %d, %d, %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @MSSTYLES_FindProperty(i64 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i64, i64* %7, align 8
  store i64 %15, i64* %12, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %16, i32 %17, i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %40, %5
  %22 = load i64, i64* %12, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i64, i64* %12, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @MSSTYLES_FindPartState(i64 %25, i32 %26, i32 %27, i64* %12)
  store i32 %28, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %24, %21
  %31 = phi i1 [ false, %21 ], [ %29, %24 ]
  br i1 %31, label %32, label %41

32:                                               ; preds = %30
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32* @MSSTYLES_PSFindProperty(i32 %33, i32 %34, i32 %35)
  store i32* %36, i32** %14, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32*, i32** %14, align 8
  store i32* %39, i32** %6, align 8
  br label %62

40:                                               ; preds = %32
  br label %21

41:                                               ; preds = %30
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  br label %51

45:                                               ; preds = %41
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 0, i32* %8, align 4
  br label %50

49:                                               ; preds = %45
  store i32* null, i32** %6, align 8
  br label %62

50:                                               ; preds = %48
  br label %51

51:                                               ; preds = %50, %44
  %52 = load i64, i64* %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i32* @MSSTYLES_FindProperty(i64 %52, i32 %53, i32 %54, i32 %55, i32 %56)
  store i32* %57, i32** %14, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32*, i32** %14, align 8
  store i32* %60, i32** %6, align 8
  br label %62

61:                                               ; preds = %51
  store i32* null, i32** %6, align 8
  br label %62

62:                                               ; preds = %61, %59, %49, %38
  %63 = load i32*, i32** %6, align 8
  ret i32* %63
}

declare dso_local i32 @TRACE(i8*, i64, i32, i32, i32) #1

declare dso_local i32 @MSSTYLES_FindPartState(i64, i32, i32, i64*) #1

declare dso_local i32* @MSSTYLES_PSFindProperty(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/otvalid/extr_otvgpos.c_otv_CursivePos_validate.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/otvalid/extr_otvgpos.c_otv_CursivePos_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"CursivePos\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c" (format %d)\0A\00", align 1
@EntryAnchor = common dso_local global i32 0, align 4
@ExitAnchor = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c" (EntryExitCount = %d)\0A\00", align 1
@FT_INVALID_FORMAT = common dso_local global i32 0, align 4
@OTV_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @otv_CursivePos_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @otv_CursivePos_validate(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  store i32 %10, i32* %5, align 4
  %11 = call i32 @OTV_NAME_ENTER(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @OTV_LIMIT_CHECK(i32 2)
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @FT_NEXT_USHORT(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @OTV_TRACE(i8* %17)
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %80 [
    i32 1, label %20
  ]

20:                                               ; preds = %2
  %21 = load i32, i32* @EntryAnchor, align 4
  %22 = call i32 @OTV_OPTIONAL_TABLE(i32 %21)
  %23 = load i32, i32* @ExitAnchor, align 4
  %24 = call i32 @OTV_OPTIONAL_TABLE(i32 %23)
  %25 = call i32 @OTV_LIMIT_CHECK(i32 4)
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @FT_NEXT_USHORT(i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @FT_NEXT_USHORT(i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @OTV_TRACE(i8* %32)
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %34, %35
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @otv_Coverage_validate(i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = mul nsw i32 %40, 4
  %42 = call i32 @OTV_LIMIT_CHECK(i32 %41)
  %43 = load i32, i32* %9, align 4
  %44 = mul nsw i32 %43, 4
  %45 = add nsw i32 %44, 4
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %76, %20
  %47 = load i32, i32* %9, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %79

49:                                               ; preds = %46
  %50 = load i32, i32* @EntryAnchor, align 4
  %51 = call i32 @OTV_OPTIONAL_OFFSET(i32 %50)
  %52 = load i32, i32* @ExitAnchor, align 4
  %53 = call i32 @OTV_OPTIONAL_OFFSET(i32 %52)
  %54 = load i32, i32* @EntryAnchor, align 4
  %55 = call i32 @OTV_SIZE_CHECK(i32 %54)
  %56 = load i32, i32* @EntryAnchor, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %49
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @EntryAnchor, align 4
  %61 = add nsw i32 %59, %60
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @otv_Anchor_validate(i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %58, %49
  %65 = load i32, i32* @ExitAnchor, align 4
  %66 = call i32 @OTV_SIZE_CHECK(i32 %65)
  %67 = load i32, i32* @ExitAnchor, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @ExitAnchor, align 4
  %72 = add nsw i32 %70, %71
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @otv_Anchor_validate(i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %69, %64
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %9, align 4
  br label %46

79:                                               ; preds = %46
  br label %82

80:                                               ; preds = %2
  %81 = load i32, i32* @FT_INVALID_FORMAT, align 4
  br label %82

82:                                               ; preds = %80, %79
  %83 = load i32, i32* @OTV_EXIT, align 4
  ret void
}

declare dso_local i32 @OTV_NAME_ENTER(i8*) #1

declare dso_local i32 @OTV_LIMIT_CHECK(i32) #1

declare dso_local i32 @FT_NEXT_USHORT(i32) #1

declare dso_local i32 @OTV_TRACE(i8*) #1

declare dso_local i32 @OTV_OPTIONAL_TABLE(i32) #1

declare dso_local i32 @otv_Coverage_validate(i32, i32, i32) #1

declare dso_local i32 @OTV_OPTIONAL_OFFSET(i32) #1

declare dso_local i32 @OTV_SIZE_CHECK(i32) #1

declare dso_local i32 @otv_Anchor_validate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

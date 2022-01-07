; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/otvalid/extr_otvbase.c_otv_BaseScript_validate.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/otvalid/extr_otvbase.c_otv_BaseScript_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BaseValues = common dso_local global i32 0, align 4
@DefaultMinMax = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"BaseScript\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c" (BaseLangSysCount = %d)\0A\00", align 1
@OTV_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @otv_BaseScript_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @otv_BaseScript_validate(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @BaseValues, align 4
  %10 = call i32 @OTV_OPTIONAL_TABLE(i32 %9)
  %11 = load i32, i32* @DefaultMinMax, align 4
  %12 = call i32 @OTV_OPTIONAL_TABLE(i32 %11)
  %13 = call i32 @OTV_NAME_ENTER(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @OTV_LIMIT_CHECK(i32 6)
  %15 = load i32, i32* @BaseValues, align 4
  %16 = call i32 @OTV_OPTIONAL_OFFSET(i32 %15)
  %17 = load i32, i32* @DefaultMinMax, align 4
  %18 = call i32 @OTV_OPTIONAL_OFFSET(i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @FT_NEXT_USHORT(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @OTV_TRACE(i8* %23)
  %25 = load i32, i32* %7, align 4
  %26 = mul nsw i32 %25, 6
  %27 = add nsw i32 %26, 6
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @BaseValues, align 4
  %29 = call i32 @OTV_SIZE_CHECK(i32 %28)
  %30 = load i32, i32* @BaseValues, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %2
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @BaseValues, align 4
  %35 = add nsw i32 %33, %34
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @otv_BaseValues_validate(i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %32, %2
  %39 = load i32, i32* @DefaultMinMax, align 4
  %40 = call i32 @OTV_SIZE_CHECK(i32 %39)
  %41 = load i32, i32* @DefaultMinMax, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @DefaultMinMax, align 4
  %46 = add nsw i32 %44, %45
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @otv_MinMax_validate(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %43, %38
  %50 = load i32, i32* %7, align 4
  %51 = mul nsw i32 %50, 6
  %52 = call i32 @OTV_LIMIT_CHECK(i32 %51)
  br label %53

53:                                               ; preds = %65, %49
  %54 = load i32, i32* %7, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %53
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 4
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @FT_NEXT_USHORT(i32 %60)
  %62 = add nsw i32 %59, %61
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @otv_MinMax_validate(i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %56
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %7, align 4
  br label %53

68:                                               ; preds = %53
  %69 = load i32, i32* @OTV_EXIT, align 4
  ret void
}

declare dso_local i32 @OTV_OPTIONAL_TABLE(i32) #1

declare dso_local i32 @OTV_NAME_ENTER(i8*) #1

declare dso_local i32 @OTV_LIMIT_CHECK(i32) #1

declare dso_local i32 @OTV_OPTIONAL_OFFSET(i32) #1

declare dso_local i32 @FT_NEXT_USHORT(i32) #1

declare dso_local i32 @OTV_TRACE(i8*) #1

declare dso_local i32 @OTV_SIZE_CHECK(i32) #1

declare dso_local i32 @otv_BaseValues_validate(i32, i32) #1

declare dso_local i32 @otv_MinMax_validate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

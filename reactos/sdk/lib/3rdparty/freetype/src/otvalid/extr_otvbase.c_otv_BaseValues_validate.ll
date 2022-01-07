; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/otvalid/extr_otvbase.c_otv_BaseValues_validate.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/otvalid/extr_otvbase.c_otv_BaseValues_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"BaseValues\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c" (BaseCoordCount = %d)\0A\00", align 1
@OTV_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @otv_BaseValues_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @otv_BaseValues_validate(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  store i32 %7, i32* %5, align 4
  %8 = call i32 @OTV_NAME_ENTER(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @OTV_LIMIT_CHECK(i32 4)
  %10 = load i32, i32* %5, align 4
  %11 = add nsw i32 %10, 2
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @FT_NEXT_USHORT(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8*
  %17 = call i32 @OTV_TRACE(i8* %16)
  %18 = load i32, i32* %6, align 4
  %19 = mul nsw i32 %18, 2
  %20 = call i32 @OTV_LIMIT_CHECK(i32 %19)
  br label %21

21:                                               ; preds = %31, %2
  %22 = load i32, i32* %6, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @FT_NEXT_USHORT(i32 %26)
  %28 = add nsw i32 %25, %27
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @otv_BaseCoord_validate(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %6, align 4
  br label %21

34:                                               ; preds = %21
  %35 = load i32, i32* @OTV_EXIT, align 4
  ret void
}

declare dso_local i32 @OTV_NAME_ENTER(i8*) #1

declare dso_local i32 @OTV_LIMIT_CHECK(i32) #1

declare dso_local i32 @FT_NEXT_USHORT(i32) #1

declare dso_local i32 @OTV_TRACE(i8*) #1

declare dso_local i32 @otv_BaseCoord_validate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

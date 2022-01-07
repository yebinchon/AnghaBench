; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/otvalid/extr_otvgpos.c_otv_Anchor_validate.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/otvalid/extr_otvgpos.c_otv_Anchor_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"Anchor\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c" (format %d)\0A\00", align 1
@XDeviceTable = common dso_local global i32 0, align 4
@YDeviceTable = common dso_local global i32 0, align 4
@FT_INVALID_FORMAT = common dso_local global i32 0, align 4
@OTV_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @otv_Anchor_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @otv_Anchor_validate(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  store i32 %8, i32* %5, align 4
  %9 = call i32 @OTV_NAME_ENTER(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @OTV_LIMIT_CHECK(i32 6)
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @FT_NEXT_USHORT(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 @OTV_TRACE(i8* %15)
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 4
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %55 [
    i32 1, label %20
    i32 2, label %21
    i32 3, label %23
  ]

20:                                               ; preds = %2
  br label %57

21:                                               ; preds = %2
  %22 = call i32 @OTV_LIMIT_CHECK(i32 2)
  br label %57

23:                                               ; preds = %2
  %24 = load i32, i32* @XDeviceTable, align 4
  %25 = call i32 @OTV_OPTIONAL_TABLE(i32 %24)
  %26 = load i32, i32* @YDeviceTable, align 4
  %27 = call i32 @OTV_OPTIONAL_TABLE(i32 %26)
  %28 = call i32 @OTV_LIMIT_CHECK(i32 4)
  %29 = load i32, i32* @XDeviceTable, align 4
  %30 = call i32 @OTV_OPTIONAL_OFFSET(i32 %29)
  %31 = load i32, i32* @YDeviceTable, align 4
  %32 = call i32 @OTV_OPTIONAL_OFFSET(i32 %31)
  store i32 10, i32* %7, align 4
  %33 = load i32, i32* @XDeviceTable, align 4
  %34 = call i32 @OTV_SIZE_CHECK(i32 %33)
  %35 = load i32, i32* @XDeviceTable, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %23
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @XDeviceTable, align 4
  %40 = add nsw i32 %38, %39
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @otv_Device_validate(i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %37, %23
  %44 = load i32, i32* @YDeviceTable, align 4
  %45 = call i32 @OTV_SIZE_CHECK(i32 %44)
  %46 = load i32, i32* @YDeviceTable, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @YDeviceTable, align 4
  %51 = add nsw i32 %49, %50
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @otv_Device_validate(i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %48, %43
  br label %57

55:                                               ; preds = %2
  %56 = load i32, i32* @FT_INVALID_FORMAT, align 4
  br label %57

57:                                               ; preds = %55, %54, %21, %20
  %58 = load i32, i32* @OTV_EXIT, align 4
  ret void
}

declare dso_local i32 @OTV_NAME_ENTER(i8*) #1

declare dso_local i32 @OTV_LIMIT_CHECK(i32) #1

declare dso_local i32 @FT_NEXT_USHORT(i32) #1

declare dso_local i32 @OTV_TRACE(i8*) #1

declare dso_local i32 @OTV_OPTIONAL_TABLE(i32) #1

declare dso_local i32 @OTV_OPTIONAL_OFFSET(i32) #1

declare dso_local i32 @OTV_SIZE_CHECK(i32) #1

declare dso_local i32 @otv_Device_validate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

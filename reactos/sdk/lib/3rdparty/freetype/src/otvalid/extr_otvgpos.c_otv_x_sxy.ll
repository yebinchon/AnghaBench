; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/otvalid/extr_otvgpos.c_otv_x_sxy.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/otvalid/extr_otvgpos.c_otv_x_sxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@OTV_ENTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c" (Count = %d)\0A\00", align 1
@anchor_offset = common dso_local global i64 0, align 8
@OTV_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.TYPE_4__*)* @otv_x_sxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @otv_x_sxy(i64 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %9 = load i64, i64* %3, align 8
  store i64 %9, i64* %5, align 8
  %10 = load i32, i32* @OTV_ENTER, align 4
  %11 = call i32 @OTV_LIMIT_CHECK(i32 2)
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @FT_NEXT_USHORT(i64 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8*
  %17 = call i32 @OTV_TRACE(i8* %16)
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 %18, %21
  %23 = mul nsw i32 %22, 2
  %24 = call i32 @OTV_LIMIT_CHECK(i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = mul nsw i32 %25, %28
  %30 = mul nsw i32 %29, 2
  %31 = add nsw i32 %30, 2
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %74, %2
  %33 = load i32, i32* %6, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %77

35:                                               ; preds = %32
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %70, %35
  %40 = load i32, i32* %7, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %73

42:                                               ; preds = %39
  %43 = load i64, i64* @anchor_offset, align 8
  %44 = call i32 @OTV_OPTIONAL_TABLE(i64 %43)
  %45 = load i64, i64* @anchor_offset, align 8
  %46 = call i32 @OTV_OPTIONAL_OFFSET(i64 %45)
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %42
  %52 = load i64, i64* @anchor_offset, align 8
  %53 = call i32 @OTV_SIZE_CHECK(i64 %52)
  %54 = load i64, i64* @anchor_offset, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i64, i64* %3, align 8
  %58 = load i64, i64* @anchor_offset, align 8
  %59 = add nsw i64 %57, %58
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %61 = call i32 @otv_Anchor_validate(i64 %59, %struct.TYPE_4__* %60)
  br label %62

62:                                               ; preds = %56, %51
  br label %69

63:                                               ; preds = %42
  %64 = load i64, i64* %3, align 8
  %65 = load i64, i64* @anchor_offset, align 8
  %66 = add nsw i64 %64, %65
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %68 = call i32 @otv_Anchor_validate(i64 %66, %struct.TYPE_4__* %67)
  br label %69

69:                                               ; preds = %63, %62
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %7, align 4
  br label %39

73:                                               ; preds = %39
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %6, align 4
  br label %32

77:                                               ; preds = %32
  %78 = load i32, i32* @OTV_EXIT, align 4
  ret void
}

declare dso_local i32 @OTV_LIMIT_CHECK(i32) #1

declare dso_local i32 @FT_NEXT_USHORT(i64) #1

declare dso_local i32 @OTV_TRACE(i8*) #1

declare dso_local i32 @OTV_OPTIONAL_TABLE(i64) #1

declare dso_local i32 @OTV_OPTIONAL_OFFSET(i64) #1

declare dso_local i32 @OTV_SIZE_CHECK(i64) #1

declare dso_local i32 @otv_Anchor_validate(i64, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

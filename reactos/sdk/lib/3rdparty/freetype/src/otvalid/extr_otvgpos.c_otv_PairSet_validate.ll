; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/otvalid/extr_otvgpos.c_otv_PairSet_validate.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/otvalid/extr_otvgpos.c_otv_PairSet_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"PairSet\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c" (PairValueCount = %d)\0A\00", align 1
@OTV_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, %struct.TYPE_4__*)* @otv_PairSet_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @otv_PairSet_validate(i32 %0, i32 %1, i32 %2, %struct.TYPE_4__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %8, align 8
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %9, align 4
  %14 = call i32 @OTV_NAME_ENTER(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = call i32 @OTV_LIMIT_CHECK(i32 2)
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @FT_NEXT_USHORT(i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @OTV_TRACE(i8* %23)
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @otv_value_length(i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @otv_value_length(i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 %30, %31
  %33 = add nsw i32 %32, 2
  %34 = mul nsw i32 %29, %33
  %35 = call i32 @OTV_LIMIT_CHECK(i32 %34)
  br label %36

36:                                               ; preds = %64, %4
  %37 = load i32, i32* %12, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %67

39:                                               ; preds = %36
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 2
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %48 = call i32 @otv_ValueRecord_validate(i32 %45, i32 %46, %struct.TYPE_4__* %47)
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %59 = call i32 @otv_ValueRecord_validate(i32 %56, i32 %57, %struct.TYPE_4__* %58)
  br label %60

60:                                               ; preds = %55, %49
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %12, align 4
  br label %36

67:                                               ; preds = %36
  %68 = load i32, i32* @OTV_EXIT, align 4
  ret void
}

declare dso_local i32 @OTV_NAME_ENTER(i8*) #1

declare dso_local i32 @OTV_LIMIT_CHECK(i32) #1

declare dso_local i32 @FT_NEXT_USHORT(i32) #1

declare dso_local i32 @OTV_TRACE(i8*) #1

declare dso_local i32 @otv_value_length(i32) #1

declare dso_local i32 @otv_ValueRecord_validate(i32, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

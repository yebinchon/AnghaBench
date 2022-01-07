; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/otvalid/extr_otvgpos.c_otv_ValueRecord_validate.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/otvalid/extr_otvgpos.c_otv_ValueRecord_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@FT_INVALID_FORMAT = common dso_local global i32 0, align 4
@device = common dso_local global i64 0, align 8
@OTV_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, %struct.TYPE_4__*)* @otv_ValueRecord_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @otv_ValueRecord_validate(i64 %0, i32 %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  %10 = load i64, i64* %4, align 8
  store i64 %10, i64* %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp sge i32 %11, 256
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @FT_INVALID_FORMAT, align 4
  br label %15

15:                                               ; preds = %13, %3
  store i32 4, i32* %8, align 4
  br label %16

16:                                               ; preds = %30, %15
  %17 = load i32, i32* %8, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = call i32 @OTV_LIMIT_CHECK(i32 2)
  %25 = load i64, i64* %7, align 8
  %26 = add nsw i64 %25, 2
  store i64 %26, i64* %7, align 8
  br label %27

27:                                               ; preds = %23, %19
  %28 = load i32, i32* %5, align 4
  %29 = ashr i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %8, align 4
  br label %16

33:                                               ; preds = %16
  store i32 4, i32* %8, align 4
  br label %34

34:                                               ; preds = %68, %33
  %35 = load i32, i32* %8, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %71

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, 1
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %65

41:                                               ; preds = %37
  %42 = load i64, i64* @device, align 8
  %43 = call i32 @OTV_OPTIONAL_TABLE(i64 %42)
  %44 = call i32 @OTV_LIMIT_CHECK(i32 2)
  %45 = load i64, i64* @device, align 8
  %46 = call i32 @OTV_OPTIONAL_OFFSET(i64 %45)
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %47, %50
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* @device, align 8
  %53 = call i32 @OTV_SIZE_CHECK(i64 %52)
  %54 = load i64, i64* @device, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %41
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @device, align 8
  %61 = add nsw i64 %59, %60
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %63 = call i32 @otv_Device_validate(i64 %61, %struct.TYPE_4__* %62)
  br label %64

64:                                               ; preds = %56, %41
  br label %65

65:                                               ; preds = %64, %37
  %66 = load i32, i32* %5, align 4
  %67 = ashr i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %8, align 4
  br label %34

71:                                               ; preds = %34
  %72 = load i32, i32* @OTV_EXIT, align 4
  ret void
}

declare dso_local i32 @OTV_LIMIT_CHECK(i32) #1

declare dso_local i32 @OTV_OPTIONAL_TABLE(i64) #1

declare dso_local i32 @OTV_OPTIONAL_OFFSET(i64) #1

declare dso_local i32 @OTV_SIZE_CHECK(i64) #1

declare dso_local i32 @otv_Device_validate(i64, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

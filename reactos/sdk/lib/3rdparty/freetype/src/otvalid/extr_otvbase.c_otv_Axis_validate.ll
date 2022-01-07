; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/otvalid/extr_otvbase.c_otv_Axis_validate.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/otvalid/extr_otvbase.c_otv_Axis_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BaseTagList = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"Axis\00", align 1
@OTV_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @otv_Axis_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @otv_Axis_validate(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* %3, align 8
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* @BaseTagList, align 8
  %9 = call i32 @OTV_OPTIONAL_TABLE(i64 %8)
  %10 = call i32 @OTV_NAME_ENTER(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @OTV_LIMIT_CHECK(i32 4)
  %12 = load i64, i64* @BaseTagList, align 8
  %13 = call i32 @OTV_OPTIONAL_OFFSET(i64 %12)
  store i32 4, i32* %6, align 4
  %14 = load i64, i64* @BaseTagList, align 8
  %15 = call i32 @OTV_SIZE_CHECK(i64 %14)
  %16 = load i64, i64* @BaseTagList, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @BaseTagList, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @otv_BaseTagList_validate(i64 %21, i32 %22)
  br label %24

24:                                               ; preds = %18, %2
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i64 @FT_NEXT_USHORT(i64 %26)
  %28 = add nsw i64 %25, %27
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @otv_BaseScriptList_validate(i64 %28, i32 %29)
  %31 = load i32, i32* @OTV_EXIT, align 4
  ret void
}

declare dso_local i32 @OTV_OPTIONAL_TABLE(i64) #1

declare dso_local i32 @OTV_NAME_ENTER(i8*) #1

declare dso_local i32 @OTV_LIMIT_CHECK(i32) #1

declare dso_local i32 @OTV_OPTIONAL_OFFSET(i64) #1

declare dso_local i32 @OTV_SIZE_CHECK(i64) #1

declare dso_local i32 @otv_BaseTagList_validate(i64, i32) #1

declare dso_local i32 @otv_BaseScriptList_validate(i64, i32) #1

declare dso_local i64 @FT_NEXT_USHORT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

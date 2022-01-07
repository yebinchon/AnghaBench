; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/otvalid/extr_otvgsub.c_otv_Ligature_validate.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/otvalid/extr_otvgsub.c_otv_Ligature_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@OTV_ENTER = common dso_local global i32 0, align 4
@FT_INVALID_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c" (CompCount = %d)\0A\00", align 1
@OTV_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_3__*)* @otv_Ligature_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @otv_Ligature_validate(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %8 = load i32, i32* %3, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @OTV_ENTER, align 4
  %10 = call i32 @OTV_LIMIT_CHECK(i64 4)
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @FT_NEXT_USHORT(i32 %11)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %13, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @FT_INVALID_DATA, align 4
  br label %20

20:                                               ; preds = %18, %2
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @FT_NEXT_USHORT(i32 %21)
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @OTV_TRACE(i8* %24)
  %26 = load i64, i64* %7, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @FT_INVALID_DATA, align 4
  br label %30

30:                                               ; preds = %28, %20
  %31 = load i64, i64* %7, align 8
  %32 = add nsw i64 %31, -1
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = mul nsw i64 %33, 2
  %35 = call i32 @OTV_LIMIT_CHECK(i64 %34)
  %36 = load i32, i32* @OTV_EXIT, align 4
  ret void
}

declare dso_local i32 @OTV_LIMIT_CHECK(i64) #1

declare dso_local i64 @FT_NEXT_USHORT(i32) #1

declare dso_local i32 @OTV_TRACE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

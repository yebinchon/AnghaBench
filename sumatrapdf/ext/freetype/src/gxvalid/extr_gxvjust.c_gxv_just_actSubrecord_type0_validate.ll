; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/gxvalid/extr_gxvjust.c_gxv_just_actSubrecord_type0_validate.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/gxvalid/extr_gxvjust.c_gxv_just_actSubrecord_type0_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [73 x i8] c"just table includes invalid range spec: lowerLimit(%d) > upperLimit(%d)\0A\00", align 1
@FT_INVALID_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"type0:glyphs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, %struct.TYPE_4__*)* @gxv_just_actSubrecord_type0_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gxv_just_actSubrecord_type0_validate(i64 %0, i64 %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  %13 = load i64, i64* %4, align 8
  store i64 %13, i64* %7, align 8
  %14 = call i32 @GXV_LIMIT_CHECK(i32 12)
  %15 = load i64, i64* %7, align 8
  %16 = call i64 @FT_NEXT_LONG(i64 %15)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i64 @FT_NEXT_LONG(i64 %17)
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %7, align 8
  %20 = add nsw i64 %19, 2
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i64 @FT_NEXT_USHORT(i64 %21)
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = call i32 @GXV_TRACE(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @FT_INVALID_DATA, align 4
  %29 = call i32 @GXV_SET_ERR_IF_PARANOID(i32 %28)
  br label %30

30:                                               ; preds = %26, %3
  store i64 0, i64* %11, align 8
  br label %31

31:                                               ; preds = %42, %30
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* %10, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = call i32 @GXV_LIMIT_CHECK(i32 2)
  %37 = load i64, i64* %7, align 8
  %38 = call i64 @FT_NEXT_USHORT(i64 %37)
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = call i32 @gxv_just_check_max_gid(i64 %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_4__* %40)
  br label %42

42:                                               ; preds = %35
  %43 = load i64, i64* %11, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %11, align 8
  br label %31

45:                                               ; preds = %31
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %4, align 8
  %48 = sub nsw i64 %46, %47
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  ret void
}

declare dso_local i32 @GXV_LIMIT_CHECK(i32) #1

declare dso_local i64 @FT_NEXT_LONG(i64) #1

declare dso_local i64 @FT_NEXT_USHORT(i64) #1

declare dso_local i32 @GXV_TRACE(i8*) #1

declare dso_local i32 @GXV_SET_ERR_IF_PARANOID(i32) #1

declare dso_local i32 @gxv_just_check_max_gid(i64, i8*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

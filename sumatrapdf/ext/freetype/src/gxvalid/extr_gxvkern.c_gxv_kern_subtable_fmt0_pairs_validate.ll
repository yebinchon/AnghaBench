; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/gxvalid/extr_gxvkern.c_gxv_kern_subtable_fmt0_pairs_validate.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/gxvalid/extr_gxvkern.c_gxv_kern_subtable_fmt0_pairs_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"kern format 0 pairs\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"left gid = %u, right gid = %u\0A\00", align 1
@FT_INVALID_DATA = common dso_local global i32 0, align 4
@GXV_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64, i32)* @gxv_kern_subtable_fmt0_pairs_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gxv_kern_subtable_fmt0_pairs_validate(i32 %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %9, align 4
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @FT_UNUSED(i32 %16)
  %18 = call i32 @GXV_NAME_ENTER(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %10, align 8
  br label %19

19:                                               ; preds = %63, %4
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %66

23:                                               ; preds = %19
  %24 = load i32, i32* %9, align 4
  %25 = call i64 @FT_NEXT_USHORT(i32 %24)
  store i64 %25, i64* %13, align 8
  %26 = load i64, i64* %13, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @gxv_glyphid_validate(i64 %26, i32 %27)
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @FT_NEXT_USHORT(i32 %29)
  store i64 %30, i64* %14, align 8
  %31 = load i64, i64* %14, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @gxv_glyphid_validate(i64 %31, i32 %32)
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* %14, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = call i32 @GXV_TRACE(i8* %36)
  %38 = load i64, i64* %13, align 8
  %39 = load i64, i64* %11, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %23
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* %14, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i64, i64* %14, align 8
  store i64 %46, i64* %12, align 8
  br label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @FT_INVALID_DATA, align 4
  br label %49

49:                                               ; preds = %47, %45
  br label %60

50:                                               ; preds = %23
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %13, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i64, i64* %13, align 8
  store i64 %55, i64* %11, align 8
  %56 = load i64, i64* %14, align 8
  store i64 %56, i64* %12, align 8
  br label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @FT_INVALID_DATA, align 4
  br label %59

59:                                               ; preds = %57, %54
  br label %60

60:                                               ; preds = %59, %49
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 2
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %60
  %64 = load i64, i64* %10, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %10, align 8
  br label %19

66:                                               ; preds = %19
  %67 = load i32, i32* @GXV_EXIT, align 4
  ret void
}

declare dso_local i32 @FT_UNUSED(i32) #1

declare dso_local i32 @GXV_NAME_ENTER(i8*) #1

declare dso_local i64 @FT_NEXT_USHORT(i32) #1

declare dso_local i32 @gxv_glyphid_validate(i64, i32) #1

declare dso_local i32 @GXV_TRACE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/gxvalid/extr_gxvjust.c_gxv_just_actSubrecord_validate.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/gxvalid/extr_gxvjust.c_gxv_just_actSubrecord_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"just actSubrecord\00", align 1
@FT_INVALID_DATA = common dso_local global i32 0, align 4
@GXV_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_8__*)* @gxv_just_actSubrecord_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gxv_just_actSubrecord_validate(i32 %0, i32 %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %7, align 4
  %12 = call i32 @GXV_NAME_ENTER(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @GXV_LIMIT_CHECK(i32 8)
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @FT_NEXT_USHORT(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @FT_NEXT_USHORT(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @FT_NEXT_ULONG(i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, 65408
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @FT_INVALID_DATA, align 4
  %25 = call i32 @GXV_SET_ERR_IF_PARANOID(i32 %24)
  br label %26

26:                                               ; preds = %23, %3
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = call i32 @gxv_just_actSubrecord_type0_validate(i32 %30, i32 %31, %struct.TYPE_8__* %32)
  br label %77

34:                                               ; preds = %26
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %41 = call i32 @gxv_just_actSubrecord_type1_validate(i32 %38, i32 %39, %struct.TYPE_8__* %40)
  br label %76

42:                                               ; preds = %34
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %49 = call i32 @gxv_just_actSubrecord_type2_validate(i32 %46, i32 %47, %struct.TYPE_8__* %48)
  br label %75

50:                                               ; preds = %42
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %74

54:                                               ; preds = %50
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %55, 4
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %61 = call i32 @gxv_just_actSubrecord_type4_validate(i32 %58, i32 %59, %struct.TYPE_8__* %60)
  br label %73

62:                                               ; preds = %54
  %63 = load i32, i32* %9, align 4
  %64 = icmp eq i32 %63, 5
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %69 = call i32 @gxv_just_actSubrecord_type5_validate(i32 %66, i32 %67, %struct.TYPE_8__* %68)
  br label %72

70:                                               ; preds = %62
  %71 = load i32, i32* @FT_INVALID_DATA, align 4
  br label %72

72:                                               ; preds = %70, %65
  br label %73

73:                                               ; preds = %72, %57
  br label %74

74:                                               ; preds = %73, %53
  br label %75

75:                                               ; preds = %74, %45
  br label %76

76:                                               ; preds = %75, %37
  br label %77

77:                                               ; preds = %76, %29
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @GXV_EXIT, align 4
  ret void
}

declare dso_local i32 @GXV_NAME_ENTER(i8*) #1

declare dso_local i32 @GXV_LIMIT_CHECK(i32) #1

declare dso_local i32 @FT_NEXT_USHORT(i32) #1

declare dso_local i32 @FT_NEXT_ULONG(i32) #1

declare dso_local i32 @GXV_SET_ERR_IF_PARANOID(i32) #1

declare dso_local i32 @gxv_just_actSubrecord_type0_validate(i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @gxv_just_actSubrecord_type1_validate(i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @gxv_just_actSubrecord_type2_validate(i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @gxv_just_actSubrecord_type4_validate(i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @gxv_just_actSubrecord_type5_validate(i32, i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

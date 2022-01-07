; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/gxvalid/extr_gxvmort1.c_gxv_mort_subtable_type1_entry_validate.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/gxvalid/extr_gxvmort1.c_gxv_mort_subtable_type1_entry_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c" non-zero bits found in reserved range\0A\00", align 1
@FT_INVALID_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"markOffset\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"currentOffset\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_3__*, i32, i32, i32)* @gxv_mort_subtable_type1_entry_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gxv_mort_subtable_type1_entry_validate(i32 %0, i32 %1, %struct.TYPE_3__* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @FT_UNUSED(i32 %16)
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @FT_UNUSED(i32 %18)
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, 16383
  store i32 %21, i32* %13, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 16
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %14, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %15, align 8
  %31 = load i32, i32* %13, align 4
  %32 = icmp slt i32 0, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %6
  %34 = call i32 @GXV_TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @FT_INVALID_DATA, align 4
  %36 = call i32 @GXV_SET_ERR_IF_PARANOID(i32 %35)
  br label %37

37:                                               ; preds = %33, %6
  %38 = load i64, i64* %14, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @gxv_mort_subtable_type1_offset_to_subst_validate(i64 %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i64, i64* %15, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @gxv_mort_subtable_type1_offset_to_subst_validate(i64 %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32 %44)
  ret void
}

declare dso_local i32 @FT_UNUSED(i32) #1

declare dso_local i32 @GXV_TRACE(i8*) #1

declare dso_local i32 @GXV_SET_ERR_IF_PARANOID(i32) #1

declare dso_local i32 @gxv_mort_subtable_type1_offset_to_subst_validate(i64, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

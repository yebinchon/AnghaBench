; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/gxvalid/extr_gxvmorx2.c_gxv_morx_subtable_type2_ligatureTable_validate.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/gxvalid/extr_gxvmorx2.c_gxv_morx_subtable_type2_ligatureTable_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_6__*, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64 }

@.str = private unnamed_addr constant [46 x i8] c"morx chain subtable type2 - substitutionTable\00", align 1
@FT_INVALID_GLYPH_ID = common dso_local global i32 0, align 4
@GXV_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.TYPE_9__*)* @gxv_morx_subtable_type2_ligatureTable_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gxv_morx_subtable_type2_ligatureTable_validate(i64 %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %5, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %15, %18
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %3, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  store i64 %28, i64* %7, align 8
  %29 = call i32 @GXV_NAME_ENTER(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 0, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %2
  br label %35

35:                                               ; preds = %53, %34
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %35
  %40 = call i32 @GXV_LIMIT_CHECK(i32 2)
  %41 = load i64, i64* %6, align 8
  %42 = call i64 @FT_NEXT_USHORT(i64 %41)
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %43, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %39
  %51 = load i32, i32* @FT_INVALID_GLYPH_ID, align 4
  %52 = call i32 @GXV_SET_ERR_IF_PARANOID(i32 %51)
  br label %53

53:                                               ; preds = %50, %39
  br label %35

54:                                               ; preds = %35
  br label %55

55:                                               ; preds = %54, %2
  %56 = load i32, i32* @GXV_EXIT, align 4
  ret void
}

declare dso_local i32 @GXV_NAME_ENTER(i8*) #1

declare dso_local i32 @GXV_LIMIT_CHECK(i32) #1

declare dso_local i64 @FT_NEXT_USHORT(i64) #1

declare dso_local i32 @GXV_SET_ERR_IF_PARANOID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

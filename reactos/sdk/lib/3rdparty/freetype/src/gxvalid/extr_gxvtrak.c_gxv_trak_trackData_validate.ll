; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/gxvalid/extr_gxvtrak.c_gxv_trak_trackData_validate.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/gxvalid/extr_gxvtrak.c_gxv_trak_trackData_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@odtect = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"trackData\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"trackData header\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"trackTable\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"sizeTable\00", align 1
@trackValueOffset_min = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"too short trackValue array\0A\00", align 1
@trackValueOffset_max = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"trackValue array\00", align 1
@GXV_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_7__*)* @gxv_trak_trackData_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gxv_trak_trackData_validate(i32 %0, i32 %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @odtect, align 4
  %13 = call i32 @GXV_ODTECT(i32 4, i32 %12)
  %14 = load i32, i32* @odtect, align 4
  %15 = call i32 @GXV_ODTECT_INIT(i32 %14)
  %16 = call i32 @GXV_NAME_ENTER(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @GXV_LIMIT_CHECK(i32 8)
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @FT_NEXT_USHORT(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @FT_NEXT_USHORT(i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @FT_NEXT_ULONG(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %4, align 4
  %27 = sub nsw i32 %25, %26
  %28 = load i32, i32* @odtect, align 4
  %29 = call i32 @gxv_odtect_add_range(i32 %24, i32 %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = call i32 @gxv_trak_trackTable_validate(i32 %30, i32 %31, i32 %32, %struct.TYPE_7__* %33)
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @odtect, align 4
  %40 = call i32 @gxv_odtect_add_range(i32 %35, i32 %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %45, %46
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %9, align 4
  %49 = mul nsw i32 %48, 4
  %50 = call i32 @GXV_LIMIT_CHECK(i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %9, align 4
  %53 = mul nsw i32 %52, 4
  %54 = load i32, i32* @odtect, align 4
  %55 = call i32 @gxv_odtect_add_range(i32 %51, i32 %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @trackValueOffset_min, align 4
  %62 = call i32 @GXV_TRAK_DATA(i32 %61)
  %63 = add nsw i32 %60, %62
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %7, align 4
  %66 = sub nsw i32 %64, %65
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = mul nsw i32 %67, %68
  %70 = mul nsw i32 %69, 2
  %71 = icmp slt i32 %66, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %3
  %73 = call i32 @GXV_TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %3
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @trackValueOffset_max, align 4
  %81 = call i32 @GXV_TRAK_DATA(i32 %80)
  %82 = add nsw i32 %79, %81
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %9, align 4
  %84 = mul nsw i32 %83, 2
  %85 = call i32 @GXV_LIMIT_CHECK(i32 %84)
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @trackValueOffset_min, align 4
  %92 = call i32 @GXV_TRAK_DATA(i32 %91)
  %93 = add nsw i32 %90, %92
  %94 = load i32, i32* @trackValueOffset_max, align 4
  %95 = call i32 @GXV_TRAK_DATA(i32 %94)
  %96 = load i32, i32* @trackValueOffset_min, align 4
  %97 = call i32 @GXV_TRAK_DATA(i32 %96)
  %98 = sub nsw i32 %95, %97
  %99 = load i32, i32* %9, align 4
  %100 = mul nsw i32 %99, 2
  %101 = add nsw i32 %98, %100
  %102 = load i32, i32* @odtect, align 4
  %103 = call i32 @gxv_odtect_add_range(i32 %93, i32 %101, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @odtect, align 4
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %106 = call i32 @gxv_odtect_validate(i32 %104, %struct.TYPE_7__* %105)
  %107 = load i32, i32* @GXV_EXIT, align 4
  ret void
}

declare dso_local i32 @GXV_ODTECT(i32, i32) #1

declare dso_local i32 @GXV_ODTECT_INIT(i32) #1

declare dso_local i32 @GXV_NAME_ENTER(i8*) #1

declare dso_local i32 @GXV_LIMIT_CHECK(i32) #1

declare dso_local i32 @FT_NEXT_USHORT(i32) #1

declare dso_local i32 @FT_NEXT_ULONG(i32) #1

declare dso_local i32 @gxv_odtect_add_range(i32, i32, i8*, i32) #1

declare dso_local i32 @gxv_trak_trackTable_validate(i32, i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @GXV_TRAK_DATA(i32) #1

declare dso_local i32 @GXV_TRACE(i8*) #1

declare dso_local i32 @gxv_odtect_validate(i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/gxvalid/extr_gxvmorx2.c_gxv_morx_subtable_type2_ligActionIndex_validate.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/gxvalid/extr_gxvmorx2.c_gxv_morx_subtable_type2_ligActionIndex_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@GXV_MORX_LIGACTION_ENTRY_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"p < lat_base (%d byte rewind)\0A\00", align 1
@FT_INVALID_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"lat_limit < p (%d byte overrun)\0A\00", align 1
@.str.2 = private unnamed_addr constant [95 x i8] c"ligature action table includes too negative offset moving all GID below defined range: 0x%04x\0A\00", align 1
@.str.3 = private unnamed_addr constant [91 x i8] c"ligature action table includes too large offset moving all GID over defined range: 0x%04x\0A\00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"ligature action table includes invalid offset to add to 16-bit GID: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, %struct.TYPE_9__*)* @gxv_morx_subtable_type2_ligActionIndex_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gxv_morx_subtable_type2_ligActionIndex_validate(i64 %0, i32 %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %7, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @GXV_MORX_LIGACTION_ENTRY_SIZE, align 4
  %28 = mul nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %25, %29
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %3
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = sub nsw i64 %40, %41
  %43 = inttoptr i64 %42 to i8*
  %44 = call i32 @GXV_TRACE(i8* %43)
  %45 = load i32, i32* @FT_INVALID_OFFSET, align 4
  br label %58

46:                                               ; preds = %3
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %9, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %10, align 8
  %53 = sub nsw i64 %51, %52
  %54 = inttoptr i64 %53 to i8*
  %55 = call i32 @GXV_TRACE(i8* %54)
  %56 = load i32, i32* @FT_INVALID_OFFSET, align 4
  br label %57

57:                                               ; preds = %50, %46
  br label %58

58:                                               ; preds = %57, %39
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @FT_NEXT_ULONG(i64 %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = and i64 %62, 1073741823
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = and i64 %66, 1073676288
  %68 = icmp eq i64 %67, 1073676288
  br i1 %68, label %69, label %90

69:                                               ; preds = %58
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = and i64 %76, 65535
  %78 = sub nsw i64 %74, %77
  store i64 %78, i64* %13, align 8
  %79 = load i64, i64* %13, align 8
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %69
  br label %121

82:                                               ; preds = %69
  %83 = load i32, i32* %12, align 4
  %84 = and i32 %83, 65535
  %85 = zext i32 %84 to i64
  %86 = inttoptr i64 %85 to i8*
  %87 = call i32 @GXV_TRACE(i8* %86)
  %88 = load i32, i32* @FT_INVALID_OFFSET, align 4
  %89 = call i32 @GXV_SET_ERR_IF_PARANOID(i32 %88)
  br label %114

90:                                               ; preds = %58
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = and i64 %92, 1073676288
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %113

95:                                               ; preds = %90
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp slt i64 %97, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  br label %121

105:                                              ; preds = %95
  %106 = load i32, i32* %12, align 4
  %107 = and i32 %106, 65535
  %108 = zext i32 %107 to i64
  %109 = inttoptr i64 %108 to i8*
  %110 = call i32 @GXV_TRACE(i8* %109)
  %111 = load i32, i32* @FT_INVALID_OFFSET, align 4
  %112 = call i32 @GXV_SET_ERR_IF_PARANOID(i32 %111)
  br label %113

113:                                              ; preds = %105, %90
  br label %114

114:                                              ; preds = %113, %82
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = inttoptr i64 %116 to i8*
  %118 = call i32 @GXV_TRACE(i8* %117)
  %119 = load i32, i32* @FT_INVALID_OFFSET, align 4
  %120 = call i32 @GXV_SET_ERR_IF_PARANOID(i32 %119)
  br label %121

121:                                              ; preds = %114, %104, %81
  ret void
}

declare dso_local i32 @GXV_TRACE(i8*) #1

declare dso_local i32 @FT_NEXT_ULONG(i64) #1

declare dso_local i32 @GXV_SET_ERR_IF_PARANOID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

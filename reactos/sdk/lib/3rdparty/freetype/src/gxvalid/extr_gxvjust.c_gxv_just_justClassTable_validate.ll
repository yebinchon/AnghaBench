; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/gxvalid/extr_gxvjust.c_gxv_just_justClassTable_validate.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/gxvalid/extr_gxvjust.c_gxv_just_justClassTable_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32*, i32*, i32* }

@.str = private unnamed_addr constant [20 x i8] c"just justClassTable\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"  justClassTable: coverage = 0x%04x (%s) \00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"ascending\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"descending\0A\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"  justClassTable: nonzero value (0x%08x) in unused subFeatureFlags\0A\00", align 1
@GXV_GLYPHOFFSET_NONE = common dso_local global i32 0, align 4
@gxv_just_classTable_entry_validate = common dso_local global i32 0, align 4
@GXV_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_6__*)* @gxv_just_justClassTable_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gxv_just_justClassTable_validate(i32 %0, i32 %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %7, align 4
  %12 = call i32 @GXV_NAME_ENTER(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @GXV_LIMIT_CHECK(i32 8)
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @FT_NEXT_USHORT(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @FT_NEXT_USHORT(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @FT_NEXT_ULONG(i32 %18)
  store i64 %19, i64* %10, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i8*
  %23 = call i32 @GXV_TRACE(i8* %22)
  %24 = load i32, i32* %9, align 4
  %25 = and i32 %24, 16384
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = call i32 @GXV_TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %31

29:                                               ; preds = %3
  %30 = call i32 @GXV_TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %27
  %32 = load i64, i64* %10, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i64, i64* %10, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = call i32 @GXV_TRACE(i8* %36)
  br label %38

38:                                               ; preds = %34, %31
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 4
  store i32* null, i32** %41, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  store i32* null, i32** %44, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  store i32* null, i32** %47, align 8
  %48 = load i32, i32* @GXV_GLYPHOFFSET_NONE, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* @gxv_just_classTable_entry_validate, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %57, %58
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %61 = call i32 @gxv_StateTable_validate(i32 %56, i32 %59, %struct.TYPE_6__* %60)
  %62 = load i32, i32* @GXV_EXIT, align 4
  ret void
}

declare dso_local i32 @GXV_NAME_ENTER(i8*) #1

declare dso_local i32 @GXV_LIMIT_CHECK(i32) #1

declare dso_local i32 @FT_NEXT_USHORT(i32) #1

declare dso_local i64 @FT_NEXT_ULONG(i32) #1

declare dso_local i32 @GXV_TRACE(i8*) #1

declare dso_local i32 @gxv_StateTable_validate(i32, i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

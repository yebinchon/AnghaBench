; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/gxvalid/extr_gxvfeat.c_gxv_feat_registry_validate.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/gxvalid/extr_gxvfeat.c_gxv_feat_registry_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"feature in registry\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c" (feature = %u)\0A\00", align 1
@gxv_feat_registry_length = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"feature number %d is out of range %d\0A\00", align 1
@FT_INVALID_DATA = common dso_local global i32 0, align 4
@gxv_feat_registry = common dso_local global %struct.TYPE_7__* null, align 8
@.str.3 = private unnamed_addr constant [57 x i8] c"feature number %d is in defined range but doesn't exist\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"feature number %d is reserved by Apple\0A\00", align 1
@FT_VALIDATE_TIGHT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [50 x i8] c"feature %d: nSettings %d != defined nSettings %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"exclusive flag %d differs from predefined value\0A\00", align 1
@GXV_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, %struct.TYPE_6__*)* @gxv_feat_registry_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gxv_feat_registry_validate(i64 %0, i64 %1, i64 %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %8, align 8
  %9 = call i32 @GXV_NAME_ENTER(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %10 = load i64, i64* %5, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = call i32 @GXV_TRACE(i8* %11)
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @gxv_feat_registry_length, align 8
  %15 = icmp uge i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %4
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @gxv_feat_registry_length, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @GXV_TRACE(i8* %19)
  %21 = load i32, i32* @FT_INVALID_DATA, align 4
  %22 = call i32 @GXV_SET_ERR_IF_PARANOID(i32 %21)
  br label %108

23:                                               ; preds = %4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** @gxv_feat_registry, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load i64, i64* %5, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @GXV_TRACE(i8* %32)
  %34 = load i32, i32* @FT_INVALID_DATA, align 4
  %35 = call i32 @GXV_SET_ERR_IF_PARANOID(i32 %34)
  br label %108

36:                                               ; preds = %23
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** @gxv_feat_registry, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %36
  %44 = load i64, i64* %5, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = call i32 @GXV_TRACE(i8* %45)
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @FT_VALIDATE_TIGHT, align 8
  %53 = icmp sge i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = load i32, i32* @FT_INVALID_DATA, align 4
  br label %56

56:                                               ; preds = %54, %43
  br label %57

57:                                               ; preds = %56, %36
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** @gxv_feat_registry, align 8
  %60 = load i64, i64* %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %58, %63
  br i1 %64, label %65, label %85

65:                                               ; preds = %57
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* %6, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** @gxv_feat_registry, align 8
  %69 = load i64, i64* %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i8*
  %74 = call i32 @GXV_TRACE(i8* %73)
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @FT_VALIDATE_TIGHT, align 8
  %81 = icmp sge i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %65
  %83 = load i32, i32* @FT_INVALID_DATA, align 4
  br label %84

84:                                               ; preds = %82, %65
  br label %85

85:                                               ; preds = %84, %57
  %86 = load i64, i64* %7, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** @gxv_feat_registry, align 8
  %88 = load i64, i64* %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %86, %91
  br i1 %92, label %93, label %107

93:                                               ; preds = %85
  %94 = load i64, i64* %7, align 8
  %95 = inttoptr i64 %94 to i8*
  %96 = call i32 @GXV_TRACE(i8* %95)
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @FT_VALIDATE_TIGHT, align 8
  %103 = icmp sge i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %93
  %105 = load i32, i32* @FT_INVALID_DATA, align 4
  br label %106

106:                                              ; preds = %104, %93
  br label %107

107:                                              ; preds = %106, %85
  br label %108

108:                                              ; preds = %107, %30, %16
  %109 = load i32, i32* @GXV_EXIT, align 4
  ret void
}

declare dso_local i32 @GXV_NAME_ENTER(i8*) #1

declare dso_local i32 @GXV_TRACE(i8*) #1

declare dso_local i32 @GXV_SET_ERR_IF_PARANOID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

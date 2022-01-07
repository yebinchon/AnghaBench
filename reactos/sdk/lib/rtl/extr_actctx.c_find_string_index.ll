; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_find_string_index.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_find_string_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_index = type { i64, i32 }
%struct.strsection_header = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"section %p, name %wZ\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@HASH_STRING_ALGORITHM_X65599 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"iter->hash 0x%x ?= 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"iter->name %S\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"hash collision 0x%08x, %wZ, %S\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.string_index* (%struct.strsection_header*, %struct.TYPE_5__*)* @find_string_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.string_index* @find_string_index(%struct.strsection_header* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.strsection_header*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.string_index*, align 8
  %6 = alloca %struct.string_index*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.strsection_header* %0, %struct.strsection_header** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  store %struct.string_index* null, %struct.string_index** %6, align 8
  store i64 0, i64* %7, align 8
  %10 = load %struct.strsection_header*, %struct.strsection_header** %3, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = call i32 (i8*, %struct.strsection_header*, ...) @DPRINT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.strsection_header* %10, %struct.TYPE_5__* %11)
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = load i32, i32* @TRUE, align 4
  %15 = load i32, i32* @HASH_STRING_ALGORITHM_X65599, align 4
  %16 = call i32 @RtlHashUnicodeString(%struct.TYPE_5__* %13, i32 %14, i32 %15, i64* %7)
  %17 = load %struct.strsection_header*, %struct.strsection_header** %3, align 8
  %18 = bitcast %struct.strsection_header* %17 to i32*
  %19 = load %struct.strsection_header*, %struct.strsection_header** %3, align 8
  %20 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %18, i64 %22
  %24 = bitcast i32* %23 to %struct.string_index*
  store %struct.string_index* %24, %struct.string_index** %5, align 8
  store i64 0, i64* %8, align 8
  br label %25

25:                                               ; preds = %93, %2
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.strsection_header*, %struct.strsection_header** %3, align 8
  %28 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %31, label %96

31:                                               ; preds = %25
  %32 = load %struct.string_index*, %struct.string_index** %5, align 8
  %33 = getelementptr inbounds %struct.string_index, %struct.string_index* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.strsection_header*
  %36 = load i64, i64* %7, align 8
  %37 = call i32 (i8*, %struct.strsection_header*, ...) @DPRINT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct.strsection_header* %35, i64 %36)
  %38 = load %struct.strsection_header*, %struct.strsection_header** %3, align 8
  %39 = bitcast %struct.strsection_header* %38 to i32*
  %40 = load %struct.string_index*, %struct.string_index** %5, align 8
  %41 = getelementptr inbounds %struct.string_index, %struct.string_index* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  %45 = bitcast i32* %44 to %struct.strsection_header*
  %46 = call i32 (i8*, %struct.strsection_header*, ...) @DPRINT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), %struct.strsection_header* %45)
  %47 = load %struct.string_index*, %struct.string_index** %5, align 8
  %48 = getelementptr inbounds %struct.string_index, %struct.string_index* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %90

52:                                               ; preds = %31
  %53 = load %struct.strsection_header*, %struct.strsection_header** %3, align 8
  %54 = bitcast %struct.strsection_header* %53 to i32*
  %55 = load %struct.string_index*, %struct.string_index** %5, align 8
  %56 = getelementptr inbounds %struct.string_index, %struct.string_index* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  store i32* %59, i32** %9, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = udiv i64 %67, 4
  %69 = trunc i64 %68 to i32
  %70 = call i32 @_wcsnicmp(i32* %60, i32 %63, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %84, label %72

72:                                               ; preds = %52
  %73 = load i32*, i32** %9, align 8
  %74 = call i32 @wcslen(i32* %73)
  %75 = sext i32 %74 to i64
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = udiv i64 %79, 4
  %81 = icmp eq i64 %75, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %72
  %83 = load %struct.string_index*, %struct.string_index** %5, align 8
  store %struct.string_index* %83, %struct.string_index** %6, align 8
  br label %96

84:                                               ; preds = %72, %52
  %85 = load i64, i64* %7, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = call i32 @DPRINT1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %85, %struct.TYPE_5__* %86, i32* %87)
  br label %89

89:                                               ; preds = %84
  br label %90

90:                                               ; preds = %89, %31
  %91 = load %struct.string_index*, %struct.string_index** %5, align 8
  %92 = getelementptr inbounds %struct.string_index, %struct.string_index* %91, i32 1
  store %struct.string_index* %92, %struct.string_index** %5, align 8
  br label %93

93:                                               ; preds = %90
  %94 = load i64, i64* %8, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %8, align 8
  br label %25

96:                                               ; preds = %82, %25
  %97 = load %struct.string_index*, %struct.string_index** %6, align 8
  ret %struct.string_index* %97
}

declare dso_local i32 @DPRINT(i8*, %struct.strsection_header*, ...) #1

declare dso_local i32 @RtlHashUnicodeString(%struct.TYPE_5__*, i32, i32, i64*) #1

declare dso_local i32 @_wcsnicmp(i32*, i32, i32) #1

declare dso_local i32 @wcslen(i32*) #1

declare dso_local i32 @DPRINT1(i8*, i64, %struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

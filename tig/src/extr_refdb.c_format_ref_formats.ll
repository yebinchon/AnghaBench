; ModuleID = '/home/carl/AnghaBench/tig/src/extr_refdb.c_format_ref_formats.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_refdb.c_format_ref_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enum_map = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ref_format = type { i32, i32 }

@reference_type_map = common dso_local global %struct.enum_map* null, align 8
@SIZEOF_STR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%s%s%s%s\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"No space left in buffer\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @format_ref_formats(%struct.ref_format** %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ref_format**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.enum_map*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ref_format*, align 8
  store %struct.ref_format** %0, %struct.ref_format*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load %struct.enum_map*, %struct.enum_map** @reference_type_map, align 8
  store %struct.enum_map* %16, %struct.enum_map** %8, align 8
  %17 = load i32, i32* @SIZEOF_STR, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  store i64 0, i64* %12, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %21 = load %struct.ref_format**, %struct.ref_format*** %5, align 8
  %22 = icmp ne %struct.ref_format** %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @SUCCESS, align 4
  store i32 %24, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %73

25:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %68, %25
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.enum_map*, %struct.enum_map** %8, align 8
  %29 = getelementptr inbounds %struct.enum_map, %struct.enum_map* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %71

32:                                               ; preds = %26
  %33 = load %struct.ref_format**, %struct.ref_format*** %5, align 8
  %34 = load i32, i32* %11, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ref_format*, %struct.ref_format** %33, i64 %35
  %37 = load %struct.ref_format*, %struct.ref_format** %36, align 8
  store %struct.ref_format* %37, %struct.ref_format** %15, align 8
  %38 = load %struct.ref_format*, %struct.ref_format** %15, align 8
  %39 = icmp ne %struct.ref_format* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  br label %68

41:                                               ; preds = %32
  %42 = trunc i64 %18 to i32
  %43 = load %struct.enum_map*, %struct.enum_map** %8, align 8
  %44 = getelementptr inbounds %struct.enum_map, %struct.enum_map* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @enum_name_copy(i8* %20, i32 %42, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %41
  %54 = load i8*, i8** %6, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = load %struct.ref_format*, %struct.ref_format** %15, align 8
  %58 = getelementptr inbounds %struct.ref_format, %struct.ref_format* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ref_format*, %struct.ref_format** %15, align 8
  %61 = getelementptr inbounds %struct.ref_format, %struct.ref_format* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @string_nformat(i8* %54, i64 %55, i64* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %56, i32 %59, i8* %20, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %53, %41
  %66 = call i32 @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 %66, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %73

67:                                               ; preds = %53
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %13, align 8
  br label %68

68:                                               ; preds = %67, %40
  %69 = load i32, i32* %11, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %11, align 4
  br label %26

71:                                               ; preds = %26
  %72 = load i32, i32* @SUCCESS, align 4
  store i32 %72, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %73

73:                                               ; preds = %71, %65, %23
  %74 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %74)
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @enum_name_copy(i8*, i32, i32) #2

declare dso_local i32 @string_nformat(i8*, i64, i64*, i8*, i8*, i32, i8*, i32) #2

declare dso_local i32 @error(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

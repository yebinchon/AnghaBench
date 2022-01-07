; ModuleID = '/home/carl/AnghaBench/tig/src/extr_options.c_parse_enum.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_options.c_parse_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enum_map = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"date-display\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c", use the 'date-local' column option\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c", use the 'custom' display mode and set 'date-format'\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"'%s' is no longer supported for %s%s\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"'%s' is not a valid value for %s; using %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i8*, %struct.enum_map*)* @parse_enum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_enum(i8* %0, i32* %1, i8* %2, %struct.enum_map* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.enum_map*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.enum_map* %3, %struct.enum_map** %9, align 8
  %13 = load %struct.enum_map*, %struct.enum_map** %9, align 8
  %14 = getelementptr inbounds %struct.enum_map, %struct.enum_map* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sgt i32 %15, 1
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.enum_map*, %struct.enum_map** %9, align 8
  %20 = getelementptr inbounds %struct.enum_map, %struct.enum_map* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load %struct.enum_map*, %struct.enum_map** %9, align 8
  %23 = getelementptr inbounds %struct.enum_map, %struct.enum_map* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i64 @map_enum_do(%struct.TYPE_2__* %21, i32 %24, i32* %25, i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* @SUCCESS, align 4
  store i32 %30, i32* %5, align 4
  br label %99

31:                                               ; preds = %4
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @parse_bool(i32* %10, i8* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.enum_map*, %struct.enum_map** %9, align 8
  %38 = getelementptr inbounds %struct.enum_map, %struct.enum_map* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  br label %50

43:                                               ; preds = %31
  %44 = load %struct.enum_map*, %struct.enum_map** %9, align 8
  %45 = getelementptr inbounds %struct.enum_map, %struct.enum_map* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  br label %50

50:                                               ; preds = %43, %36
  %51 = phi i32 [ %42, %36 ], [ %49, %43 ]
  %52 = load i32*, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @SUCCESS, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %5, align 4
  br label %99

58:                                               ; preds = %50
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %85, label %62

62:                                               ; preds = %58
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @strcasecmp(i8* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  br label %73

67:                                               ; preds = %62
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @strcasecmp(i8* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i8** %12, align 8
  br label %72

72:                                               ; preds = %71, %67
  br label %73

73:                                               ; preds = %72, %66
  %74 = load %struct.enum_map*, %struct.enum_map** %9, align 8
  %75 = getelementptr inbounds %struct.enum_map, %struct.enum_map* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %7, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i8*, i8** %8, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = call i32 @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i8* %81, i8* %82, i8* %83)
  store i32 %84, i32* %5, align 4
  br label %99

85:                                               ; preds = %58
  %86 = load i8*, i8** %8, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = load %struct.enum_map*, %struct.enum_map** %9, align 8
  %89 = getelementptr inbounds %struct.enum_map, %struct.enum_map* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = load i32*, i32** %7, align 8
  %92 = load i32, i32* %91, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @enum_name(i32 %96)
  %98 = call i32 @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i8* %86, i8* %87, i8* %97)
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %85, %73, %56, %29
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @map_enum_do(%struct.TYPE_2__*, i32, i32*, i8*) #1

declare dso_local i32 @parse_bool(i32*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @error(i8*, i8*, i8*, i8*) #1

declare dso_local i8* @enum_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_theme.c_rofi_theme_find_property.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_theme.c_rofi_theme_find_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }
%struct.TYPE_11__ = type { %struct.TYPE_11__*, i32, i64 }

@P_INHERIT = common dso_local global i64 0, align 8
@P_LINK = common dso_local global i64 0, align 8
@P_INTEGER = common dso_local global i64 0, align 8
@P_PADDING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [75 x i8] c"Found property: '%s' on '%s', but type %s does not match expected type %s.\00", align 1
@PropertyTypeName = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @rofi_theme_find_property(%struct.TYPE_11__* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  br label %11

11:                                               ; preds = %119, %4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %13 = icmp ne %struct.TYPE_11__* %12, null
  br i1 %13, label %14, label %123

14:                                               ; preds = %11
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %115

19:                                               ; preds = %14
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i64 @g_hash_table_contains(i64 %22, i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %115

26:                                               ; preds = %19
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call %struct.TYPE_12__* @g_hash_table_lookup(i64 %29, i8* %30)
  store %struct.TYPE_12__* %31, %struct.TYPE_12__** %10, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @P_INHERIT, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %38, %struct.TYPE_12__** %5, align 8
  br label %124

39:                                               ; preds = %26
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @P_LINK, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %79

45:                                               ; preds = %39
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = icmp eq %struct.TYPE_12__* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %54 = call i32 @rofi_theme_resolve_link_property(%struct.TYPE_12__* %53, i32 0)
  br label %55

55:                                               ; preds = %52, %45
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = icmp ne %struct.TYPE_12__* %60, null
  br i1 %61, label %62, label %78

62:                                               ; preds = %55
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %7, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %62
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  store %struct.TYPE_12__* %77, %struct.TYPE_12__** %5, align 8
  br label %124

78:                                               ; preds = %62, %55
  br label %79

79:                                               ; preds = %78, %39
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %7, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %86, %struct.TYPE_12__** %5, align 8
  br label %124

87:                                               ; preds = %79
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @P_INTEGER, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load i64, i64* %7, align 8
  %95 = load i64, i64* @P_PADDING, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %98, %struct.TYPE_12__** %5, align 8
  br label %124

99:                                               ; preds = %93, %87
  %100 = load i8*, i8** %8, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32*, i32** @PropertyTypeName, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** @PropertyTypeName, align 8
  %111 = load i64, i64* %7, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @g_debug(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i8* %100, i32 %103, i32 %109, i32 %113)
  br label %115

115:                                              ; preds = %99, %19, %14
  %116 = load i64, i64* %9, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %5, align 8
  br label %124

119:                                              ; preds = %115
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %121, align 8
  store %struct.TYPE_11__* %122, %struct.TYPE_11__** %6, align 8
  br label %11

123:                                              ; preds = %11
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %5, align 8
  br label %124

124:                                              ; preds = %123, %118, %97, %85, %72, %37
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  ret %struct.TYPE_12__* %125
}

declare dso_local i64 @g_hash_table_contains(i64, i8*) #1

declare dso_local %struct.TYPE_12__* @g_hash_table_lookup(i64, i8*) #1

declare dso_local i32 @rofi_theme_resolve_link_property(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @g_debug(i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

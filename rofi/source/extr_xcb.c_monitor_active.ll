; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_xcb.c_monitor_active.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_xcb.c_monitor_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8*, i64, %struct.TYPE_9__* }

@config = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@xcb = common dso_local global %struct.TYPE_10__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"primary\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"wid:\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to find selected monitor.\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @monitor_active(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %10 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @config, i32 0, i32 0), align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %38

12:                                               ; preds = %1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** @xcb, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %4, align 8
  br label %16

16:                                               ; preds = %33, %12
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = icmp ne %struct.TYPE_9__* %17, null
  br i1 %18, label %19, label %37

19:                                               ; preds = %16
  %20 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @config, i32 0, i32 0), align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @g_strcmp0(i8* %20, i8* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = bitcast %struct.TYPE_9__* %27 to i8*
  %30 = bitcast %struct.TYPE_9__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 24, i1 false)
  %31 = load i32, i32* @TRUE, align 4
  store i32 %31, i32* %2, align 4
  br label %114

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %4, align 8
  br label %16

37:                                               ; preds = %16
  br label %38

38:                                               ; preds = %37, %1
  %39 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @config, i32 0, i32 0), align 8
  %40 = call i64 @g_strcmp0(i8* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %66

42:                                               ; preds = %38
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** @xcb, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  store %struct.TYPE_9__* %45, %struct.TYPE_9__** %5, align 8
  br label %46

46:                                               ; preds = %61, %42
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = icmp ne %struct.TYPE_9__* %47, null
  br i1 %48, label %49, label %65

49:                                               ; preds = %46
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %57 = bitcast %struct.TYPE_9__* %55 to i8*
  %58 = bitcast %struct.TYPE_9__* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %57, i8* align 8 %58, i64 24, i1 false)
  %59 = load i32, i32* @TRUE, align 4
  store i32 %59, i32* %2, align 4
  br label %114

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  store %struct.TYPE_9__* %64, %struct.TYPE_9__** %5, align 8
  br label %46

65:                                               ; preds = %46
  br label %66

66:                                               ; preds = %65, %38
  %67 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @config, i32 0, i32 0), align 8
  %68 = call i64 @g_str_has_prefix(i8* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %66
  store i8* null, i8** %6, align 8
  %71 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @config, i32 0, i32 0), align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 4
  %73 = call i8* @g_ascii_strtoll(i8* %72, i8** %6, i32 0)
  store i8* %73, i8** %7, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @config, i32 0, i32 0), align 8
  %76 = icmp ne i8* %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %70
  %78 = load i8*, i8** %7, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %80 = call i64 @monitor_active_from_winid(i8* %78, %struct.TYPE_9__* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* @TRUE, align 4
  store i32 %83, i32* %2, align 4
  br label %114

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %84, %70
  br label %86

86:                                               ; preds = %85, %66
  store i8* null, i8** %8, align 8
  %87 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @config, i32 0, i32 0), align 8
  %88 = call i8* @g_ascii_strtoll(i8* %87, i8** %8, i32 0)
  %89 = ptrtoint i8* %88 to i64
  store i64 %89, i64* %9, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @config, i32 0, i32 0), align 8
  %92 = icmp ne i8* %90, %91
  br i1 %92, label %93, label %110

93:                                               ; preds = %86
  %94 = load i64, i64* %9, align 8
  %95 = icmp sge i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %93
  %97 = load i64, i64* %9, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %99 = call i64 @monitor_get_dimension(i64 %97, %struct.TYPE_9__* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load i32, i32* @TRUE, align 4
  store i32 %102, i32* %2, align 4
  br label %114

103:                                              ; preds = %96
  %104 = call i32 @g_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %109

105:                                              ; preds = %93
  %106 = load i64, i64* %9, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %108 = call i32 @monitor_active_from_id(i64 %106, %struct.TYPE_9__* %107)
  store i32 %108, i32* %2, align 4
  br label %114

109:                                              ; preds = %103
  br label %110

110:                                              ; preds = %109, %86
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %112 = call i32 @monitor_dimensions(i32 0, i32 0, %struct.TYPE_9__* %111)
  %113 = load i32, i32* @FALSE, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %110, %105, %101, %82, %54, %26
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i64 @g_strcmp0(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @g_str_has_prefix(i8*, i8*) #1

declare dso_local i8* @g_ascii_strtoll(i8*, i8**, i32) #1

declare dso_local i64 @monitor_active_from_winid(i8*, %struct.TYPE_9__*) #1

declare dso_local i64 @monitor_get_dimension(i64, %struct.TYPE_9__*) #1

declare dso_local i32 @g_warning(i8*) #1

declare dso_local i32 @monitor_active_from_id(i64, %struct.TYPE_9__*) #1

declare dso_local i32 @monitor_dimensions(i32, i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

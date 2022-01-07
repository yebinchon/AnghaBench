; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_logind-core.c_manager_process_seat_device.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_logind-core.c_manager_process_seat_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }

@DEVICE_ACTION_REMOVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ID_SEAT\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"seat0\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Device with invalid seat name %s found, ignoring.\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"master-of-seat\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @manager_process_seat_device(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = call i32 @assert(%struct.TYPE_10__* %13)
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* @DEVICE_ACTION_REMOVE, align 4
  %17 = call i64 @device_for_action(i32* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %2
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @sd_device_get_syspath(i32* %20, i8** %8)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %119

25:                                               ; preds = %19
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = call i8* @hashmap_get(i32 %28, i8* %29)
  %31 = bitcast i8* %30 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %6, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = icmp ne %struct.TYPE_11__* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %119

35:                                               ; preds = %25
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @seat_add_to_gc_queue(i32 %38)
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %41 = call i32 @device_free(%struct.TYPE_11__* %40)
  br label %118

42:                                               ; preds = %2
  %43 = load i32*, i32** %5, align 8
  %44 = call i64 @sd_device_get_property_value(i32* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %9)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i8*, i8** %9, align 8
  %48 = call i64 @isempty(i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46, %42
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %51

51:                                               ; preds = %50, %46
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @seat_name_is_valid(i8* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i32*, i32** %5, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @log_device_warning(i32* %56, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  store i32 0, i32* %3, align 4
  br label %119

59:                                               ; preds = %51
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %9, align 8
  %64 = call i8* @hashmap_get(i32 %62, i8* %63)
  %65 = bitcast i8* %64 to i32*
  store i32* %65, i32** %12, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = call i64 @sd_device_has_tag(i32* %66, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %68 = icmp sgt i64 %67, 0
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %59
  %73 = load i32*, i32** %12, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %119

76:                                               ; preds = %72, %59
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @sd_device_get_syspath(i32* %77, i8** %10)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %3, align 4
  br label %119

83:                                               ; preds = %76
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @manager_add_device(%struct.TYPE_10__* %84, i8* %85, i32 %86, %struct.TYPE_11__** %6)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %3, align 4
  br label %119

92:                                               ; preds = %83
  %93 = load i32*, i32** %12, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %112, label %95

95:                                               ; preds = %92
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = call i32 @manager_add_seat(%struct.TYPE_10__* %96, i8* %97, i32** %12)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %95
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %108 = call i32 @device_free(%struct.TYPE_11__* %107)
  br label %109

109:                                              ; preds = %106, %101
  %110 = load i32, i32* %7, align 4
  store i32 %110, i32* %3, align 4
  br label %119

111:                                              ; preds = %95
  br label %112

112:                                              ; preds = %111, %92
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %114 = load i32*, i32** %12, align 8
  %115 = call i32 @device_attach(%struct.TYPE_11__* %113, i32* %114)
  %116 = load i32*, i32** %12, align 8
  %117 = call i32 @seat_start(i32* %116)
  br label %118

118:                                              ; preds = %112, %35
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %118, %109, %90, %81, %75, %55, %34, %24
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @assert(%struct.TYPE_10__*) #1

declare dso_local i64 @device_for_action(i32*, i32) #1

declare dso_local i32 @sd_device_get_syspath(i32*, i8**) #1

declare dso_local i8* @hashmap_get(i32, i8*) #1

declare dso_local i32 @seat_add_to_gc_queue(i32) #1

declare dso_local i32 @device_free(%struct.TYPE_11__*) #1

declare dso_local i64 @sd_device_get_property_value(i32*, i8*, i8**) #1

declare dso_local i64 @isempty(i8*) #1

declare dso_local i32 @seat_name_is_valid(i8*) #1

declare dso_local i32 @log_device_warning(i32*, i8*, i8*) #1

declare dso_local i64 @sd_device_has_tag(i32*, i8*) #1

declare dso_local i32 @manager_add_device(%struct.TYPE_10__*, i8*, i32, %struct.TYPE_11__**) #1

declare dso_local i32 @manager_add_seat(%struct.TYPE_10__*, i8*, i32**) #1

declare dso_local i32 @device_attach(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @seat_start(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

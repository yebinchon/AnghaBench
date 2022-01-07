; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_ipc.c_handle_ipc_readable.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_ipc.c_handle_ipc_readable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar = type { i32, i32*, i32, i32 }
%struct.ipc_response = type { i32, i32 }

@SWAY_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to parse payload as json\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"change\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to parse response\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"pango_markup\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_ipc_readable(%struct.swaybar* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.swaybar*, align 8
  %4 = alloca %struct.ipc_response*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store %struct.swaybar* %0, %struct.swaybar** %3, align 8
  %10 = load %struct.swaybar*, %struct.swaybar** %3, align 8
  %11 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.ipc_response* @ipc_recv_response(i32 %12)
  store %struct.ipc_response* %13, %struct.ipc_response** %4, align 8
  %14 = load %struct.ipc_response*, %struct.ipc_response** %4, align 8
  %15 = icmp ne %struct.ipc_response* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %98

17:                                               ; preds = %1
  %18 = load %struct.ipc_response*, %struct.ipc_response** %4, align 8
  %19 = getelementptr inbounds %struct.ipc_response, %struct.ipc_response* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32* @json_tokener_parse(i32 %20)
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @SWAY_ERROR, align 4
  %26 = call i32 @sway_log(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.ipc_response*, %struct.ipc_response** %4, align 8
  %28 = call i32 @free_ipc_response(%struct.ipc_response* %27)
  store i32 0, i32* %2, align 4
  br label %98

29:                                               ; preds = %17
  store i32 1, i32* %6, align 4
  %30 = load %struct.ipc_response*, %struct.ipc_response** %4, align 8
  %31 = getelementptr inbounds %struct.ipc_response, %struct.ipc_response* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %91 [
    i32 128, label %33
    i32 129, label %36
    i32 131, label %80
    i32 130, label %87
  ]

33:                                               ; preds = %29
  %34 = load %struct.swaybar*, %struct.swaybar** %3, align 8
  %35 = call i32 @ipc_get_workspaces(%struct.swaybar* %34)
  store i32 %35, i32* %6, align 4
  br label %92

36:                                               ; preds = %29
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @json_object_object_get_ex(i32* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32** %7)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %67

40:                                               ; preds = %36
  %41 = load i32*, i32** %7, align 8
  %42 = call i8* @json_object_get_string(i32* %41)
  store i8* %42, i8** %9, align 8
  %43 = load %struct.swaybar*, %struct.swaybar** %3, align 8
  %44 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @free(i32* %45)
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %40
  %51 = load i8*, i8** %9, align 8
  %52 = call i32* @strdup(i8* %51)
  br label %54

53:                                               ; preds = %40
  br label %54

54:                                               ; preds = %53, %50
  %55 = phi i32* [ %52, %50 ], [ null, %53 ]
  %56 = load %struct.swaybar*, %struct.swaybar** %3, align 8
  %57 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %56, i32 0, i32 1
  store i32* %55, i32** %57, align 8
  %58 = load %struct.swaybar*, %struct.swaybar** %3, align 8
  %59 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  %62 = zext i1 %61 to i32
  %63 = load %struct.swaybar*, %struct.swaybar** %3, align 8
  %64 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.swaybar*, %struct.swaybar** %3, align 8
  %66 = call i32 @determine_bar_visibility(%struct.swaybar* %65, i32 0)
  br label %70

67:                                               ; preds = %36
  %68 = load i32, i32* @SWAY_ERROR, align 4
  %69 = call i32 @sway_log(i32 %68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %92

70:                                               ; preds = %54
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @json_object_object_get_ex(i32* %71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32** %8)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @json_object_get_boolean(i32* %75)
  %77 = load %struct.swaybar*, %struct.swaybar** %3, align 8
  %78 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  br label %79

79:                                               ; preds = %74, %70
  br label %92

80:                                               ; preds = %29
  %81 = load %struct.swaybar*, %struct.swaybar** %3, align 8
  %82 = load %struct.ipc_response*, %struct.ipc_response** %4, align 8
  %83 = getelementptr inbounds %struct.ipc_response, %struct.ipc_response* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @handle_barconfig_update(%struct.swaybar* %81, i32 %84, i32* %85)
  store i32 %86, i32* %6, align 4
  br label %92

87:                                               ; preds = %29
  %88 = load %struct.swaybar*, %struct.swaybar** %3, align 8
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 @handle_bar_state_update(%struct.swaybar* %88, i32* %89)
  store i32 %90, i32* %6, align 4
  br label %92

91:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %92

92:                                               ; preds = %91, %87, %80, %79, %67, %33
  %93 = load i32*, i32** %5, align 8
  %94 = call i32 @json_object_put(i32* %93)
  %95 = load %struct.ipc_response*, %struct.ipc_response** %4, align 8
  %96 = call i32 @free_ipc_response(%struct.ipc_response* %95)
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %92, %24, %16
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.ipc_response* @ipc_recv_response(i32) #1

declare dso_local i32* @json_tokener_parse(i32) #1

declare dso_local i32 @sway_log(i32, i8*) #1

declare dso_local i32 @free_ipc_response(%struct.ipc_response*) #1

declare dso_local i32 @ipc_get_workspaces(%struct.swaybar*) #1

declare dso_local i32 @json_object_object_get_ex(i32*, i8*, i32**) #1

declare dso_local i8* @json_object_get_string(i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @determine_bar_visibility(%struct.swaybar*, i32) #1

declare dso_local i32 @json_object_get_boolean(i32*) #1

declare dso_local i32 @handle_barconfig_update(%struct.swaybar*, i32, i32*) #1

declare dso_local i32 @handle_bar_state_update(%struct.swaybar*, i32*) #1

declare dso_local i32 @json_object_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

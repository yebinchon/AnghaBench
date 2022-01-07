; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_xwayland.c_handle_xwayland_ready.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_xwayland.c_handle_xwayland_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_server = type { %struct.sway_xwayland }
%struct.sway_xwayland = type { i32* }
%struct.wl_listener = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@xwayland_ready = common dso_local global i32 0, align 4
@SWAY_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"XCB connect failed: %d\00", align 1
@ATOM_LAST = common dso_local global i32 0, align 4
@atom_map = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"could not resolve atom %s, X11 error code %d\00", align 1
@server = common dso_local global %struct.sway_server* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_xwayland_ready(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_server*, align 8
  %6 = alloca %struct.sway_xwayland*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %15 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %16 = load %struct.sway_server*, %struct.sway_server** %5, align 8
  %17 = ptrtoint %struct.sway_server* %16 to i32
  %18 = load i32, i32* @xwayland_ready, align 4
  %19 = call %struct.sway_server* @wl_container_of(%struct.wl_listener* %15, i32 %17, i32 %18)
  store %struct.sway_server* %19, %struct.sway_server** %5, align 8
  %20 = load %struct.sway_server*, %struct.sway_server** %5, align 8
  %21 = getelementptr inbounds %struct.sway_server, %struct.sway_server* %20, i32 0, i32 0
  store %struct.sway_xwayland* %21, %struct.sway_xwayland** %6, align 8
  %22 = call i32* @xcb_connect(i32* null, i32* null)
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @xcb_connection_has_error(i32* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load i32, i32* @SWAY_ERROR, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 (i32, i8*, i32, ...) @sway_log(i32 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %109

31:                                               ; preds = %2
  %32 = load i32, i32* @ATOM_LAST, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %9, align 8
  %35 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %36

36:                                               ; preds = %55, %31
  %37 = load i64, i64* %11, align 8
  %38 = load i32, i32* @ATOM_LAST, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %36
  %42 = load i32*, i32** %7, align 8
  %43 = load i32*, i32** @atom_map, align 8
  %44 = load i64, i64* %11, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @strlen(i32 %46)
  %48 = load i32*, i32** @atom_map, align 8
  %49 = load i64, i64* %11, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @xcb_intern_atom(i32* %42, i32 0, i32 %47, i32 %51)
  %53 = load i64, i64* %11, align 8
  %54 = getelementptr inbounds i32, i32* %35, i64 %53
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %41
  %56 = load i64, i64* %11, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %11, align 8
  br label %36

58:                                               ; preds = %36
  store i64 0, i64* %12, align 8
  br label %59

59:                                               ; preds = %102, %58
  %60 = load i64, i64* %12, align 8
  %61 = load i32, i32* @ATOM_LAST, align 4
  %62 = sext i32 %61 to i64
  %63 = icmp ult i64 %60, %62
  br i1 %63, label %64, label %105

64:                                               ; preds = %59
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %13, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = load i64, i64* %12, align 8
  %67 = getelementptr inbounds i32, i32* %35, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call %struct.TYPE_6__* @xcb_intern_atom_reply(i32* %65, i32 %68, %struct.TYPE_6__** %13)
  store %struct.TYPE_6__* %69, %struct.TYPE_6__** %14, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %71 = icmp ne %struct.TYPE_6__* %70, null
  br i1 %71, label %72, label %84

72:                                               ; preds = %64
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %74 = icmp eq %struct.TYPE_6__* %73, null
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.sway_xwayland*, %struct.sway_xwayland** %6, align 8
  %80 = getelementptr inbounds %struct.sway_xwayland, %struct.sway_xwayland* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* %12, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32 %78, i32* %83, align 4
  br label %84

84:                                               ; preds = %75, %72, %64
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %86 = call i32 @free(%struct.TYPE_6__* %85)
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %88 = icmp ne %struct.TYPE_6__* %87, null
  br i1 %88, label %89, label %101

89:                                               ; preds = %84
  %90 = load i32, i32* @SWAY_ERROR, align 4
  %91 = load i32*, i32** @atom_map, align 8
  %92 = load i64, i64* %12, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i32, i8*, i32, ...) @sway_log(i32 %90, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %94, i32 %97)
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %100 = call i32 @free(%struct.TYPE_6__* %99)
  br label %105

101:                                              ; preds = %84
  br label %102

102:                                              ; preds = %101
  %103 = load i64, i64* %12, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %12, align 8
  br label %59

105:                                              ; preds = %89, %59
  %106 = load i32*, i32** %7, align 8
  %107 = call i32 @xcb_disconnect(i32* %106)
  %108 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %108)
  br label %109

109:                                              ; preds = %105, %27
  ret void
}

declare dso_local %struct.sway_server* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i32* @xcb_connect(i32*, i32*) #1

declare dso_local i32 @xcb_connection_has_error(i32*) #1

declare dso_local i32 @sway_log(i32, i8*, i32, ...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @xcb_intern_atom(i32*, i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local %struct.TYPE_6__* @xcb_intern_atom_reply(i32*, i32, %struct.TYPE_6__**) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

declare dso_local i32 @xcb_disconnect(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

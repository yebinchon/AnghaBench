; ModuleID = '/home/carl/AnghaBench/sway/sway/config/extr_output.c__spawn_swaybg.c'
source_filename = "/home/carl/AnghaBench/sway/sway/config/extr_output.c__spawn_swaybg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@config = common dso_local global %struct.TYPE_6__* null, align 8
@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@SWAY_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"socketpair failed\00", align 1
@server = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"wl_client_create failed\00", align 1
@handle_swaybg_client_destroy = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"fork failed\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"WAYLAND_SOCKET\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"execvp failed\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"close failed\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"waitpid failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @_spawn_swaybg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_spawn_swaybg(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i64, align 8
  %6 = alloca [16 x i8], align 16
  store i8** %0, i8*** %3, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @wl_client_destroy(i32* %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load i32, i32* @AF_UNIX, align 4
  %18 = load i32, i32* @SOCK_STREAM, align 4
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %20 = call i64 @socketpair(i32 %17, i32 %18, i32 0, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @SWAY_ERROR, align 4
  %24 = call i32 @sway_log_errno(i32 %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %127

25:                                               ; preds = %16
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @sway_set_cloexec(i32 %27, i32 1)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @sway_set_cloexec(i32 %32, i32 1)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30, %25
  store i32 0, i32* %2, align 4
  br label %127

36:                                               ; preds = %30
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 0), align 4
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32* @wl_client_create(i32 %37, i32 %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store i32* %40, i32** %42, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load i32, i32* @SWAY_ERROR, align 4
  %49 = call i32 @sway_log_errno(i32 %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %127

50:                                               ; preds = %36
  %51 = load i32, i32* @handle_swaybg_client_destroy, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = call i32 @wl_client_add_destroy_listener(i32* %57, %struct.TYPE_4__* %59)
  %61 = call i64 (...) @fork()
  store i64 %61, i64* %5, align 8
  %62 = load i64, i64* %5, align 8
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %50
  %65 = load i32, i32* @SWAY_ERROR, align 4
  %66 = call i32 @sway_log_errno(i32 %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %127

67:                                               ; preds = %50
  %68 = load i64, i64* %5, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %110

70:                                               ; preds = %67
  %71 = call i64 (...) @fork()
  store i64 %71, i64* %5, align 8
  %72 = load i64, i64* %5, align 8
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load i32, i32* @SWAY_ERROR, align 4
  %76 = call i32 @sway_log_errno(i32 %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i32, i32* @EXIT_FAILURE, align 4
  %78 = call i32 @_exit(i32 %77) #3
  unreachable

79:                                               ; preds = %70
  %80 = load i64, i64* %5, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %106

82:                                               ; preds = %79
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @sway_set_cloexec(i32 %84, i32 0)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* @EXIT_FAILURE, align 4
  %89 = call i32 @_exit(i32 %88) #3
  unreachable

90:                                               ; preds = %82
  %91 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @snprintf(i8* %91, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  %95 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %96 = call i32 @setenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %95, i32 1)
  %97 = load i8**, i8*** %3, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 0
  %99 = load i8*, i8** %98, align 8
  %100 = load i8**, i8*** %3, align 8
  %101 = call i32 @execvp(i8* %99, i8** %100)
  %102 = load i32, i32* @SWAY_ERROR, align 4
  %103 = call i32 @sway_log_errno(i32 %102, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %104 = load i32, i32* @EXIT_FAILURE, align 4
  %105 = call i32 @_exit(i32 %104) #3
  unreachable

106:                                              ; preds = %79
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* @EXIT_SUCCESS, align 4
  %109 = call i32 @_exit(i32 %108) #3
  unreachable

110:                                              ; preds = %67
  br label %111

111:                                              ; preds = %110
  %112 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @close(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load i32, i32* @SWAY_ERROR, align 4
  %118 = call i32 @sway_log_errno(i32 %117, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %127

119:                                              ; preds = %111
  %120 = load i64, i64* %5, align 8
  %121 = call i64 @waitpid(i64 %120, i32* null, i32 0)
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %119
  %124 = load i32, i32* @SWAY_ERROR, align 4
  %125 = call i32 @sway_log_errno(i32 %124, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %127

126:                                              ; preds = %119
  store i32 1, i32* %2, align 4
  br label %127

127:                                              ; preds = %126, %123, %116, %64, %47, %35, %22
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @wl_client_destroy(i32*) #1

declare dso_local i64 @socketpair(i32, i32, i32, i32*) #1

declare dso_local i32 @sway_log_errno(i32, i8*) #1

declare dso_local i32 @sway_set_cloexec(i32, i32) #1

declare dso_local i32* @wl_client_create(i32, i32) #1

declare dso_local i32 @wl_client_add_destroy_listener(i32*, %struct.TYPE_4__*) #1

declare dso_local i64 @fork(...) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

declare dso_local i32 @execvp(i8*, i8**) #1

declare dso_local i64 @close(i32) #1

declare dso_local i64 @waitpid(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

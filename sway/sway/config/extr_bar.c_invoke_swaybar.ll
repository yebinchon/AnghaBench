; ModuleID = '/home/carl/AnghaBench/sway/sway/config/extr_bar.c_invoke_swaybar.c'
source_filename = "/home/carl/AnghaBench/sway/sway/config/extr_bar.c_invoke_swaybar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.bar_config = type { i8*, i8*, %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i32 }

@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@SWAY_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"socketpair failed\00", align 1
@server = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"wl_client_create failed\00", align 1
@handle_swaybar_client_destroy = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to create fork for swaybar\00", align 1
@SIG_SETMASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"fork failed\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"WAYLAND_SOCKET\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"swaybar\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"close failed\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"waitpid failed\00", align 1
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [19 x i8] c"Spawned swaybar %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bar_config*)* @invoke_swaybar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @invoke_swaybar(%struct.bar_config* %0) #0 {
  %2 = alloca %struct.bar_config*, align 8
  %3 = alloca [2 x i32], align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca [16 x i8], align 16
  %7 = alloca [4 x i8*], align 16
  store %struct.bar_config* %0, %struct.bar_config** %2, align 8
  %8 = load i32, i32* @AF_UNIX, align 4
  %9 = load i32, i32* @SOCK_STREAM, align 4
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %11 = call i64 @socketpair(i32 %8, i32 %9, i32 0, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @SWAY_ERROR, align 4
  %15 = call i32 @sway_log_errno(i32 %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %141

16:                                               ; preds = %1
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @sway_set_cloexec(i32 %18, i32 1)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sway_set_cloexec(i32 %23, i32 1)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21, %16
  br label %141

27:                                               ; preds = %21
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0), align 4
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32* @wl_client_create(i32 %28, i32 %30)
  %32 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %33 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %32, i32 0, i32 3
  store i32* %31, i32** %33, align 8
  %34 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %35 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %27
  %39 = load i32, i32* @SWAY_ERROR, align 4
  %40 = call i32 @sway_log_errno(i32 %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %141

41:                                               ; preds = %27
  %42 = load i32, i32* @handle_swaybar_client_destroy, align 4
  %43 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %44 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %47 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %50 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %49, i32 0, i32 2
  %51 = call i32 @wl_client_add_destroy_listener(i32* %48, %struct.TYPE_3__* %50)
  %52 = call i64 (...) @fork()
  store i64 %52, i64* %4, align 8
  %53 = load i64, i64* %4, align 8
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %41
  %56 = load i32, i32* @SWAY_ERROR, align 4
  %57 = call i32 (i32, i8*, ...) @sway_log(i32 %56, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %141

58:                                               ; preds = %41
  %59 = load i64, i64* %4, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %119

61:                                               ; preds = %58
  %62 = call i32 @sigemptyset(i32* %5)
  %63 = load i32, i32* @SIG_SETMASK, align 4
  %64 = call i32 @sigprocmask(i32 %63, i32* %5, i32* null)
  %65 = call i64 (...) @fork()
  store i64 %65, i64* %4, align 8
  %66 = load i64, i64* %4, align 8
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load i32, i32* @SWAY_ERROR, align 4
  %70 = call i32 @sway_log_errno(i32 %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %71 = load i32, i32* @EXIT_FAILURE, align 4
  %72 = call i32 @_exit(i32 %71) #3
  unreachable

73:                                               ; preds = %61
  %74 = load i64, i64* %4, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %115

76:                                               ; preds = %73
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @sway_set_cloexec(i32 %78, i32 0)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* @EXIT_FAILURE, align 4
  %83 = call i32 @_exit(i32 %82) #3
  unreachable

84:                                               ; preds = %76
  %85 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @snprintf(i8* %85, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %87)
  %89 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %90 = call i32 @setenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %89, i32 1)
  %91 = getelementptr inbounds [4 x i8*], [4 x i8*]* %7, i64 0, i64 0
  %92 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %93 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %84
  %97 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %98 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  br label %101

100:                                              ; preds = %84
  br label %101

101:                                              ; preds = %100, %96
  %102 = phi i8* [ %99, %96 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), %100 ]
  store i8* %102, i8** %91, align 8
  %103 = getelementptr inbounds i8*, i8** %91, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8** %103, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 1
  %105 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %106 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  store i8* %107, i8** %104, align 8
  %108 = getelementptr inbounds i8*, i8** %104, i64 1
  store i8* null, i8** %108, align 8
  %109 = getelementptr inbounds [4 x i8*], [4 x i8*]* %7, i64 0, i64 0
  %110 = load i8*, i8** %109, align 16
  %111 = getelementptr inbounds [4 x i8*], [4 x i8*]* %7, i64 0, i64 0
  %112 = call i32 @execvp(i8* %110, i8** %111)
  %113 = load i32, i32* @EXIT_FAILURE, align 4
  %114 = call i32 @_exit(i32 %113) #3
  unreachable

115:                                              ; preds = %73
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* @EXIT_SUCCESS, align 4
  %118 = call i32 @_exit(i32 %117) #3
  unreachable

119:                                              ; preds = %58
  br label %120

120:                                              ; preds = %119
  %121 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @close(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load i32, i32* @SWAY_ERROR, align 4
  %127 = call i32 @sway_log_errno(i32 %126, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  br label %141

128:                                              ; preds = %120
  %129 = load i64, i64* %4, align 8
  %130 = call i64 @waitpid(i64 %129, i32* null, i32 0)
  %131 = icmp slt i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load i32, i32* @SWAY_ERROR, align 4
  %134 = call i32 @sway_log_errno(i32 %133, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  br label %141

135:                                              ; preds = %128
  %136 = load i32, i32* @SWAY_DEBUG, align 4
  %137 = load %struct.bar_config*, %struct.bar_config** %2, align 8
  %138 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %137, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 (i32, i8*, ...) @sway_log(i32 %136, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* %139)
  br label %141

141:                                              ; preds = %135, %132, %125, %55, %38, %26, %13
  ret void
}

declare dso_local i64 @socketpair(i32, i32, i32, i32*) #1

declare dso_local i32 @sway_log_errno(i32, i8*) #1

declare dso_local i32 @sway_set_cloexec(i32, i32) #1

declare dso_local i32* @wl_client_create(i32, i32) #1

declare dso_local i32 @wl_client_add_destroy_listener(i32*, %struct.TYPE_3__*) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @sway_log(i32, i8*, ...) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

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

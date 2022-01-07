; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_seaf-daemon.c_start_searpc_server.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_seaf-daemon.c_start_searpc_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@seaf = common dso_local global %struct.TYPE_2__* null, align 8
@SEAFILE_SOCKET_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to create named pipe server.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @start_searpc_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_searpc_server() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = call i32 (...) @register_rpc_service()
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @seaf, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @SEAFILE_SOCKET_NAME, align 4
  %9 = call i8* @g_build_filename(i32 %7, i32 %8, i32* null)
  store i8* %9, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = call i32* @searpc_create_named_pipe_server(i8* %10)
  store i32* %11, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %0
  %15 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @g_free(i8* %16)
  store i32 -1, i32* %1, align 4
  br label %24

18:                                               ; preds = %0
  %19 = load i8*, i8** %2, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @seaf, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @searpc_named_pipe_server_start(i32* %22)
  store i32 %23, i32* %1, align 4
  br label %24

24:                                               ; preds = %18, %14
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local i32 @register_rpc_service(...) #1

declare dso_local i8* @g_build_filename(i32, i32, i32*) #1

declare dso_local i32* @searpc_create_named_pipe_server(i8*) #1

declare dso_local i32 @seaf_warning(i8*, ...) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @searpc_named_pipe_server_start(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

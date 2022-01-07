; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_ipc-server.c_ipc_user_sockaddr.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_ipc-server.c_ipc_user_sockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Can't allocate ipc_sockaddr\00", align 1
@AF_UNIX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"XDG_RUNTIME_DIR\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"%s/sway-ipc.%i.%i.sock\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"Socket path won't fit into ipc_sockaddr->sun_path\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sockaddr_un* @ipc_user_sockaddr() #0 {
  %1 = alloca %struct.sockaddr_un*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = call %struct.sockaddr_un* @malloc(i32 8)
  store %struct.sockaddr_un* %4, %struct.sockaddr_un** %1, align 8
  %5 = load %struct.sockaddr_un*, %struct.sockaddr_un** %1, align 8
  %6 = icmp eq %struct.sockaddr_un* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @sway_abort(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %0
  %10 = load i32, i32* @AF_UNIX, align 4
  %11 = load %struct.sockaddr_un*, %struct.sockaddr_un** %1, align 8
  %12 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  store i32 4, i32* %2, align 4
  %13 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i8* %13, i8** %3, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %17

17:                                               ; preds = %16, %9
  %18 = load i32, i32* %2, align 4
  %19 = load %struct.sockaddr_un*, %struct.sockaddr_un** %1, align 8
  %20 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %2, align 4
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 (...) @getuid()
  %25 = call i32 (...) @getpid()
  %26 = call i32 @snprintf(i32 %21, i32 %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %23, i32 %24, i32 %25)
  %27 = icmp sle i32 %18, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = call i32 @sway_abort(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %17
  %31 = load %struct.sockaddr_un*, %struct.sockaddr_un** %1, align 8
  ret %struct.sockaddr_un* %31
}

declare dso_local %struct.sockaddr_un* @malloc(i32) #1

declare dso_local i32 @sway_abort(i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i32 @getpid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

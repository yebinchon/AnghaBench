; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/extr_server.c_server_stop.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/extr_server.c_server_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.server = type { i64, i64, i64, i64, i64 }

@INVALID_SOCKET = common dso_local global i64 0, align 8
@PROCESS_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Could not terminate server\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Server terminated\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @server_stop(%struct.server* %0) #0 {
  %2 = alloca %struct.server*, align 8
  store %struct.server* %0, %struct.server** %2, align 8
  %3 = load %struct.server*, %struct.server** %2, align 8
  %4 = getelementptr inbounds %struct.server, %struct.server* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @INVALID_SOCKET, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.server*, %struct.server** %2, align 8
  %10 = getelementptr inbounds %struct.server, %struct.server* %9, i32 0, i32 0
  %11 = call i32 @close_socket(i64* %10)
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.server*, %struct.server** %2, align 8
  %14 = getelementptr inbounds %struct.server, %struct.server* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @INVALID_SOCKET, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.server*, %struct.server** %2, align 8
  %20 = getelementptr inbounds %struct.server, %struct.server* %19, i32 0, i32 1
  %21 = call i32 @close_socket(i64* %20)
  br label %22

22:                                               ; preds = %18, %12
  %23 = load %struct.server*, %struct.server** %2, align 8
  %24 = getelementptr inbounds %struct.server, %struct.server* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @INVALID_SOCKET, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.server*, %struct.server** %2, align 8
  %30 = getelementptr inbounds %struct.server, %struct.server* %29, i32 0, i32 2
  %31 = call i32 @close_socket(i64* %30)
  br label %32

32:                                               ; preds = %28, %22
  %33 = load %struct.server*, %struct.server** %2, align 8
  %34 = getelementptr inbounds %struct.server, %struct.server* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PROCESS_NONE, align 8
  %37 = icmp ne i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @SDL_assert(i32 %38)
  %40 = load %struct.server*, %struct.server** %2, align 8
  %41 = getelementptr inbounds %struct.server, %struct.server* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @cmd_terminate(i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %32
  %46 = call i32 @LOGW(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %32
  %48 = load %struct.server*, %struct.server** %2, align 8
  %49 = getelementptr inbounds %struct.server, %struct.server* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @cmd_simple_wait(i64 %50, i32* null)
  %52 = call i32 @LOGD(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.server*, %struct.server** %2, align 8
  %54 = getelementptr inbounds %struct.server, %struct.server* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %47
  %58 = load %struct.server*, %struct.server** %2, align 8
  %59 = call i32 @disable_tunnel(%struct.server* %58)
  br label %60

60:                                               ; preds = %57, %47
  ret void
}

declare dso_local i32 @close_socket(i64*) #1

declare dso_local i32 @SDL_assert(i32) #1

declare dso_local i32 @cmd_terminate(i64) #1

declare dso_local i32 @LOGW(i8*) #1

declare dso_local i32 @cmd_simple_wait(i64, i32*) #1

declare dso_local i32 @LOGD(i8*) #1

declare dso_local i32 @disable_tunnel(%struct.server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

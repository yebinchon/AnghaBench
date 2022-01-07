; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_ipc-server.c_ipc_client_handle_writable.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_ipc-server.c_ipc_client_handle_writable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipc_client = type { i64, i32*, i64, i32 }

@WL_EVENT_ERROR = common dso_local global i32 0, align 4
@SWAY_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"IPC Client socket error, removing client\00", align 1
@WL_EVENT_HANGUP = common dso_local global i32 0, align 4
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Client %d hung up\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Client %d writable\00", align 1
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@SWAY_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Unable to send data from queue to IPC client\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_client_handle_writable(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ipc_client*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.ipc_client*
  store %struct.ipc_client* %11, %struct.ipc_client** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @WL_EVENT_ERROR, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i32, i32* @SWAY_ERROR, align 4
  %18 = call i32 (i32, i8*, ...) @sway_log(i32 %17, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.ipc_client*, %struct.ipc_client** %8, align 8
  %20 = call i32 @ipc_client_disconnect(%struct.ipc_client* %19)
  store i32 0, i32* %4, align 4
  br label %112

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @WL_EVENT_HANGUP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load i32, i32* @SWAY_DEBUG, align 4
  %28 = load %struct.ipc_client*, %struct.ipc_client** %8, align 8
  %29 = getelementptr inbounds %struct.ipc_client, %struct.ipc_client* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i32, i8*, ...) @sway_log(i32 %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load %struct.ipc_client*, %struct.ipc_client** %8, align 8
  %33 = call i32 @ipc_client_disconnect(%struct.ipc_client* %32)
  store i32 0, i32* %4, align 4
  br label %112

34:                                               ; preds = %21
  %35 = load %struct.ipc_client*, %struct.ipc_client** %8, align 8
  %36 = getelementptr inbounds %struct.ipc_client, %struct.ipc_client* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sle i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %112

40:                                               ; preds = %34
  %41 = load i32, i32* @SWAY_DEBUG, align 4
  %42 = load %struct.ipc_client*, %struct.ipc_client** %8, align 8
  %43 = getelementptr inbounds %struct.ipc_client, %struct.ipc_client* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (i32, i8*, ...) @sway_log(i32 %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load %struct.ipc_client*, %struct.ipc_client** %8, align 8
  %47 = getelementptr inbounds %struct.ipc_client, %struct.ipc_client* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ipc_client*, %struct.ipc_client** %8, align 8
  %50 = getelementptr inbounds %struct.ipc_client, %struct.ipc_client* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ipc_client*, %struct.ipc_client** %8, align 8
  %53 = getelementptr inbounds %struct.ipc_client, %struct.ipc_client* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @write(i32 %48, i64 %51, i64 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %63

58:                                               ; preds = %40
  %59 = load i64, i64* @errno, align 8
  %60 = load i64, i64* @EAGAIN, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %112

63:                                               ; preds = %58, %40
  %64 = load i32, i32* %9, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i32, i32* @SWAY_INFO, align 4
  %68 = call i32 @sway_log_errno(i32 %67, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %69 = load %struct.ipc_client*, %struct.ipc_client** %8, align 8
  %70 = call i32 @ipc_client_disconnect(%struct.ipc_client* %69)
  store i32 0, i32* %4, align 4
  br label %112

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.ipc_client*, %struct.ipc_client** %8, align 8
  %74 = getelementptr inbounds %struct.ipc_client, %struct.ipc_client* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.ipc_client*, %struct.ipc_client** %8, align 8
  %77 = getelementptr inbounds %struct.ipc_client, %struct.ipc_client* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %78, %80
  %82 = load %struct.ipc_client*, %struct.ipc_client** %8, align 8
  %83 = getelementptr inbounds %struct.ipc_client, %struct.ipc_client* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = sub nsw i64 %84, %86
  %88 = call i32 @memmove(i64 %75, i64 %81, i64 %87)
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = load %struct.ipc_client*, %struct.ipc_client** %8, align 8
  %92 = getelementptr inbounds %struct.ipc_client, %struct.ipc_client* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = sub nsw i64 %93, %90
  store i64 %94, i64* %92, align 8
  %95 = load %struct.ipc_client*, %struct.ipc_client** %8, align 8
  %96 = getelementptr inbounds %struct.ipc_client, %struct.ipc_client* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %72
  %100 = load %struct.ipc_client*, %struct.ipc_client** %8, align 8
  %101 = getelementptr inbounds %struct.ipc_client, %struct.ipc_client* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load %struct.ipc_client*, %struct.ipc_client** %8, align 8
  %106 = getelementptr inbounds %struct.ipc_client, %struct.ipc_client* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @wl_event_source_remove(i32* %107)
  %109 = load %struct.ipc_client*, %struct.ipc_client** %8, align 8
  %110 = getelementptr inbounds %struct.ipc_client, %struct.ipc_client* %109, i32 0, i32 1
  store i32* null, i32** %110, align 8
  br label %111

111:                                              ; preds = %104, %99, %72
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %111, %66, %62, %39, %26, %16
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @sway_log(i32, i8*, ...) #1

declare dso_local i32 @ipc_client_disconnect(%struct.ipc_client*) #1

declare dso_local i32 @write(i32, i64, i64) #1

declare dso_local i32 @sway_log_errno(i32, i8*) #1

declare dso_local i32 @memmove(i64, i64, i64) #1

declare dso_local i32 @wl_event_source_remove(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

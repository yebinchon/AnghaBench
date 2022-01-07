; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_ipc-server.c_ipc_client_disconnect.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_ipc-server.c_ipc_client_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.ipc_client** }
%struct.ipc_client = type { i32, %struct.ipc_client*, i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"client != NULL\00", align 1
@SHUT_RDWR = common dso_local global i32 0, align 4
@SWAY_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"IPC Client %d disconnected\00", align 1
@ipc_client_list = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_client_disconnect(%struct.ipc_client* %0) #0 {
  %2 = alloca %struct.ipc_client*, align 8
  %3 = alloca i32, align 4
  store %struct.ipc_client* %0, %struct.ipc_client** %2, align 8
  %4 = load %struct.ipc_client*, %struct.ipc_client** %2, align 8
  %5 = icmp ne %struct.ipc_client* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @sway_assert(i32 %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %70

10:                                               ; preds = %1
  %11 = load %struct.ipc_client*, %struct.ipc_client** %2, align 8
  %12 = getelementptr inbounds %struct.ipc_client, %struct.ipc_client* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @SHUT_RDWR, align 4
  %15 = call i32 @shutdown(i32 %13, i32 %14)
  %16 = load i32, i32* @SWAY_INFO, align 4
  %17 = load %struct.ipc_client*, %struct.ipc_client** %2, align 8
  %18 = getelementptr inbounds %struct.ipc_client, %struct.ipc_client* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @sway_log(i32 %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load %struct.ipc_client*, %struct.ipc_client** %2, align 8
  %22 = getelementptr inbounds %struct.ipc_client, %struct.ipc_client* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @wl_event_source_remove(i64 %23)
  %25 = load %struct.ipc_client*, %struct.ipc_client** %2, align 8
  %26 = getelementptr inbounds %struct.ipc_client, %struct.ipc_client* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %10
  %30 = load %struct.ipc_client*, %struct.ipc_client** %2, align 8
  %31 = getelementptr inbounds %struct.ipc_client, %struct.ipc_client* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @wl_event_source_remove(i64 %32)
  br label %34

34:                                               ; preds = %29, %10
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %53, %34
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ipc_client_list, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %35
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ipc_client_list, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load %struct.ipc_client**, %struct.ipc_client*** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.ipc_client*, %struct.ipc_client** %44, i64 %46
  %48 = load %struct.ipc_client*, %struct.ipc_client** %47, align 8
  %49 = load %struct.ipc_client*, %struct.ipc_client** %2, align 8
  %50 = icmp ne %struct.ipc_client* %48, %49
  br label %51

51:                                               ; preds = %41, %35
  %52 = phi i1 [ false, %35 ], [ %50, %41 ]
  br i1 %52, label %53, label %56

53:                                               ; preds = %51
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %35

56:                                               ; preds = %51
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ipc_client_list, align 8
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @list_del(%struct.TYPE_3__* %57, i32 %58)
  %60 = load %struct.ipc_client*, %struct.ipc_client** %2, align 8
  %61 = getelementptr inbounds %struct.ipc_client, %struct.ipc_client* %60, i32 0, i32 1
  %62 = load %struct.ipc_client*, %struct.ipc_client** %61, align 8
  %63 = call i32 @free(%struct.ipc_client* %62)
  %64 = load %struct.ipc_client*, %struct.ipc_client** %2, align 8
  %65 = getelementptr inbounds %struct.ipc_client, %struct.ipc_client* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @close(i32 %66)
  %68 = load %struct.ipc_client*, %struct.ipc_client** %2, align 8
  %69 = call i32 @free(%struct.ipc_client* %68)
  br label %70

70:                                               ; preds = %56, %9
  ret void
}

declare dso_local i32 @sway_assert(i32, i8*) #1

declare dso_local i32 @shutdown(i32, i32) #1

declare dso_local i32 @sway_log(i32, i8*, i32) #1

declare dso_local i32 @wl_event_source_remove(i64) #1

declare dso_local i32 @list_del(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @free(%struct.ipc_client*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

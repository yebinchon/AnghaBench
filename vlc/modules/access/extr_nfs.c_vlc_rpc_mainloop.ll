; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_nfs.c_vlc_rpc_mainloop.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_nfs.c_vlc_rpc_mainloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.rpc_context = type { i32 }
%struct.pollfd = type { i64, i32, i32 }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"vlc_poll_i11e interrupted\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"vlc_poll_i11e failed\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"nfs_service failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.rpc_context*, i32 (%struct.TYPE_8__*)*)* @vlc_rpc_mainloop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_rpc_mainloop(%struct.TYPE_8__* %0, %struct.rpc_context* %1, i32 (%struct.TYPE_8__*)* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.rpc_context*, align 8
  %6 = alloca i32 (%struct.TYPE_8__*)*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca [1 x %struct.pollfd], align 16
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.rpc_context* %1, %struct.rpc_context** %5, align 8
  store i32 (%struct.TYPE_8__*)* %2, i32 (%struct.TYPE_8__*)** %6, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %7, align 8
  br label %13

13:                                               ; preds = %72, %3
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %6, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = call i32 %19(%struct.TYPE_8__* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %18, %13
  %25 = phi i1 [ false, %13 ], [ %23, %18 ]
  br i1 %25, label %26, label %73

26:                                               ; preds = %24
  %27 = load %struct.rpc_context*, %struct.rpc_context** %5, align 8
  %28 = call i32 @rpc_get_fd(%struct.rpc_context* %27)
  %29 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %8, i64 0, i64 0
  %30 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.rpc_context*, %struct.rpc_context** %5, align 8
  %32 = call i32 @rpc_which_events(%struct.rpc_context* %31)
  %33 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %8, i64 0, i64 0
  %34 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %8, i64 0, i64 0
  %36 = call i32 @vlc_poll_i11e(%struct.pollfd* %35, i32 1, i32 -1)
  store i32 %36, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %26
  %39 = load i64, i64* @errno, align 8
  %40 = load i64, i64* @EINTR, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %44 = call i32 @msg_Warn(%struct.TYPE_8__* %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %48

45:                                               ; preds = %38
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = call i32 @msg_Err(%struct.TYPE_8__* %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %42
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 4
  br label %72

51:                                               ; preds = %26
  %52 = load i32, i32* %9, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %51
  %55 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %8, i64 0, i64 0
  %56 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 16
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %54
  %60 = load %struct.rpc_context*, %struct.rpc_context** %5, align 8
  %61 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %8, i64 0, i64 0
  %62 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 16
  %64 = call i64 @rpc_service(%struct.rpc_context* %60, i64 %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %68 = call i32 @msg_Err(%struct.TYPE_8__* %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  store i32 1, i32* %70, align 4
  br label %71

71:                                               ; preds = %66, %59, %54, %51
  br label %72

72:                                               ; preds = %71, %48
  br label %13

73:                                               ; preds = %24
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 -1, i32 0
  ret i32 %79
}

declare dso_local i32 @rpc_get_fd(%struct.rpc_context*) #1

declare dso_local i32 @rpc_which_events(%struct.rpc_context*) #1

declare dso_local i32 @vlc_poll_i11e(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_8__*, i8*) #1

declare dso_local i64 @rpc_service(%struct.rpc_context*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

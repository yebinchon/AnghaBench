; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_server.c_skynet_context_message_dispatch.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_server.c_skynet_context_message_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skynet_monitor = type { i32 }
%struct.message_queue = type { i32 }
%struct.skynet_context = type { %struct.message_queue*, i32* }
%struct.drop_t = type { i32 }
%struct.skynet_message = type { i32, i32 }

@drop_message = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"May overload, message queue length = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.message_queue* @skynet_context_message_dispatch(%struct.skynet_monitor* %0, %struct.message_queue* %1, i32 %2) #0 {
  %4 = alloca %struct.message_queue*, align 8
  %5 = alloca %struct.skynet_monitor*, align 8
  %6 = alloca %struct.message_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.skynet_context*, align 8
  %10 = alloca %struct.drop_t, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.skynet_message, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.message_queue*, align 8
  store %struct.skynet_monitor* %0, %struct.skynet_monitor** %5, align 8
  store %struct.message_queue* %1, %struct.message_queue** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.message_queue*, %struct.message_queue** %6, align 8
  %17 = icmp eq %struct.message_queue* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = call %struct.message_queue* (...) @skynet_globalmq_pop()
  store %struct.message_queue* %19, %struct.message_queue** %6, align 8
  %20 = load %struct.message_queue*, %struct.message_queue** %6, align 8
  %21 = icmp eq %struct.message_queue* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store %struct.message_queue* null, %struct.message_queue** %4, align 8
  br label %115

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23, %3
  %25 = load %struct.message_queue*, %struct.message_queue** %6, align 8
  %26 = call i32 @skynet_mq_handle(%struct.message_queue* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call %struct.skynet_context* @skynet_handle_grab(i32 %27)
  store %struct.skynet_context* %28, %struct.skynet_context** %9, align 8
  %29 = load %struct.skynet_context*, %struct.skynet_context** %9, align 8
  %30 = icmp eq %struct.skynet_context* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.drop_t, %struct.drop_t* %10, i32 0, i32 0
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %32, align 4
  %34 = load %struct.message_queue*, %struct.message_queue** %6, align 8
  %35 = load i32, i32* @drop_message, align 4
  %36 = call i32 @skynet_mq_release(%struct.message_queue* %34, i32 %35, %struct.drop_t* %10)
  %37 = call %struct.message_queue* (...) @skynet_globalmq_pop()
  store %struct.message_queue* %37, %struct.message_queue** %4, align 8
  br label %115

38:                                               ; preds = %24
  store i32 1, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %93, %38
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %96

43:                                               ; preds = %39
  %44 = load %struct.message_queue*, %struct.message_queue** %6, align 8
  %45 = call i64 @skynet_mq_pop(%struct.message_queue* %44, %struct.skynet_message* %13)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load %struct.skynet_context*, %struct.skynet_context** %9, align 8
  %49 = call i32 @skynet_context_release(%struct.skynet_context* %48)
  %50 = call %struct.message_queue* (...) @skynet_globalmq_pop()
  store %struct.message_queue* %50, %struct.message_queue** %4, align 8
  br label %115

51:                                               ; preds = %43
  %52 = load i32, i32* %11, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load i32, i32* %7, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load %struct.message_queue*, %struct.message_queue** %6, align 8
  %59 = call i32 @skynet_mq_length(%struct.message_queue* %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %12, align 4
  %62 = ashr i32 %61, %60
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %57, %54, %51
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.message_queue*, %struct.message_queue** %6, align 8
  %66 = call i32 @skynet_mq_overload(%struct.message_queue* %65)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.skynet_context*, %struct.skynet_context** %9, align 8
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @skynet_error(%struct.skynet_context* %70, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %69, %64
  %74 = load %struct.skynet_monitor*, %struct.skynet_monitor** %5, align 8
  %75 = getelementptr inbounds %struct.skynet_message, %struct.skynet_message* %13, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @skynet_monitor_trigger(%struct.skynet_monitor* %74, i32 %76, i32 %77)
  %79 = load %struct.skynet_context*, %struct.skynet_context** %9, align 8
  %80 = getelementptr inbounds %struct.skynet_context, %struct.skynet_context* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %73
  %84 = getelementptr inbounds %struct.skynet_message, %struct.skynet_message* %13, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @skynet_free(i32 %85)
  br label %90

87:                                               ; preds = %73
  %88 = load %struct.skynet_context*, %struct.skynet_context** %9, align 8
  %89 = call i32 @dispatch_message(%struct.skynet_context* %88, %struct.skynet_message* %13)
  br label %90

90:                                               ; preds = %87, %83
  %91 = load %struct.skynet_monitor*, %struct.skynet_monitor** %5, align 8
  %92 = call i32 @skynet_monitor_trigger(%struct.skynet_monitor* %91, i32 0, i32 0)
  br label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %11, align 4
  br label %39

96:                                               ; preds = %39
  %97 = load %struct.message_queue*, %struct.message_queue** %6, align 8
  %98 = load %struct.skynet_context*, %struct.skynet_context** %9, align 8
  %99 = getelementptr inbounds %struct.skynet_context, %struct.skynet_context* %98, i32 0, i32 0
  %100 = load %struct.message_queue*, %struct.message_queue** %99, align 8
  %101 = icmp eq %struct.message_queue* %97, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  %104 = call %struct.message_queue* (...) @skynet_globalmq_pop()
  store %struct.message_queue* %104, %struct.message_queue** %15, align 8
  %105 = load %struct.message_queue*, %struct.message_queue** %15, align 8
  %106 = icmp ne %struct.message_queue* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %96
  %108 = load %struct.message_queue*, %struct.message_queue** %6, align 8
  %109 = call i32 @skynet_globalmq_push(%struct.message_queue* %108)
  %110 = load %struct.message_queue*, %struct.message_queue** %15, align 8
  store %struct.message_queue* %110, %struct.message_queue** %6, align 8
  br label %111

111:                                              ; preds = %107, %96
  %112 = load %struct.skynet_context*, %struct.skynet_context** %9, align 8
  %113 = call i32 @skynet_context_release(%struct.skynet_context* %112)
  %114 = load %struct.message_queue*, %struct.message_queue** %6, align 8
  store %struct.message_queue* %114, %struct.message_queue** %4, align 8
  br label %115

115:                                              ; preds = %111, %47, %31, %22
  %116 = load %struct.message_queue*, %struct.message_queue** %4, align 8
  ret %struct.message_queue* %116
}

declare dso_local %struct.message_queue* @skynet_globalmq_pop(...) #1

declare dso_local i32 @skynet_mq_handle(%struct.message_queue*) #1

declare dso_local %struct.skynet_context* @skynet_handle_grab(i32) #1

declare dso_local i32 @skynet_mq_release(%struct.message_queue*, i32, %struct.drop_t*) #1

declare dso_local i64 @skynet_mq_pop(%struct.message_queue*, %struct.skynet_message*) #1

declare dso_local i32 @skynet_context_release(%struct.skynet_context*) #1

declare dso_local i32 @skynet_mq_length(%struct.message_queue*) #1

declare dso_local i32 @skynet_mq_overload(%struct.message_queue*) #1

declare dso_local i32 @skynet_error(%struct.skynet_context*, i8*, i32) #1

declare dso_local i32 @skynet_monitor_trigger(%struct.skynet_monitor*, i32, i32) #1

declare dso_local i32 @skynet_free(i32) #1

declare dso_local i32 @dispatch_message(%struct.skynet_context*, %struct.skynet_message*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @skynet_globalmq_push(%struct.message_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

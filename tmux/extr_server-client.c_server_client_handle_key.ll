; ModuleID = '/home/carl/AnghaBench/tmux/extr_server-client.c_server_client_handle_key.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_server-client.c_server_client_handle_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32, {}*, i32*, %struct.session* }
%struct.session = type { i32 }
%struct.key_event = type { i32 }
%struct.cmdq_item = type { i32 }

@CLIENT_DEAD = common dso_local global i32 0, align 4
@CLIENT_SUSPENDED = common dso_local global i32 0, align 4
@CLIENT_READONLY = common dso_local global i32 0, align 4
@server_client_key_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @server_client_handle_key(%struct.client* %0, %struct.key_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.client*, align 8
  %5 = alloca %struct.key_event*, align 8
  %6 = alloca %struct.session*, align 8
  %7 = alloca %struct.cmdq_item*, align 8
  store %struct.client* %0, %struct.client** %4, align 8
  store %struct.key_event* %1, %struct.key_event** %5, align 8
  %8 = load %struct.client*, %struct.client** %4, align 8
  %9 = getelementptr inbounds %struct.client, %struct.client* %8, i32 0, i32 3
  %10 = load %struct.session*, %struct.session** %9, align 8
  store %struct.session* %10, %struct.session** %6, align 8
  %11 = load %struct.session*, %struct.session** %6, align 8
  %12 = icmp eq %struct.session* %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %2
  %14 = load %struct.client*, %struct.client** %4, align 8
  %15 = getelementptr inbounds %struct.client, %struct.client* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @CLIENT_DEAD, align 4
  %18 = load i32, i32* @CLIENT_SUSPENDED, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13, %2
  store i32 0, i32* %3, align 4
  br label %76

23:                                               ; preds = %13
  %24 = load %struct.client*, %struct.client** %4, align 8
  %25 = getelementptr inbounds %struct.client, %struct.client* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = xor i32 %26, -1
  %28 = load i32, i32* @CLIENT_READONLY, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %69

31:                                               ; preds = %23
  %32 = load %struct.client*, %struct.client** %4, align 8
  %33 = call i32 @status_message_clear(%struct.client* %32)
  %34 = load %struct.client*, %struct.client** %4, align 8
  %35 = getelementptr inbounds %struct.client, %struct.client* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %31
  %39 = load %struct.client*, %struct.client** %4, align 8
  %40 = load %struct.key_event*, %struct.key_event** %5, align 8
  %41 = getelementptr inbounds %struct.key_event, %struct.key_event* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @status_prompt_key(%struct.client* %39, i32 %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %76

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %31
  %48 = load %struct.client*, %struct.client** %4, align 8
  %49 = getelementptr inbounds %struct.client, %struct.client* %48, i32 0, i32 1
  %50 = bitcast {}** %49 to i32 (%struct.client*, %struct.key_event*)**
  %51 = load i32 (%struct.client*, %struct.key_event*)*, i32 (%struct.client*, %struct.key_event*)** %50, align 8
  %52 = icmp ne i32 (%struct.client*, %struct.key_event*)* %51, null
  br i1 %52, label %53, label %66

53:                                               ; preds = %47
  %54 = load %struct.client*, %struct.client** %4, align 8
  %55 = getelementptr inbounds %struct.client, %struct.client* %54, i32 0, i32 1
  %56 = bitcast {}** %55 to i32 (%struct.client*, %struct.key_event*)**
  %57 = load i32 (%struct.client*, %struct.key_event*)*, i32 (%struct.client*, %struct.key_event*)** %56, align 8
  %58 = load %struct.client*, %struct.client** %4, align 8
  %59 = load %struct.key_event*, %struct.key_event** %5, align 8
  %60 = call i32 %57(%struct.client* %58, %struct.key_event* %59)
  switch i32 %60, label %65 [
    i32 0, label %61
    i32 1, label %62
  ]

61:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %76

62:                                               ; preds = %53
  %63 = load %struct.client*, %struct.client** %4, align 8
  %64 = call i32 @server_client_clear_overlay(%struct.client* %63)
  store i32 0, i32* %3, align 4
  br label %76

65:                                               ; preds = %53
  br label %66

66:                                               ; preds = %65, %47
  %67 = load %struct.client*, %struct.client** %4, align 8
  %68 = call i32 @server_client_clear_overlay(%struct.client* %67)
  br label %69

69:                                               ; preds = %66, %23
  %70 = load i32, i32* @server_client_key_callback, align 4
  %71 = load %struct.key_event*, %struct.key_event** %5, align 8
  %72 = call %struct.cmdq_item* @cmdq_get_callback(i32 %70, %struct.key_event* %71)
  store %struct.cmdq_item* %72, %struct.cmdq_item** %7, align 8
  %73 = load %struct.client*, %struct.client** %4, align 8
  %74 = load %struct.cmdq_item*, %struct.cmdq_item** %7, align 8
  %75 = call i32 @cmdq_append(%struct.client* %73, %struct.cmdq_item* %74)
  store i32 1, i32* %3, align 4
  br label %76

76:                                               ; preds = %69, %62, %61, %45, %22
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @status_message_clear(%struct.client*) #1

declare dso_local i64 @status_prompt_key(%struct.client*, i32) #1

declare dso_local i32 @server_client_clear_overlay(%struct.client*) #1

declare dso_local %struct.cmdq_item* @cmdq_get_callback(i32, %struct.key_event*) #1

declare dso_local i32 @cmdq_append(%struct.client*, %struct.cmdq_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

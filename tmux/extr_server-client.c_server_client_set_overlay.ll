; ModuleID = '/home/carl/AnghaBench/tmux/extr_server-client.c_server_client_set_overlay.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_server-client.c_server_client_set_overlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { %struct.TYPE_2__, i8*, i32, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.timeval = type { i32, i32 }

@server_client_overlay_timer = common dso_local global i32 0, align 4
@TTY_FREEZE = common dso_local global i32 0, align 4
@TTY_NOCURSOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @server_client_set_overlay(%struct.client* %0, i32 %1, i32* %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.timeval, align 4
  store %struct.client* %0, %struct.client** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %14 = load %struct.client*, %struct.client** %7, align 8
  %15 = getelementptr inbounds %struct.client, %struct.client* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %6
  %19 = load %struct.client*, %struct.client** %7, align 8
  %20 = call i32 @server_client_clear_overlay(%struct.client* %19)
  br label %21

21:                                               ; preds = %18, %6
  %22 = load i32, i32* %8, align 4
  %23 = sdiv i32 %22, 1000
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %8, align 4
  %26 = srem i32 %25, 1000
  %27 = sext i32 %26 to i64
  %28 = mul nsw i64 %27, 1000
  %29 = trunc i64 %28 to i32
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load %struct.client*, %struct.client** %7, align 8
  %32 = getelementptr inbounds %struct.client, %struct.client* %31, i32 0, i32 5
  %33 = call i64 @event_initialized(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %21
  %36 = load %struct.client*, %struct.client** %7, align 8
  %37 = getelementptr inbounds %struct.client, %struct.client* %36, i32 0, i32 5
  %38 = call i32 @evtimer_del(i32* %37)
  br label %39

39:                                               ; preds = %35, %21
  %40 = load %struct.client*, %struct.client** %7, align 8
  %41 = getelementptr inbounds %struct.client, %struct.client* %40, i32 0, i32 5
  %42 = load i32, i32* @server_client_overlay_timer, align 4
  %43 = load %struct.client*, %struct.client** %7, align 8
  %44 = call i32 @evtimer_set(i32* %41, i32 %42, %struct.client* %43)
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load %struct.client*, %struct.client** %7, align 8
  %49 = getelementptr inbounds %struct.client, %struct.client* %48, i32 0, i32 5
  %50 = call i32 @evtimer_add(i32* %49, %struct.timeval* %13)
  br label %51

51:                                               ; preds = %47, %39
  %52 = load i32*, i32** %9, align 8
  %53 = load %struct.client*, %struct.client** %7, align 8
  %54 = getelementptr inbounds %struct.client, %struct.client* %53, i32 0, i32 4
  store i32* %52, i32** %54, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.client*, %struct.client** %7, align 8
  %57 = getelementptr inbounds %struct.client, %struct.client* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.client*, %struct.client** %7, align 8
  %60 = getelementptr inbounds %struct.client, %struct.client* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = load %struct.client*, %struct.client** %7, align 8
  %63 = getelementptr inbounds %struct.client, %struct.client* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* @TTY_FREEZE, align 4
  %65 = load i32, i32* @TTY_NOCURSOR, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.client*, %struct.client** %7, align 8
  %68 = getelementptr inbounds %struct.client, %struct.client* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %66
  store i32 %71, i32* %69, align 8
  %72 = load %struct.client*, %struct.client** %7, align 8
  %73 = call i32 @server_redraw_client(%struct.client* %72)
  ret void
}

declare dso_local i32 @server_client_clear_overlay(%struct.client*) #1

declare dso_local i64 @event_initialized(i32*) #1

declare dso_local i32 @evtimer_del(i32*) #1

declare dso_local i32 @evtimer_set(i32*, i32, %struct.client*) #1

declare dso_local i32 @evtimer_add(i32*, %struct.timeval*) #1

declare dso_local i32 @server_redraw_client(%struct.client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

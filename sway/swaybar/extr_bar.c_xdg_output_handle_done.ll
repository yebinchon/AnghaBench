; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_bar.c_xdg_output_handle_done.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_bar.c_xdg_output_handle_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zxdg_output_v1 = type { i32 }
%struct.swaybar_output = type { i32, i32, i32*, %struct.swaybar* }
%struct.swaybar = type { %struct.TYPE_2__*, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.zxdg_output_v1*)* @xdg_output_handle_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xdg_output_handle_done(i8* %0, %struct.zxdg_output_v1* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.zxdg_output_v1*, align 8
  %5 = alloca %struct.swaybar_output*, align 8
  %6 = alloca %struct.swaybar*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.zxdg_output_v1* %1, %struct.zxdg_output_v1** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.swaybar_output*
  store %struct.swaybar_output* %8, %struct.swaybar_output** %5, align 8
  %9 = load %struct.swaybar_output*, %struct.swaybar_output** %5, align 8
  %10 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %9, i32 0, i32 3
  %11 = load %struct.swaybar*, %struct.swaybar** %10, align 8
  store %struct.swaybar* %11, %struct.swaybar** %6, align 8
  %12 = load %struct.swaybar_output*, %struct.swaybar_output** %5, align 8
  %13 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %12, i32 0, i32 1
  %14 = call i32 @wl_list_empty(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %71

17:                                               ; preds = %2
  %18 = load %struct.swaybar_output*, %struct.swaybar_output** %5, align 8
  %19 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.swaybar_output*, %struct.swaybar_output** %5, align 8
  %25 = call i32 @bar_uses_output(%struct.swaybar_output* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %17
  %28 = load %struct.swaybar_output*, %struct.swaybar_output** %5, align 8
  %29 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %28, i32 0, i32 1
  %30 = call i32 @wl_list_remove(i32* %29)
  %31 = load %struct.swaybar*, %struct.swaybar** %6, align 8
  %32 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %31, i32 0, i32 4
  %33 = load %struct.swaybar_output*, %struct.swaybar_output** %5, align 8
  %34 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %33, i32 0, i32 1
  %35 = call i32 @wl_list_insert(i32* %32, i32* %34)
  br label %71

36:                                               ; preds = %17
  %37 = load %struct.swaybar_output*, %struct.swaybar_output** %5, align 8
  %38 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %37, i32 0, i32 1
  %39 = call i32 @wl_list_remove(i32* %38)
  %40 = load %struct.swaybar*, %struct.swaybar** %6, align 8
  %41 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %40, i32 0, i32 3
  %42 = load %struct.swaybar_output*, %struct.swaybar_output** %5, align 8
  %43 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %42, i32 0, i32 1
  %44 = call i32 @wl_list_insert(i32* %41, i32* %43)
  %45 = load %struct.swaybar*, %struct.swaybar** %6, align 8
  %46 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @wl_compositor_create_surface(i32 %47)
  %49 = load %struct.swaybar_output*, %struct.swaybar_output** %5, align 8
  %50 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.swaybar_output*, %struct.swaybar_output** %5, align 8
  %52 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @assert(i32 %53)
  %55 = load %struct.swaybar*, %struct.swaybar** %6, align 8
  %56 = call i32 @determine_bar_visibility(%struct.swaybar* %55, i32 0)
  %57 = load %struct.swaybar*, %struct.swaybar** %6, align 8
  %58 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %36
  %62 = load %struct.swaybar*, %struct.swaybar** %6, align 8
  %63 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load %struct.swaybar*, %struct.swaybar** %6, align 8
  %70 = call i32 @ipc_get_workspaces(%struct.swaybar* %69)
  br label %71

71:                                               ; preds = %16, %27, %68, %61, %36
  ret void
}

declare dso_local i32 @wl_list_empty(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @bar_uses_output(%struct.swaybar_output*) #1

declare dso_local i32 @wl_list_remove(i32*) #1

declare dso_local i32 @wl_list_insert(i32*, i32*) #1

declare dso_local i32 @wl_compositor_create_surface(i32) #1

declare dso_local i32 @determine_bar_visibility(%struct.swaybar*, i32) #1

declare dso_local i32 @ipc_get_workspaces(%struct.swaybar*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

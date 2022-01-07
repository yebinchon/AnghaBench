; ModuleID = '/home/carl/AnghaBench/sway/swaynag/extr_swaynag.c_layer_surface_configure.c'
source_filename = "/home/carl/AnghaBench/sway/swaynag/extr_swaynag.c_layer_surface_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zwlr_layer_surface_v1 = type { i32 }
%struct.swaynag = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.zwlr_layer_surface_v1*, i8*, i8*, i8*)* @layer_surface_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @layer_surface_configure(i8* %0, %struct.zwlr_layer_surface_v1* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.zwlr_layer_surface_v1*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.swaynag*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.zwlr_layer_surface_v1* %1, %struct.zwlr_layer_surface_v1** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.swaynag*
  store %struct.swaynag* %13, %struct.swaynag** %11, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = load %struct.swaynag*, %struct.swaynag** %11, align 8
  %16 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = load %struct.swaynag*, %struct.swaynag** %11, align 8
  %19 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load %struct.zwlr_layer_surface_v1*, %struct.zwlr_layer_surface_v1** %7, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @zwlr_layer_surface_v1_ack_configure(%struct.zwlr_layer_surface_v1* %20, i8* %21)
  %23 = load %struct.swaynag*, %struct.swaynag** %11, align 8
  %24 = call i32 @render_frame(%struct.swaynag* %23)
  ret void
}

declare dso_local i32 @zwlr_layer_surface_v1_ack_configure(%struct.zwlr_layer_surface_v1*, i8*) #1

declare dso_local i32 @render_frame(%struct.swaynag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

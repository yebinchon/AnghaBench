; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_module.c_skynet_module_instance_init.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_module.c_skynet_module_instance_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skynet_module = type { i32 (i8*, %struct.skynet_context*, i8*)* }
%struct.skynet_context = type opaque
%struct.skynet_context.0 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skynet_module_instance_init(%struct.skynet_module* %0, i8* %1, %struct.skynet_context.0* %2, i8* %3) #0 {
  %5 = alloca %struct.skynet_module*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.skynet_context.0*, align 8
  %8 = alloca i8*, align 8
  store %struct.skynet_module* %0, %struct.skynet_module** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.skynet_context.0* %2, %struct.skynet_context.0** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.skynet_module*, %struct.skynet_module** %5, align 8
  %10 = getelementptr inbounds %struct.skynet_module, %struct.skynet_module* %9, i32 0, i32 0
  %11 = load i32 (i8*, %struct.skynet_context*, i8*)*, i32 (i8*, %struct.skynet_context*, i8*)** %10, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.skynet_context.0*, %struct.skynet_context.0** %7, align 8
  %14 = bitcast %struct.skynet_context.0* %13 to %struct.skynet_context*
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 %11(i8* %12, %struct.skynet_context* %14, i8* %15)
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

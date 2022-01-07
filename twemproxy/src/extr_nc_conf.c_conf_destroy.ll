; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_conf.c_conf_destroy.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_conf.c_conf_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conf = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @conf_destroy(%struct.conf* %0) #0 {
  %2 = alloca %struct.conf*, align 8
  store %struct.conf* %0, %struct.conf** %2, align 8
  br label %3

3:                                                ; preds = %8, %1
  %4 = load %struct.conf*, %struct.conf** %2, align 8
  %5 = getelementptr inbounds %struct.conf, %struct.conf* %4, i32 0, i32 1
  %6 = call i64 @array_n(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = load %struct.conf*, %struct.conf** %2, align 8
  %10 = call i32 @conf_pop_scalar(%struct.conf* %9)
  br label %3

11:                                               ; preds = %3
  %12 = load %struct.conf*, %struct.conf** %2, align 8
  %13 = getelementptr inbounds %struct.conf, %struct.conf* %12, i32 0, i32 1
  %14 = call i32 @array_deinit(i32* %13)
  br label %15

15:                                               ; preds = %20, %11
  %16 = load %struct.conf*, %struct.conf** %2, align 8
  %17 = getelementptr inbounds %struct.conf, %struct.conf* %16, i32 0, i32 0
  %18 = call i64 @array_n(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.conf*, %struct.conf** %2, align 8
  %22 = getelementptr inbounds %struct.conf, %struct.conf* %21, i32 0, i32 0
  %23 = call i32 @array_pop(i32* %22)
  %24 = call i32 @conf_pool_deinit(i32 %23)
  br label %15

25:                                               ; preds = %15
  %26 = load %struct.conf*, %struct.conf** %2, align 8
  %27 = getelementptr inbounds %struct.conf, %struct.conf* %26, i32 0, i32 0
  %28 = call i32 @array_deinit(i32* %27)
  %29 = load %struct.conf*, %struct.conf** %2, align 8
  %30 = call i32 @nc_free(%struct.conf* %29)
  ret void
}

declare dso_local i64 @array_n(i32*) #1

declare dso_local i32 @conf_pop_scalar(%struct.conf*) #1

declare dso_local i32 @array_deinit(i32*) #1

declare dso_local i32 @conf_pool_deinit(i32) #1

declare dso_local i32 @array_pop(i32*) #1

declare dso_local i32 @nc_free(%struct.conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

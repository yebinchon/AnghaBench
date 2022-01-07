; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/extr_server.c_enable_tunnel.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/extr_server.c_enable_tunnel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.server = type { i32, i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"'adb reverse' failed, fallback to 'adb forward'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.server*)* @enable_tunnel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_tunnel(%struct.server* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.server*, align 8
  store %struct.server* %0, %struct.server** %3, align 8
  %4 = load %struct.server*, %struct.server** %3, align 8
  %5 = getelementptr inbounds %struct.server, %struct.server* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.server*, %struct.server** %3, align 8
  %8 = getelementptr inbounds %struct.server, %struct.server* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @enable_tunnel_reverse(i32 %6, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %24

13:                                               ; preds = %1
  %14 = call i32 @LOGW(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.server*, %struct.server** %3, align 8
  %16 = getelementptr inbounds %struct.server, %struct.server* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = load %struct.server*, %struct.server** %3, align 8
  %18 = getelementptr inbounds %struct.server, %struct.server* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.server*, %struct.server** %3, align 8
  %21 = getelementptr inbounds %struct.server, %struct.server* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @enable_tunnel_forward(i32 %19, i32 %22)
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %13, %12
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i64 @enable_tunnel_reverse(i32, i32) #1

declare dso_local i32 @LOGW(i8*) #1

declare dso_local i32 @enable_tunnel_forward(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

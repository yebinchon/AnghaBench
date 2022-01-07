; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_varlink.c_varlink_dispatch_disconnect.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_varlink.c_varlink_dispatch_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@VARLINK_PENDING_DISCONNECT = common dso_local global i64 0, align 8
@VARLINK_PROCESSING_DISCONNECT = common dso_local global i32 0, align 4
@VARLINK_ERROR_DISCONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @varlink_dispatch_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @varlink_dispatch_disconnect(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %5 = call i32 @assert(%struct.TYPE_7__* %4)
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @VARLINK_PENDING_DISCONNECT, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

12:                                               ; preds = %1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = load i32, i32* @VARLINK_PROCESSING_DISCONNECT, align 4
  %15 = call i32 @varlink_set_state(%struct.TYPE_7__* %13, i32 %14)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = load i32, i32* @VARLINK_ERROR_DISCONNECTED, align 4
  %18 = call i32 @varlink_dispatch_local_error(%struct.TYPE_7__* %16, i32 %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = call i32 @varlink_close(%struct.TYPE_7__* %19)
  store i32 1, i32* %2, align 4
  br label %21

21:                                               ; preds = %12, %11
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @assert(%struct.TYPE_7__*) #1

declare dso_local i32 @varlink_set_state(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @varlink_dispatch_local_error(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @varlink_close(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

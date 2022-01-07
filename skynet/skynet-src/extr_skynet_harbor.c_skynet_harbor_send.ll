; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_harbor.c_skynet_harbor_send.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_harbor.c_skynet_harbor_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.remote_message = type { i32 }

@REMOTE = common dso_local global i64 0, align 8
@PTYPE_SYSTEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @skynet_harbor_send(%struct.remote_message* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.remote_message*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.remote_message* %0, %struct.remote_message** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.remote_message*, %struct.remote_message** %4, align 8
  %8 = getelementptr inbounds %struct.remote_message, %struct.remote_message* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @invalid_type(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i64, i64* @REMOTE, align 8
  %14 = icmp ne i64 %13, 0
  br label %15

15:                                               ; preds = %12, %3
  %16 = phi i1 [ false, %3 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i64, i64* @REMOTE, align 8
  %20 = load %struct.remote_message*, %struct.remote_message** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @PTYPE_SYSTEM, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @skynet_context_send(i64 %19, %struct.remote_message* %20, i32 4, i32 %21, i32 %22, i32 %23)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @invalid_type(i32) #1

declare dso_local i32 @skynet_context_send(i64, %struct.remote_message*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

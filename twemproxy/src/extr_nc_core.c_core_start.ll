; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_core.c_core_start.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_core.c_core_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32 }
%struct.instance = type { %struct.context* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.context* @core_start(%struct.instance* %0) #0 {
  %2 = alloca %struct.context*, align 8
  %3 = alloca %struct.instance*, align 8
  %4 = alloca %struct.context*, align 8
  store %struct.instance* %0, %struct.instance** %3, align 8
  %5 = load %struct.instance*, %struct.instance** %3, align 8
  %6 = call i32 @mbuf_init(%struct.instance* %5)
  %7 = call i32 (...) @msg_init()
  %8 = call i32 (...) @conn_init()
  %9 = load %struct.instance*, %struct.instance** %3, align 8
  %10 = call %struct.context* @core_ctx_create(%struct.instance* %9)
  store %struct.context* %10, %struct.context** %4, align 8
  %11 = load %struct.context*, %struct.context** %4, align 8
  %12 = icmp ne %struct.context* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.context*, %struct.context** %4, align 8
  %15 = load %struct.instance*, %struct.instance** %3, align 8
  %16 = getelementptr inbounds %struct.instance, %struct.instance* %15, i32 0, i32 0
  store %struct.context* %14, %struct.context** %16, align 8
  %17 = load %struct.context*, %struct.context** %4, align 8
  store %struct.context* %17, %struct.context** %2, align 8
  br label %22

18:                                               ; preds = %1
  %19 = call i32 (...) @conn_deinit()
  %20 = call i32 (...) @msg_deinit()
  %21 = call i32 (...) @mbuf_deinit()
  store %struct.context* null, %struct.context** %2, align 8
  br label %22

22:                                               ; preds = %18, %13
  %23 = load %struct.context*, %struct.context** %2, align 8
  ret %struct.context* %23
}

declare dso_local i32 @mbuf_init(%struct.instance*) #1

declare dso_local i32 @msg_init(...) #1

declare dso_local i32 @conn_init(...) #1

declare dso_local %struct.context* @core_ctx_create(%struct.instance*) #1

declare dso_local i32 @conn_deinit(...) #1

declare dso_local i32 @msg_deinit(...) #1

declare dso_local i32 @mbuf_deinit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

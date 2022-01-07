; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-netpack.c_close_uncomplete.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-netpack.c_close_uncomplete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue = type { i32 }
%struct.uncomplete = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.uncomplete* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @close_uncomplete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_uncomplete(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.queue*, align 8
  %6 = alloca %struct.uncomplete*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = call %struct.queue* @lua_touserdata(i32* %7, i32 1)
  store %struct.queue* %8, %struct.queue** %5, align 8
  %9 = load %struct.queue*, %struct.queue** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.uncomplete* @find_uncomplete(%struct.queue* %9, i32 %10)
  store %struct.uncomplete* %11, %struct.uncomplete** %6, align 8
  %12 = load %struct.uncomplete*, %struct.uncomplete** %6, align 8
  %13 = icmp ne %struct.uncomplete* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.uncomplete*, %struct.uncomplete** %6, align 8
  %16 = getelementptr inbounds %struct.uncomplete, %struct.uncomplete* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.uncomplete*, %struct.uncomplete** %17, align 8
  %19 = call i32 @skynet_free(%struct.uncomplete* %18)
  %20 = load %struct.uncomplete*, %struct.uncomplete** %6, align 8
  %21 = call i32 @skynet_free(%struct.uncomplete* %20)
  br label %22

22:                                               ; preds = %14, %2
  ret void
}

declare dso_local %struct.queue* @lua_touserdata(i32*, i32) #1

declare dso_local %struct.uncomplete* @find_uncomplete(%struct.queue*, i32) #1

declare dso_local i32 @skynet_free(%struct.uncomplete*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

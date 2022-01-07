; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_sproto.c_pool_release.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_sproto.c_pool_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool = type { %struct.chunk* }
%struct.chunk = type { %struct.chunk* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pool*)* @pool_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pool_release(%struct.pool* %0) #0 {
  %2 = alloca %struct.pool*, align 8
  %3 = alloca %struct.chunk*, align 8
  %4 = alloca %struct.chunk*, align 8
  store %struct.pool* %0, %struct.pool** %2, align 8
  %5 = load %struct.pool*, %struct.pool** %2, align 8
  %6 = getelementptr inbounds %struct.pool, %struct.pool* %5, i32 0, i32 0
  %7 = load %struct.chunk*, %struct.chunk** %6, align 8
  store %struct.chunk* %7, %struct.chunk** %3, align 8
  br label %8

8:                                                ; preds = %11, %1
  %9 = load %struct.chunk*, %struct.chunk** %3, align 8
  %10 = icmp ne %struct.chunk* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load %struct.chunk*, %struct.chunk** %3, align 8
  %13 = getelementptr inbounds %struct.chunk, %struct.chunk* %12, i32 0, i32 0
  %14 = load %struct.chunk*, %struct.chunk** %13, align 8
  store %struct.chunk* %14, %struct.chunk** %4, align 8
  %15 = load %struct.chunk*, %struct.chunk** %3, align 8
  %16 = call i32 @free(%struct.chunk* %15)
  %17 = load %struct.chunk*, %struct.chunk** %4, align 8
  store %struct.chunk* %17, %struct.chunk** %3, align 8
  br label %8

18:                                               ; preds = %8
  ret void
}

declare dso_local i32 @free(%struct.chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

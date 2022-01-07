; ModuleID = '/home/carl/AnghaBench/zfs/module/lua/extr_lgc.c_luaC_changemode.c'
source_filename = "/home/carl/AnghaBench/zfs/module/lua/extr_lgc.c_luaC_changemode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@KGC_GEN = common dso_local global i32 0, align 4
@GCSpropagate = common dso_local global i32 0, align 4
@KGC_NORMAL = common dso_local global i32 0, align 4
@sweepphases = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaC_changemode(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = call %struct.TYPE_4__* @G(i32* %6)
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %40

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @KGC_GEN, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* @GCSpropagate, align 4
  %21 = call i32 @bitmask(i32 %20)
  %22 = call i32 @luaC_runtilstate(i32* %19, i32 %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = call i32 @gettotalbytes(%struct.TYPE_4__* %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @KGC_GEN, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %40

30:                                               ; preds = %14
  %31 = load i32, i32* @KGC_NORMAL, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @entersweep(i32* %34)
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* @sweepphases, align 4
  %38 = xor i32 %37, -1
  %39 = call i32 @luaC_runtilstate(i32* %36, i32 %38)
  br label %40

40:                                               ; preds = %13, %30, %18
  ret void
}

declare dso_local %struct.TYPE_4__* @G(i32*) #1

declare dso_local i32 @luaC_runtilstate(i32*, i32) #1

declare dso_local i32 @bitmask(i32) #1

declare dso_local i32 @gettotalbytes(%struct.TYPE_4__*) #1

declare dso_local i32 @entersweep(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

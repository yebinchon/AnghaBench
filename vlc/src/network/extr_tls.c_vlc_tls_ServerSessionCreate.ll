; ModuleID = '/home/carl/AnghaBench/vlc/src/network/extr_tls.c_vlc_tls_ServerSessionCreate.c'
source_filename = "/home/carl/AnghaBench/vlc/src/network/extr_tls.c_vlc_tls_ServerSessionCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { {}* }
%struct.TYPE_11__ = type { %struct.TYPE_11__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @vlc_tls_ServerSessionCreate(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, i8** %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i8** %2, i8*** %6, align 8
  %9 = call i32 (...) @vlc_savecancel()
  store i32 %9, i32* %7, align 4
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = bitcast {}** %13 to %struct.TYPE_11__* (%struct.TYPE_12__*, %struct.TYPE_11__*, i8**)**
  %15 = load %struct.TYPE_11__* (%struct.TYPE_12__*, %struct.TYPE_11__*, i8**)*, %struct.TYPE_11__* (%struct.TYPE_12__*, %struct.TYPE_11__*, i8**)** %14, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = load i8**, i8*** %6, align 8
  %19 = call %struct.TYPE_11__* %15(%struct.TYPE_12__* %16, %struct.TYPE_11__* %17, i8** %18)
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %8, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @vlc_restorecancel(i32 %20)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %23 = icmp ne %struct.TYPE_11__* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %27, align 8
  br label %28

28:                                               ; preds = %24, %3
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  ret %struct.TYPE_11__* %29
}

declare dso_local i32 @vlc_savecancel(...) #1

declare dso_local i32 @vlc_restorecancel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

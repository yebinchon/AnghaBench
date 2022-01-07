; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_rcmd.c_ReInitResponse.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_rcmd.c_ReInitResponse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__*, %struct.TYPE_12__*)* }
%struct.TYPE_12__ = type { i32, i32 }

@kResponseNoProc = common dso_local global i32 0, align 4
@kResponseNoSave = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ReInitResponse(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %5 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %6 = icmp ne %struct.TYPE_12__* %5, null
  br i1 %6, label %7, label %48

7:                                                ; preds = %2
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %10 = call i32 @TraceResponse(%struct.TYPE_13__* %8, %struct.TYPE_12__* %9)
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load i32 (%struct.TYPE_13__*, %struct.TYPE_12__*)*, i32 (%struct.TYPE_13__*, %struct.TYPE_12__*)** %12, align 8
  %14 = icmp ne i32 (%struct.TYPE_13__*, %struct.TYPE_12__*)* %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %7
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @kResponseNoProc, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %15
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i32 (%struct.TYPE_13__*, %struct.TYPE_12__*)*, i32 (%struct.TYPE_13__*, %struct.TYPE_12__*)** %24, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %28 = call i32 %25(%struct.TYPE_13__* %26, %struct.TYPE_12__* %27)
  br label %29

29:                                               ; preds = %22, %15
  br label %30

30:                                               ; preds = %29, %7
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @kResponseNoSave, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = call i32 @SaveLastResponse(%struct.TYPE_13__* %38, %struct.TYPE_12__* %39)
  br label %45

41:                                               ; preds = %30
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = call i32 @DisposeLineListContents(i32* %43)
  br label %45

45:                                               ; preds = %41, %37
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %47 = call i32 @memset(%struct.TYPE_12__* %46, i32 0, i32 4)
  br label %48

48:                                               ; preds = %45, %2
  ret void
}

declare dso_local i32 @TraceResponse(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @SaveLastResponse(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @DisposeLineListContents(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

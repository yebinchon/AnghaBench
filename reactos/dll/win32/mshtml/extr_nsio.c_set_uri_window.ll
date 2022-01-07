; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_nsio.c_set_uri_window.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_nsio.c_set_uri_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_11__*, %struct.TYPE_14__* }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Changing %p -> %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_13__*)* @set_uri_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_uri_window(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %5 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %8 = icmp ne %struct.TYPE_14__* %7, null
  br i1 %8, label %9, label %30

9:                                                ; preds = %2
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = icmp eq %struct.TYPE_13__* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  br label %59

18:                                               ; preds = %9
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.TYPE_13__* %23, %struct.TYPE_13__* %24)
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %29 = call i32 @windowref_release(%struct.TYPE_14__* %28)
  br label %30

30:                                               ; preds = %18, %2
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %32 = icmp ne %struct.TYPE_13__* %31, null
  br i1 %32, label %33, label %56

33:                                               ; preds = %30
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %37 = call i32 @windowref_addref(%struct.TYPE_14__* %36)
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  store %struct.TYPE_14__* %40, %struct.TYPE_14__** %42, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = icmp ne %struct.TYPE_11__* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %33
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @set_uri_nscontainer(%struct.TYPE_12__* %48, i32 %53)
  br label %55

55:                                               ; preds = %47, %33
  br label %59

56:                                               ; preds = %30
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %58, align 8
  br label %59

59:                                               ; preds = %17, %56, %55
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @windowref_release(%struct.TYPE_14__*) #1

declare dso_local i32 @windowref_addref(%struct.TYPE_14__*) #1

declare dso_local i32 @set_uri_nscontainer(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

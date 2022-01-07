; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/cdmake/extr_cdmake.c_release_memory.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/cdmake/extr_cdmake.c_release_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }

@boot_header_list = common dso_local global %struct.TYPE_8__* null, align 8
@root = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@joliet = common dso_local global i64 0, align 8
@cd = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @release_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_memory() #0 {
  %1 = alloca %struct.TYPE_8__*, align 8
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  br label %4

4:                                                ; preds = %29, %0
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** @boot_header_list, align 8
  %6 = icmp ne %struct.TYPE_8__* %5, null
  br i1 %6, label %7, label %33

7:                                                ; preds = %4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** @boot_header_list, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %1, align 8
  br label %11

11:                                               ; preds = %16, %7
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** @boot_header_list, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = icmp ne %struct.TYPE_8__* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %11
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** @boot_header_list, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %2, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** @boot_header_list, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = call i32 @free(%struct.TYPE_8__* %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** @boot_header_list, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %28, align 8
  br label %11

29:                                               ; preds = %11
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** @boot_header_list, align 8
  %31 = call i32 @free(%struct.TYPE_8__* %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** @boot_header_list, align 8
  br label %4

33:                                               ; preds = %4
  br label %34

34:                                               ; preds = %48, %33
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @root, i32 0, i32 1), align 8
  %36 = icmp ne %struct.TYPE_8__* %35, null
  br i1 %36, label %37, label %52

37:                                               ; preds = %34
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @root, i32 0, i32 1), align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %3, align 8
  %41 = load i64, i64* @joliet, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @root, i32 0, i32 1), align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = call i32 @free(%struct.TYPE_8__* %46)
  br label %48

48:                                               ; preds = %43, %37
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @root, i32 0, i32 1), align 8
  %50 = call i32 @free(%struct.TYPE_8__* %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_8__* %51, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @root, i32 0, i32 1), align 8
  br label %34

52:                                               ; preds = %34
  %53 = load i64, i64* @joliet, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @root, i32 0, i32 0), align 8
  %57 = call i32 @free(%struct.TYPE_8__* %56)
  br label %58

58:                                               ; preds = %55, %52
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cd, i32 0, i32 0), align 8
  %60 = icmp ne %struct.TYPE_8__* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cd, i32 0, i32 0), align 8
  %63 = call i32 @free(%struct.TYPE_8__* %62)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cd, i32 0, i32 0), align 8
  br label %64

64:                                               ; preds = %61, %58
  ret void
}

declare dso_local i32 @free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

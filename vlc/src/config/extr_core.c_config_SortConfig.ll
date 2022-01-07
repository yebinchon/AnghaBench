; ModuleID = '/home/carl/AnghaBench/vlc/src/config/extr_core.c_config_SortConfig.c'
source_filename = "/home/carl/AnghaBench/vlc/src/config/extr_core.c_config_SortConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__** }

@vlc_plugins = common dso_local global %struct.TYPE_9__* null, align 8
@VLC_ENOMEM = common dso_local global i32 0, align 4
@confcmp = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_SortConfig() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_10__**, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  store i64 0, i64* %3, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vlc_plugins, align 8
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %2, align 8
  br label %8

8:                                                ; preds = %19, %0
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %10 = icmp ne %struct.TYPE_9__* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* %3, align 8
  %18 = add i64 %17, %16
  store i64 %18, i64* %3, align 8
  br label %19

19:                                               ; preds = %11
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %2, align 8
  br label %8

23:                                               ; preds = %8
  %24 = load i64, i64* %3, align 8
  %25 = call %struct.TYPE_10__** @vlc_alloc(i64 %24, i32 8)
  store %struct.TYPE_10__** %25, %struct.TYPE_10__*** %4, align 8
  %26 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %27 = icmp eq %struct.TYPE_10__** %26, null
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %32, i32* %1, align 4
  br label %83

33:                                               ; preds = %23
  store i64 0, i64* %3, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vlc_plugins, align 8
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %2, align 8
  br label %35

35:                                               ; preds = %71, %33
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %37 = icmp ne %struct.TYPE_9__* %36, null
  br i1 %37, label %38, label %75

38:                                               ; preds = %35
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  store %struct.TYPE_10__* %42, %struct.TYPE_10__** %5, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i64 %48
  store %struct.TYPE_10__* %49, %struct.TYPE_10__** %6, align 8
  br label %50

50:                                               ; preds = %67, %38
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %53 = icmp ult %struct.TYPE_10__* %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %50
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @CONFIG_ITEM(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  br label %67

61:                                               ; preds = %54
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %63 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %64 = load i64, i64* %3, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %63, i64 %64
  store %struct.TYPE_10__* %62, %struct.TYPE_10__** %66, align 8
  br label %67

67:                                               ; preds = %61, %60
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 1
  store %struct.TYPE_10__* %69, %struct.TYPE_10__** %5, align 8
  br label %50

70:                                               ; preds = %50
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  store %struct.TYPE_9__* %74, %struct.TYPE_9__** %2, align 8
  br label %35

75:                                               ; preds = %35
  %76 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %77 = load i64, i64* %3, align 8
  %78 = load i32, i32* @confcmp, align 4
  %79 = call i32 @qsort(%struct.TYPE_10__** %76, i64 %77, i32 8, i32 %78)
  %80 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  store %struct.TYPE_10__** %80, %struct.TYPE_10__*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @config, i32 0, i32 1), align 8
  %81 = load i64, i64* %3, align 8
  store i64 %81, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @config, i32 0, i32 0), align 8
  %82 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %82, i32* %1, align 4
  br label %83

83:                                               ; preds = %75, %31
  %84 = load i32, i32* %1, align 4
  ret i32 %84
}

declare dso_local %struct.TYPE_10__** @vlc_alloc(i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @CONFIG_ITEM(i32) #1

declare dso_local i32 @qsort(%struct.TYPE_10__**, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/vlc/src/config/extr_core.c_config_ResetAll.c'
source_filename = "/home/carl/AnghaBench/vlc/src/config/extr_core.c_config_ResetAll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.TYPE_8__, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i32, i32 }

@config_lock = common dso_local global i32 0, align 4
@vlc_plugins = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @config_ResetAll() #0 {
  %1 = alloca %struct.TYPE_10__*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = call i32 @vlc_rwlock_wrlock(i32* @config_lock)
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** @vlc_plugins, align 8
  store %struct.TYPE_10__* %5, %struct.TYPE_10__** %1, align 8
  br label %6

6:                                                ; preds = %79, %0
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %8 = icmp ne %struct.TYPE_10__* %7, null
  br i1 %8, label %9, label %83

9:                                                ; preds = %6
  store i64 0, i64* %2, align 8
  br label %10

10:                                               ; preds = %75, %9
  %11 = load i64, i64* %2, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %11, %15
  br i1 %16, label %17, label %78

17:                                               ; preds = %10
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = load i64, i64* %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i64 %22
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %3, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @IsConfigIntegerType(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %17
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 4
  br label %74

37:                                               ; preds = %17
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @IsConfigFloatType(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 8
  br label %73

51:                                               ; preds = %37
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @IsConfigStringType(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %51
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = call i32 @free(i8* %62)
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @strdupnull(i32 %67)
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store i64 %68, i64* %71, align 8
  br label %72

72:                                               ; preds = %57, %51
  br label %73

73:                                               ; preds = %72, %43
  br label %74

74:                                               ; preds = %73, %29
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %2, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %2, align 8
  br label %10

78:                                               ; preds = %10
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  store %struct.TYPE_10__* %82, %struct.TYPE_10__** %1, align 8
  br label %6

83:                                               ; preds = %6
  %84 = call i32 @vlc_rwlock_unlock(i32* @config_lock)
  ret void
}

declare dso_local i32 @vlc_rwlock_wrlock(i32*) #1

declare dso_local i64 @IsConfigIntegerType(i32) #1

declare dso_local i64 @IsConfigFloatType(i32) #1

declare dso_local i64 @IsConfigStringType(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strdupnull(i32) #1

declare dso_local i32 @vlc_rwlock_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

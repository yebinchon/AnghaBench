; ModuleID = '/home/carl/AnghaBench/vlc/src/preparser/extr_preparser.c_input_preparser_New.c'
source_filename = "/home/carl/AnghaBench/vlc/src/preparser/extr_preparser.c_input_preparser_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32*, i32 }
%struct.background_worker_config = type { i32, i32, i32, i32, i32, i32, i32 }

@ReqHoldVoid = common dso_local global i32 0, align 4
@ReqReleaseVoid = common dso_local global i32 0, align 4
@PreparserCloseInput = common dso_local global i32 0, align 4
@PreparserProbeInput = common dso_local global i32 0, align 4
@PreparserOpenInput = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"preparse-threads\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"preparse-timeout\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"unable to create art fetcher\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @input_preparser_New(i32* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.background_worker_config, align 4
  store i32* %0, i32** %3, align 8
  %6 = call %struct.TYPE_7__* @malloc(i32 24)
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %4, align 8
  %7 = getelementptr inbounds %struct.background_worker_config, %struct.background_worker_config* %5, i32 0, i32 0
  %8 = load i32, i32* @ReqHoldVoid, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds %struct.background_worker_config, %struct.background_worker_config* %5, i32 0, i32 1
  %10 = load i32, i32* @ReqReleaseVoid, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.background_worker_config, %struct.background_worker_config* %5, i32 0, i32 2
  %12 = load i32, i32* @PreparserCloseInput, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.background_worker_config, %struct.background_worker_config* %5, i32 0, i32 3
  %14 = load i32, i32* @PreparserProbeInput, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.background_worker_config, %struct.background_worker_config* %5, i32 0, i32 4
  %16 = load i32, i32* @PreparserOpenInput, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.background_worker_config, %struct.background_worker_config* %5, i32 0, i32 5
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @var_InheritInteger(i32* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %17, align 4
  %20 = getelementptr inbounds %struct.background_worker_config, %struct.background_worker_config* %5, i32 0, i32 6
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @var_InheritInteger(i32* %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 @VLC_TICK_FROM_MS(i32 %22)
  store i32 %23, i32* %20, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = call i64 @likely(%struct.TYPE_7__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = call i32 @background_worker_New(%struct.TYPE_7__* %28, %struct.background_worker_config* %5)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  br label %32

32:                                               ; preds = %27, %1
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = icmp ne %struct.TYPE_7__* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %35, %32
  %42 = phi i1 [ true, %32 ], [ %40, %35 ]
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = call i32 @free(%struct.TYPE_7__* %47)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %73

49:                                               ; preds = %41
  %50 = load i32*, i32** %3, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  store i32* %50, i32** %52, align 8
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @input_fetcher_New(i32* %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = call i32 @atomic_init(i32* %58, i32 0)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %49
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @msg_Warn(i32* %69, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %49
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %72, %struct.TYPE_7__** %2, align 8
  br label %73

73:                                               ; preds = %71, %46
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %74
}

declare dso_local %struct.TYPE_7__* @malloc(i32) #1

declare dso_local i32 @var_InheritInteger(i32*, i8*) #1

declare dso_local i32 @VLC_TICK_FROM_MS(i32) #1

declare dso_local i64 @likely(%struct.TYPE_7__*) #1

declare dso_local i32 @background_worker_New(%struct.TYPE_7__*, %struct.background_worker_config*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

declare dso_local i32 @input_fetcher_New(i32*) #1

declare dso_local i32 @atomic_init(i32*, i32) #1

declare dso_local i32 @msg_Warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

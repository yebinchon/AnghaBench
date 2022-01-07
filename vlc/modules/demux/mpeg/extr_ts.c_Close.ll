; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts.c_Close.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts.c_Close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_10__, i32, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_13__*, i64 }
%struct.TYPE_13__ = type { i32* }

@.str = private unnamed_addr constant [10 x i8] c"ts-csa-ck\00", align 1
@ChangeKeyCallback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"ts-csa2-ck\00", align 1
@FreeDictAttachment = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Close(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = bitcast i32* %5 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %6, %struct.TYPE_11__** %3, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %9, %struct.TYPE_12__** %4, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %12 = call i32 @GetPID(%struct.TYPE_12__* %11, i32 0)
  %13 = call i32 @PIDRelease(%struct.TYPE_11__* %10, i32 %12)
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 2
  %16 = call i32 @vlc_mutex_lock(i32* %15)
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %1
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = load i32, i32* @ChangeKeyCallback, align 4
  %24 = call i32 @var_DelCallback(%struct.TYPE_11__* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %23, i8* inttoptr (i64 1 to i8*))
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = load i32, i32* @ChangeKeyCallback, align 4
  %27 = call i32 @var_DelCallback(%struct.TYPE_11__* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %26, i8* null)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @csa_Delete(i64 %30)
  br label %32

32:                                               ; preds = %21, %1
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 2
  %35 = call i32 @vlc_mutex_unlock(i32* %34)
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @ARRAY_RESET(i32 %38)
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = icmp ne %struct.TYPE_13__* %43, null
  br i1 %44, label %45, label %56

45:                                               ; preds = %32
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  store i32* null, i32** %50, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  %55 = call i32 @vlc_stream_Delete(%struct.TYPE_13__* %54)
  br label %56

56:                                               ; preds = %45, %32
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  %59 = call i32 @vlc_mutex_destroy(i32* %58)
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = call i32 @ts_pid_list_Release(%struct.TYPE_11__* %60, i32* %62)
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i32, i32* @FreeDictAttachment, align 4
  %67 = call i32 @vlc_dictionary_clear(i32* %65, i32 %66, i32* null)
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %69 = call i32 @free(%struct.TYPE_12__* %68)
  ret void
}

declare dso_local i32 @PIDRelease(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @GetPID(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @var_DelCallback(%struct.TYPE_11__*, i8*, i32, i8*) #1

declare dso_local i32 @csa_Delete(i64) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @ARRAY_RESET(i32) #1

declare dso_local i32 @vlc_stream_Delete(%struct.TYPE_13__*) #1

declare dso_local i32 @vlc_mutex_destroy(i32*) #1

declare dso_local i32 @ts_pid_list_Release(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @vlc_dictionary_clear(i32*, i32, i32*) #1

declare dso_local i32 @free(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/toxcore/toxav/extr_msi.c_msi_invite.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxav/extr_msi.c_msi_invite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_14__*, i8* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i8* }

@.str = private unnamed_addr constant [32 x i8] c"Session: %p Inviting friend: %u\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to aquire lock on msi mutex\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Already in a call\00", align 1
@requ_init = common dso_local global i32 0, align 4
@msi_CallRequesting = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"Invite sent\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msi_invite(%struct.TYPE_15__* %0, %struct.TYPE_17__** %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_17__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_16__, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_17__** %1, %struct.TYPE_17__*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %12 = icmp ne %struct.TYPE_15__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %81

14:                                               ; preds = %4
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 (i8*, ...) @LOGGER_DEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.TYPE_15__* %15, i32 %16)
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @pthread_mutex_trylock(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = call i32 @LOGGER_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %81

25:                                               ; preds = %14
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32* @get_call(%struct.TYPE_15__* %26, i32 %27)
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = call i32 @LOGGER_ERROR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pthread_mutex_unlock(i32 %34)
  store i32 -1, i32* %5, align 4
  br label %81

36:                                               ; preds = %25
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call %struct.TYPE_17__* @new_call(%struct.TYPE_15__* %37, i32 %38)
  %40 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  store %struct.TYPE_17__* %39, %struct.TYPE_17__** %40, align 8
  %41 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %41, align 8
  %43 = icmp eq %struct.TYPE_17__* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pthread_mutex_unlock(i32 %47)
  store i32 -1, i32* %5, align 4
  br label %81

49:                                               ; preds = %36
  %50 = load i8*, i8** %9, align 8
  %51 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 3
  store i8* %50, i8** %53, align 8
  %54 = load i32, i32* @requ_init, align 4
  %55 = call i32 @msg_init(%struct.TYPE_16__* %10, i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @send_message(i32 %66, i32 %70, %struct.TYPE_16__* %10)
  %72 = load i32, i32* @msi_CallRequesting, align 4
  %73 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  %76 = call i32 (i8*, ...) @LOGGER_DEBUG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @pthread_mutex_unlock(i32 %79)
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %49, %44, %30, %23, %13
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @LOGGER_DEBUG(i8*, ...) #1

declare dso_local i64 @pthread_mutex_trylock(i32) #1

declare dso_local i32 @LOGGER_ERROR(i8*) #1

declare dso_local i32* @get_call(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32) #1

declare dso_local %struct.TYPE_17__* @new_call(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @msg_init(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @send_message(i32, i32, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

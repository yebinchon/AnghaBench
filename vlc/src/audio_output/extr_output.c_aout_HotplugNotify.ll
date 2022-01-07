; ModuleID = '/home/carl/AnghaBench/vlc/src/audio_output/extr_output.c_aout_HotplugNotify.c'
source_filename = "/home/carl/AnghaBench/vlc/src/audio_output/extr_output.c_aout_HotplugNotify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_10__*, %struct.TYPE_10__*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*)* @aout_HotplugNotify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aout_HotplugNotify(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_10__**, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call %struct.TYPE_9__* @aout_owner(i32* %10)
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %7, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  store %struct.TYPE_10__** %14, %struct.TYPE_10__*** %9, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = call i32 @vlc_mutex_lock(i32* %17)
  br label %19

19:                                               ; preds = %31, %3
  %20 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %8, align 8
  %22 = icmp ne %struct.TYPE_10__* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @strcmp(i8* %24, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  br label %34

31:                                               ; preds = %23
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  store %struct.TYPE_10__** %33, %struct.TYPE_10__*** %9, align 8
  br label %19

34:                                               ; preds = %30, %19
  %35 = load i8*, i8** %6, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %76

37:                                               ; preds = %34
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %39 = icmp eq %struct.TYPE_10__* %38, null
  br i1 %39, label %40, label %66

40:                                               ; preds = %37
  %41 = load i8*, i8** %5, align 8
  %42 = call i64 @strlen(i8* %41)
  %43 = add i64 24, %42
  %44 = call %struct.TYPE_10__* @malloc(i64 %43)
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %8, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %46 = icmp eq %struct.TYPE_10__* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %97

51:                                               ; preds = %40
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %53, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @strcpy(i32 %56, i8* %57)
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %60 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  store %struct.TYPE_10__* %59, %struct.TYPE_10__** %60, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  br label %71

66:                                               ; preds = %37
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = call i32 @free(%struct.TYPE_10__* %69)
  br label %71

71:                                               ; preds = %66, %51
  %72 = load i8*, i8** %6, align 8
  %73 = call %struct.TYPE_10__* @strdup(i8* %72)
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  store %struct.TYPE_10__* %73, %struct.TYPE_10__** %75, align 8
  br label %96

76:                                               ; preds = %34
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %78 = icmp ne %struct.TYPE_10__* %77, null
  br i1 %78, label %79, label %95

79:                                               ; preds = %76
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %82, align 4
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  store %struct.TYPE_10__* %87, %struct.TYPE_10__** %88, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = call i32 @free(%struct.TYPE_10__* %91)
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %94 = call i32 @free(%struct.TYPE_10__* %93)
  br label %95

95:                                               ; preds = %79, %76
  br label %96

96:                                               ; preds = %95, %71
  br label %97

97:                                               ; preds = %96, %50
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = call i32 @vlc_mutex_unlock(i32* %100)
  ret void
}

declare dso_local %struct.TYPE_9__* @aout_owner(i32*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local %struct.TYPE_10__* @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @free(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @strdup(i8*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

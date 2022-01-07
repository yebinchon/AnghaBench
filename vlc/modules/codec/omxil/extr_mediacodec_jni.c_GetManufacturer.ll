; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/omxil/extr_mediacodec_jni.c_GetManufacturer.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/omxil/extr_mediacodec_jni.c_GetManufacturer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8* (%struct.TYPE_9__**, i32, i32)*, i32 (%struct.TYPE_9__**, i32)*, i32 (%struct.TYPE_9__**, i32, i8*)*, i32 (%struct.TYPE_9__**, i32, i32)*, i32 (%struct.TYPE_9__**, i32, i8*, i8*)*, i32 (%struct.TYPE_9__**, i8*)* }

@.str = private unnamed_addr constant [17 x i8] c"android/os/Build\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"MANUFACTURER\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Ljava/lang/String;\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_9__**)* @GetManufacturer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @GetManufacturer(%struct.TYPE_9__** %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_9__**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %3, align 8
  store i8* null, i8** %4, align 8
  %9 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 5
  %12 = load i32 (%struct.TYPE_9__**, i8*)*, i32 (%struct.TYPE_9__**, i8*)** %11, align 8
  %13 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %14 = call i32 %12(%struct.TYPE_9__** %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %5, align 4
  %15 = call i64 (...) @CHECK_EXCEPTION()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %72

18:                                               ; preds = %1
  %19 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 4
  %22 = load i32 (%struct.TYPE_9__**, i32, i8*, i8*)*, i32 (%struct.TYPE_9__**, i32, i8*, i8*)** %21, align 8
  %23 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 %22(%struct.TYPE_9__** %23, i32 %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 %25, i32* %6, align 4
  %26 = call i64 (...) @CHECK_EXCEPTION()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %63

29:                                               ; preds = %18
  %30 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 3
  %33 = load i32 (%struct.TYPE_9__**, i32, i32)*, i32 (%struct.TYPE_9__**, i32, i32)** %32, align 8
  %34 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 %33(%struct.TYPE_9__** %34, i32 %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = call i64 (...) @CHECK_EXCEPTION()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %63

41:                                               ; preds = %29
  %42 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i8* (%struct.TYPE_9__**, i32, i32)*, i8* (%struct.TYPE_9__**, i32, i32)** %44, align 8
  %46 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i8* %45(%struct.TYPE_9__** %46, i32 %47, i32 0)
  store i8* %48, i8** %8, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %62

51:                                               ; preds = %41
  %52 = load i8*, i8** %8, align 8
  %53 = call i8* @strdup(i8* %52)
  store i8* %53, i8** %4, align 8
  %54 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  %57 = load i32 (%struct.TYPE_9__**, i32, i8*)*, i32 (%struct.TYPE_9__**, i32, i8*)** %56, align 8
  %58 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 %57(%struct.TYPE_9__** %58, i32 %59, i8* %60)
  br label %62

62:                                               ; preds = %51, %41
  br label %63

63:                                               ; preds = %62, %40, %28
  %64 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i32 (%struct.TYPE_9__**, i32)*, i32 (%struct.TYPE_9__**, i32)** %66, align 8
  %68 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 %67(%struct.TYPE_9__** %68, i32 %69)
  %71 = load i8*, i8** %4, align 8
  store i8* %71, i8** %2, align 8
  br label %72

72:                                               ; preds = %63, %17
  %73 = load i8*, i8** %2, align 8
  ret i8* %73
}

declare dso_local i64 @CHECK_EXCEPTION(...) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/vlc/src/android/extr_specific.c_get_java_string.c'
source_filename = "/home/carl/AnghaBench/vlc/src/android/extr_specific.c_get_java_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8* (%struct.TYPE_10__**, i32, i32)*, i32 (%struct.TYPE_10__**, i32)*, i32 (%struct.TYPE_10__**, i32, i8*)*, i32 (%struct.TYPE_10__**, i32, i32)*, i32 (%struct.TYPE_10__**)*, i64 (%struct.TYPE_10__**)*, i32 (%struct.TYPE_10__**, i32, i8*, i8*)* }

@.str = private unnamed_addr constant [19 x i8] c"Ljava/lang/String;\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_10__**, i32, i8*)* @get_java_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_java_string(%struct.TYPE_10__** %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_10__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_10__** %0, %struct.TYPE_10__*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 6
  %15 = load i32 (%struct.TYPE_10__**, i32, i8*, i8*)*, i32 (%struct.TYPE_10__**, i32, i8*, i8*)** %14, align 8
  %16 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 %15(%struct.TYPE_10__** %16, i32 %17, i8* %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %8, align 4
  %20 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 5
  %23 = load i64 (%struct.TYPE_10__**)*, i64 (%struct.TYPE_10__**)** %22, align 8
  %24 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %25 = call i64 %23(%struct.TYPE_10__** %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %3
  %28 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 4
  %31 = load i32 (%struct.TYPE_10__**)*, i32 (%struct.TYPE_10__**)** %30, align 8
  %32 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %33 = call i32 %31(%struct.TYPE_10__** %32)
  store i8* null, i8** %4, align 8
  br label %72

34:                                               ; preds = %3
  %35 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 3
  %38 = load i32 (%struct.TYPE_10__**, i32, i32)*, i32 (%struct.TYPE_10__**, i32, i32)** %37, align 8
  %39 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 %38(%struct.TYPE_10__** %39, i32 %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i8* (%struct.TYPE_10__**, i32, i32)*, i8* (%struct.TYPE_10__**, i32, i32)** %45, align 8
  %47 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i8* %46(%struct.TYPE_10__** %47, i32 %48, i32 0)
  store i8* %49, i8** %10, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %34
  store i8* null, i8** %4, align 8
  br label %72

53:                                               ; preds = %34
  %54 = load i8*, i8** %10, align 8
  %55 = call i8* @strdup(i8* %54)
  store i8* %55, i8** %11, align 8
  %56 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = load i32 (%struct.TYPE_10__**, i32, i8*)*, i32 (%struct.TYPE_10__**, i32, i8*)** %58, align 8
  %60 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i8*, i8** %10, align 8
  %63 = call i32 %59(%struct.TYPE_10__** %60, i32 %61, i8* %62)
  %64 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i32 (%struct.TYPE_10__**, i32)*, i32 (%struct.TYPE_10__**, i32)** %66, align 8
  %68 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 %67(%struct.TYPE_10__** %68, i32 %69)
  %71 = load i8*, i8** %11, align 8
  store i8* %71, i8** %4, align 8
  br label %72

72:                                               ; preds = %53, %52, %27
  %73 = load i8*, i8** %4, align 8
  ret i8* %73
}

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

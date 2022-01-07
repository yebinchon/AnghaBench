; ModuleID = '/home/carl/AnghaBench/vlc/src/android/extr_specific.c_config_GetGenericDir.c'
source_filename = "/home/carl/AnghaBench/vlc/src/android/extr_specific.c_config_GetGenericDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_19__ = type { i8* (%struct.TYPE_19__**, i32*, i32)*, i32 (%struct.TYPE_19__**, i32*)*, i32 (%struct.TYPE_19__**, i32*, i8*)*, i32* (%struct.TYPE_19__**, i32*, i32)*, i32* (%struct.TYPE_19__**, i32, i32, i32*)*, i32 (%struct.TYPE_19__**)*, i64 (%struct.TYPE_19__**)*, i32* (%struct.TYPE_19__**, i8*)* }

@fields = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @config_GetGenericDir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @config_GetGenericDir(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_19__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %6, align 8
  %11 = call %struct.TYPE_19__** @get_env(i32* %5)
  store %struct.TYPE_19__** %11, %struct.TYPE_19__*** %4, align 8
  %12 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %4, align 8
  %13 = icmp eq %struct.TYPE_19__** %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %109

15:                                               ; preds = %1
  %16 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %4, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 7
  %19 = load i32* (%struct.TYPE_19__**, i8*)*, i32* (%struct.TYPE_19__**, i8*)** %18, align 8
  %20 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %4, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = call i32* %19(%struct.TYPE_19__** %20, i8* %21)
  store i32* %22, i32** %7, align 8
  %23 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %4, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 6
  %26 = load i64 (%struct.TYPE_19__**)*, i64 (%struct.TYPE_19__**)** %25, align 8
  %27 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %4, align 8
  %28 = call i64 %26(%struct.TYPE_19__** %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %15
  %31 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %4, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 5
  %34 = load i32 (%struct.TYPE_19__**)*, i32 (%struct.TYPE_19__**)** %33, align 8
  %35 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %4, align 8
  %36 = call i32 %34(%struct.TYPE_19__** %35)
  store i32* null, i32** %7, align 8
  br label %37

37:                                               ; preds = %30, %15
  %38 = load i32*, i32** %7, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %105

41:                                               ; preds = %37
  %42 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %4, align 8
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 4
  %45 = load i32* (%struct.TYPE_19__**, i32, i32, i32*)*, i32* (%struct.TYPE_19__**, i32, i32, i32*)** %44, align 8
  %46 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %4, align 8
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @fields, i32 0, i32 1, i32 1), align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @fields, i32 0, i32 1, i32 0), align 4
  %49 = load i32*, i32** %7, align 8
  %50 = call i32* %45(%struct.TYPE_19__** %46, i32 %47, i32 %48, i32* %49)
  store i32* %50, i32** %8, align 8
  %51 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %4, align 8
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 1
  %54 = load i32 (%struct.TYPE_19__**, i32*)*, i32 (%struct.TYPE_19__**, i32*)** %53, align 8
  %55 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %4, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 %54(%struct.TYPE_19__** %55, i32* %56)
  %58 = load i32*, i32** %8, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %41
  br label %105

61:                                               ; preds = %41
  %62 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %4, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 3
  %65 = load i32* (%struct.TYPE_19__**, i32*, i32)*, i32* (%struct.TYPE_19__**, i32*, i32)** %64, align 8
  %66 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %4, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @fields, i32 0, i32 0, i32 0), align 4
  %69 = call i32* %65(%struct.TYPE_19__** %66, i32* %67, i32 %68)
  store i32* %69, i32** %9, align 8
  %70 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %4, align 8
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 1
  %73 = load i32 (%struct.TYPE_19__**, i32*)*, i32 (%struct.TYPE_19__**, i32*)** %72, align 8
  %74 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %4, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 %73(%struct.TYPE_19__** %74, i32* %75)
  %77 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %4, align 8
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = load i8* (%struct.TYPE_19__**, i32*, i32)*, i8* (%struct.TYPE_19__**, i32*, i32)** %79, align 8
  %81 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %4, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = call i8* %80(%struct.TYPE_19__** %81, i32* %82, i32 0)
  store i8* %83, i8** %10, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = icmp eq i8* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %61
  br label %105

87:                                               ; preds = %61
  %88 = load i8*, i8** %10, align 8
  %89 = call i8* @strdup(i8* %88)
  store i8* %89, i8** %6, align 8
  %90 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %4, align 8
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 2
  %93 = load i32 (%struct.TYPE_19__**, i32*, i8*)*, i32 (%struct.TYPE_19__**, i32*, i8*)** %92, align 8
  %94 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %4, align 8
  %95 = load i32*, i32** %9, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = call i32 %93(%struct.TYPE_19__** %94, i32* %95, i8* %96)
  %98 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %4, align 8
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 1
  %101 = load i32 (%struct.TYPE_19__**, i32*)*, i32 (%struct.TYPE_19__**, i32*)** %100, align 8
  %102 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %4, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = call i32 %101(%struct.TYPE_19__** %102, i32* %103)
  br label %105

105:                                              ; preds = %87, %86, %60, %40
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @release_env(i32 %106)
  %108 = load i8*, i8** %6, align 8
  store i8* %108, i8** %2, align 8
  br label %109

109:                                              ; preds = %105, %14
  %110 = load i8*, i8** %2, align 8
  ret i8* %110
}

declare dso_local %struct.TYPE_19__** @get_env(i32*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @release_env(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

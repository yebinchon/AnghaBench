; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_variables.c_DelCallback.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_variables.c_DelCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_11__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"cannot delete callback %p from nonexistent variable '%s'\00", align 1
@vlc_value_callback = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, %struct.TYPE_11__*, i64)* @DelCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DelCallback(i32* %0, i8* %1, %struct.TYPE_11__* noalias %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_11__**, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @assert(i32* %13)
  %15 = load i32*, i32** %5, align 8
  %16 = call %struct.TYPE_9__* @vlc_internals(i32* %15)
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %12, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call %struct.TYPE_10__* @Lookup(i32* %17, i8* %18)
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %11, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %21 = icmp eq %struct.TYPE_10__* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = call i32 @vlc_mutex_unlock(i32* %24)
  %26 = load i32*, i32** %5, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @msg_Err(i32* %26, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %29, i8* %30)
  br label %93

32:                                               ; preds = %4
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %35 = call i32 @WaitUnused(i32* %33, %struct.TYPE_10__* %34)
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @vlc_value_callback, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  store %struct.TYPE_11__** %41, %struct.TYPE_11__*** %9, align 8
  br label %45

42:                                               ; preds = %32
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  store %struct.TYPE_11__** %44, %struct.TYPE_11__*** %9, align 8
  br label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  store %struct.TYPE_11__* %47, %struct.TYPE_11__** %10, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %49 = icmp ne %struct.TYPE_11__* %48, null
  %50 = zext i1 %49 to i32
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i32*
  %53 = call i32 @assert(i32* %52)
  br label %54

54:                                               ; preds = %72, %45
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %57, %60
  br i1 %61, label %70, label %62

62:                                               ; preds = %54
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %65, %68
  br label %70

70:                                               ; preds = %62, %54
  %71 = phi i1 [ true, %54 ], [ %69, %62 ]
  br i1 %71, label %72, label %83

72:                                               ; preds = %70
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  store %struct.TYPE_11__** %74, %struct.TYPE_11__*** %9, align 8
  %75 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  store %struct.TYPE_11__* %76, %struct.TYPE_11__** %10, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %78 = icmp ne %struct.TYPE_11__* %77, null
  %79 = zext i1 %78 to i32
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to i32*
  %82 = call i32 @assert(i32* %81)
  br label %54

83:                                               ; preds = %70
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  store %struct.TYPE_11__* %86, %struct.TYPE_11__** %87, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = call i32 @vlc_mutex_unlock(i32* %89)
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %92 = call i32 @free(%struct.TYPE_11__* %91)
  br label %93

93:                                               ; preds = %83, %22
  ret void
}

declare dso_local i32 @assert(i32*) #1

declare dso_local %struct.TYPE_9__* @vlc_internals(i32*) #1

declare dso_local %struct.TYPE_10__* @Lookup(i32*, i8*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @msg_Err(i32*, i8*, i32, i8*) #1

declare dso_local i32 @WaitUnused(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_variables.c_var_SetChecked.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_variables.c_var_SetChecked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 (i32*)*, i32 (i32*)* }
%struct.TYPE_10__ = type { i32 }

@VLC_ENOVAR = common dso_local global i32 0, align 4
@VLC_VAR_CLASS = common dso_local global i32 0, align 4
@VLC_VAR_VOID = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @var_SetChecked(i32* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = ptrtoint i32* %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32*, i32** %6, align 8
  %17 = call %struct.TYPE_10__* @vlc_internals(i32* %16)
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %12, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call %struct.TYPE_11__* @Lookup(i32* %18, i8* %19)
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %10, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %22 = icmp eq %struct.TYPE_11__* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = call i32 @vlc_mutex_unlock(i32* %25)
  %27 = load i32, i32* @VLC_ENOVAR, align 4
  store i32 %27, i32* %5, align 4
  br label %84

28:                                               ; preds = %4
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %28
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @VLC_VAR_CLASS, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %36, %37
  br label %39

39:                                               ; preds = %31, %28
  %40 = phi i1 [ true, %28 ], [ %38, %31 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @VLC_VAR_CLASS, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @VLC_VAR_VOID, align 4
  %49 = icmp ne i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load i32*, i32** %6, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %54 = call i32 @WaitUnused(i32* %52, %struct.TYPE_11__* %53)
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i32 (i32*)*, i32 (i32*)** %58, align 8
  %60 = call i32 %59(i32* %9)
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %11, align 4
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %65 = call i32 @CheckValue(%struct.TYPE_11__* %64, i32* %9)
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @TriggerCallback(i32* %69, %struct.TYPE_11__* %70, i8* %71, i32 %72)
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32 (i32*)*, i32 (i32*)** %77, align 8
  %79 = call i32 %78(i32* %11)
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = call i32 @vlc_mutex_unlock(i32* %81)
  %83 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %39, %23
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_10__* @vlc_internals(i32*) #1

declare dso_local %struct.TYPE_11__* @Lookup(i32*, i8*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @WaitUnused(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @CheckValue(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @TriggerCallback(i32*, %struct.TYPE_11__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

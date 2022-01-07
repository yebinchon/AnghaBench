; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_resource.c_input_resource_PutVoutLocked.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_resource.c_input_resource_PutVoutLocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32**, i32, i32* }

@.str = private unnamed_addr constant [19 x i8] c"saving a free vout\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"destroying vout (already one saved or active)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*)* @input_resource_PutVoutLocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @input_resource_PutVoutLocked(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = icmp ne i32* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = call i32 @vlc_mutex_lock(i32* %11)
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i32**, i32*** %20, align 8
  %22 = getelementptr inbounds i32*, i32** %21, i64 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = icmp eq i32* %23, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = call i32 @vlc_mutex_unlock(i32* %28)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %26
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = icmp eq i32* %37, %38
  br label %40

40:                                               ; preds = %34, %26
  %41 = phi i1 [ true, %26 ], [ %39, %34 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @msg_Dbg(i32 %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %48 = load i32*, i32** %4, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 4
  store i32* %48, i32** %50, align 8
  br label %82

51:                                               ; preds = %2
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @msg_Dbg(i32 %54, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32**, i32*** %60, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @TAB_FIND(i64 %58, i32** %61, i32* %62, i32 %63)
  %65 = load i32, i32* %5, align 4
  %66 = icmp sge i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  %74 = load i32**, i32*** %73, align 8
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @TAB_REMOVE(i64 %71, i32** %74, i32* %75)
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = call i32 @vlc_mutex_unlock(i32* %78)
  %80 = load i32*, i32** %4, align 8
  %81 = call i32 @vout_Close(i32* %80)
  br label %82

82:                                               ; preds = %51, %40
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @msg_Dbg(i32, i8*) #1

declare dso_local i32 @TAB_FIND(i64, i32**, i32*, i32) #1

declare dso_local i32 @TAB_REMOVE(i64, i32**, i32*) #1

declare dso_local i32 @vout_Close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

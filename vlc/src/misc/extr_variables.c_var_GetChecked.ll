; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_variables.c_var_GetChecked.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_variables.c_var_GetChecked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 (i32*)* }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_VAR_CLASS = common dso_local global i32 0, align 4
@VLC_VAR_VOID = common dso_local global i32 0, align 4
@VLC_ENOVAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @var_GetChecked(i32* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = ptrtoint i32* %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32*, i32** %5, align 8
  %16 = call %struct.TYPE_7__* @vlc_internals(i32* %15)
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %9, align 8
  %17 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call %struct.TYPE_8__* @Lookup(i32* %18, i8* %19)
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %10, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %22 = icmp ne %struct.TYPE_8__* %21, null
  br i1 %22, label %23, label %58

23:                                               ; preds = %4
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %23
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @VLC_VAR_CLASS, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %31, %32
  br label %34

34:                                               ; preds = %26, %23
  %35 = phi i1 [ true, %23 ], [ %33, %26 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @VLC_VAR_CLASS, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @VLC_VAR_VOID, align 4
  %44 = icmp ne i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32*, i32** %8, align 8
  store i32 %49, i32* %50, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32 (i32*)*, i32 (i32*)** %54, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 %55(i32* %56)
  br label %60

58:                                               ; preds = %4
  %59 = load i32, i32* @VLC_ENOVAR, align 4
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %58, %34
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = call i32 @vlc_mutex_unlock(i32* %62)
  %64 = load i32, i32* %11, align 4
  ret i32 %64
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_7__* @vlc_internals(i32*) #1

declare dso_local %struct.TYPE_8__* @Lookup(i32*, i8*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

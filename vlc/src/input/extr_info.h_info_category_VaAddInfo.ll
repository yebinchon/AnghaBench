; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_info.h_info_category_VaAddInfo.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_info.h_info_category_VaAddInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32 }
%struct.TYPE_9__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_9__*, i8*, i8*, i32)* @info_category_VaAddInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @info_category_VaAddInfo(%struct.TYPE_9__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call %struct.TYPE_8__* @info_category_FindInfo(%struct.TYPE_9__* %11, i8* %12)
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %10, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %15 = icmp ne %struct.TYPE_8__* %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = call %struct.TYPE_8__* @info_New(i8* %17)
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %10, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %20 = icmp ne %struct.TYPE_8__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  br label %45

22:                                               ; preds = %16
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = call i32 @vlc_list_append(i32* %24, i32* %26)
  br label %33

28:                                               ; preds = %4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @free(i32* %31)
  br label %33

33:                                               ; preds = %28, %22
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @vasprintf(i32** %35, i8* %36, i32 %37)
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %40, %33
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %5, align 8
  br label %45

45:                                               ; preds = %43, %21
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  ret %struct.TYPE_8__* %46
}

declare dso_local %struct.TYPE_8__* @info_category_FindInfo(%struct.TYPE_9__*, i8*) #1

declare dso_local %struct.TYPE_8__* @info_New(i8*) #1

declare dso_local i32 @vlc_list_append(i32*, i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @vasprintf(i32**, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

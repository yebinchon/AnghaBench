; ModuleID = '/home/carl/AnghaBench/vlc/test/libvlc/extr_core.c_test_audio_output.c'
source_filename = "/home/carl/AnghaBench/vlc/test/libvlc/extr_core.c_test_audio_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i8*, i8*, %struct.TYPE_8__* }

@.str = private unnamed_addr constant [15 x i8] c"Audio outputs:\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" %s: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"  %s: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_audio_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_audio_output() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = call i32* @libvlc_new(i32 0, i32* null)
  store i32* %6, i32** %1, align 8
  %7 = load i32*, i32** %1, align 8
  %8 = icmp ne i32* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load i32*, i32** %1, align 8
  %12 = call %struct.TYPE_7__* @libvlc_audio_output_list_get(i32* %11)
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %2, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = icmp ne %struct.TYPE_7__* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = call i32 @puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %3, align 8
  br label %19

19:                                               ; preds = %58, %0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = icmp ne %struct.TYPE_7__* %20, null
  br i1 %21, label %22, label %62

22:                                               ; preds = %19
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %25, i8* %28)
  %30 = load i32*, i32** %1, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call %struct.TYPE_8__* @libvlc_audio_output_device_list_get(i32* %30, i8* %33)
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %4, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = icmp eq %struct.TYPE_8__* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %22
  br label %58

38:                                               ; preds = %22
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %5, align 8
  br label %40

40:                                               ; preds = %51, %38
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = icmp ne %struct.TYPE_8__* %41, null
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %46, i8* %49)
  br label %51

51:                                               ; preds = %43
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  store %struct.TYPE_8__* %54, %struct.TYPE_8__** %5, align 8
  br label %40

55:                                               ; preds = %40
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = call i32 @libvlc_audio_output_device_list_release(%struct.TYPE_8__* %56)
  br label %58

58:                                               ; preds = %55, %37
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  store %struct.TYPE_7__* %61, %struct.TYPE_7__** %3, align 8
  br label %19

62:                                               ; preds = %19
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %64 = call i32 @libvlc_audio_output_list_release(%struct.TYPE_7__* %63)
  %65 = load i32*, i32** %1, align 8
  %66 = call i32 @libvlc_release(i32* %65)
  ret void
}

declare dso_local i32* @libvlc_new(i32, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_7__* @libvlc_audio_output_list_get(i32*) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local %struct.TYPE_8__* @libvlc_audio_output_device_list_get(i32*, i8*) #1

declare dso_local i32 @libvlc_audio_output_device_list_release(%struct.TYPE_8__*) #1

declare dso_local i32 @libvlc_audio_output_list_release(%struct.TYPE_7__*) #1

declare dso_local i32 @libvlc_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

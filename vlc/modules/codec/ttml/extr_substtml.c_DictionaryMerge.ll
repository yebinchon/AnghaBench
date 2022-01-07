; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_substtml.c_DictionaryMerge.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_substtml.c_DictionaryMerge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_9__* }

@.str = private unnamed_addr constant [5 x i8] c"tts:\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ttp:\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"xml:space\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_8__*, i32)* @DictionaryMerge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DictionaryMerge(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %85, %3
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %88

15:                                               ; preds = %9
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %18, i64 %20
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %8, align 8
  br label %23

23:                                               ; preds = %80, %15
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %25 = icmp ne %struct.TYPE_9__* %24, null
  br i1 %25, label %26, label %84

26:                                               ; preds = %23
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %29, i32 4)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 4)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %79, label %44

44:                                               ; preds = %38, %32, %26
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @vlc_dictionary_has_key(%struct.TYPE_8__* %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %44
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %51
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @vlc_dictionary_remove_value_for_key(%struct.TYPE_8__* %55, i32 %58, i32* null, i32* null)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @vlc_dictionary_insert(%struct.TYPE_8__* %60, i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %54, %51
  br label %78

69:                                               ; preds = %44
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @vlc_dictionary_insert(%struct.TYPE_8__* %70, i32 %73, i32 %76)
  br label %78

78:                                               ; preds = %69, %68
  br label %79

79:                                               ; preds = %78, %38
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  store %struct.TYPE_9__* %83, %struct.TYPE_9__** %8, align 8
  br label %23

84:                                               ; preds = %23
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %9

88:                                               ; preds = %9
  ret void
}

declare dso_local i32 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i64 @vlc_dictionary_has_key(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @vlc_dictionary_remove_value_for_key(%struct.TYPE_8__*, i32, i32*, i32*) #1

declare dso_local i32 @vlc_dictionary_insert(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

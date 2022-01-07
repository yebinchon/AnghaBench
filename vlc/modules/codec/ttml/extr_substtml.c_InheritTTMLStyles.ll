; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_substtml.c_InheritTTMLStyles.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_substtml.c_InheritTTMLStyles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_4__* }

@.str = private unnamed_addr constant [6 x i8] c"style\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"region\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_4__*)* @InheritTTMLStyles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @InheritTTMLStyles(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = call i32 @assert(%struct.TYPE_4__* %9)
  store i32* null, i32** %5, align 8
  %11 = call i32 @vlc_dictionary_init(i32* %6, i32 0)
  br label %12

12:                                               ; preds = %41, %2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %45

15:                                               ; preds = %12
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = call i32 @DictionaryMerge(i32* %17, i32* %6, i32 0)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i64 @vlc_dictionary_value_for_key(i32* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %15
  %26 = load i32*, i32** %3, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @DictMergeWithStyleID(i32* %26, i8* %27, i32* %6)
  br label %29

29:                                               ; preds = %25, %15
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i64 @vlc_dictionary_value_for_key(i32* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %8, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32*, i32** %3, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @DictMergeWithRegionID(i32* %37, i8* %38, i32* %6)
  br label %40

40:                                               ; preds = %36, %29
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  store %struct.TYPE_4__* %44, %struct.TYPE_4__** %4, align 8
  br label %12

45:                                               ; preds = %12
  %46 = call i32 @vlc_dictionary_is_empty(i32* %6)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %45
  %49 = call i32* (...) @ttml_style_New()
  store i32* %49, i32** %5, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32*, i32** %3, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @DictToTTMLStyle(i32* %52, i32* %6, i32* %53)
  br label %55

55:                                               ; preds = %51, %48, %45
  %56 = call i32 @vlc_dictionary_clear(i32* %6, i32* null, i32* null)
  %57 = load i32*, i32** %5, align 8
  ret i32* %57
}

declare dso_local i32 @assert(%struct.TYPE_4__*) #1

declare dso_local i32 @vlc_dictionary_init(i32*, i32) #1

declare dso_local i32 @DictionaryMerge(i32*, i32*, i32) #1

declare dso_local i64 @vlc_dictionary_value_for_key(i32*, i8*) #1

declare dso_local i32 @DictMergeWithStyleID(i32*, i8*, i32*) #1

declare dso_local i32 @DictMergeWithRegionID(i32*, i8*, i32*) #1

declare dso_local i32 @vlc_dictionary_is_empty(i32*) #1

declare dso_local i32* @ttml_style_New(...) #1

declare dso_local i32 @DictToTTMLStyle(i32*, i32*, i32*) #1

declare dso_local i32 @vlc_dictionary_clear(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

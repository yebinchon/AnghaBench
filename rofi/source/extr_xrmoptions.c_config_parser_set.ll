; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_xrmoptions.c_config_parser_set.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_xrmoptions.c_config_parser_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i32*, i32*, i32*, i32** }

@.str = private unnamed_addr constant [5 x i8] c"true\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i8*, i32)* @config_parser_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_parser_set(%struct.TYPE_5__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %81 [
    i32 128, label %10
    i32 130, label %37
    i32 129, label %45
    i32 132, label %53
    i32 131, label %74
  ]

10:                                               ; preds = %3
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @g_free(i32* %18)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 3
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %15, %10
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @g_strdup(i8* %23)
  %25 = call i32* @g_strchomp(i32 %24)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  %29 = load i32**, i32*** %28, align 8
  store i32* %25, i32** %29, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  %33 = load i32**, i32*** %32, align 8
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 3
  store i32* %34, i32** %36, align 8
  br label %81

37:                                               ; preds = %3
  %38 = load i8*, i8** %5, align 8
  %39 = call i64 @g_ascii_strtoull(i8* %38, i32* null, i32 10)
  %40 = trunc i64 %39 to i32
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  store i32 %40, i32* %44, align 4
  br label %81

45:                                               ; preds = %3
  %46 = load i8*, i8** %5, align 8
  %47 = call i64 @g_ascii_strtoll(i8* %46, i32* null, i32 10)
  %48 = trunc i64 %47 to i32
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  store i32 %48, i32* %52, align 4
  br label %81

53:                                               ; preds = %3
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @strlen(i8* %54)
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @g_ascii_strcasecmp(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load i32, i32* @TRUE, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  store i32 %62, i32* %66, align 4
  br label %73

67:                                               ; preds = %57, %53
  %68 = load i32, i32* @FALSE, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  store i32 %68, i32* %72, align 4
  br label %73

73:                                               ; preds = %67, %61
  br label %81

74:                                               ; preds = %3
  %75 = load i8*, i8** %5, align 8
  %76 = call i32 @helper_parse_char(i8* %75)
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  store i32 %76, i32* %80, align 4
  br label %81

81:                                               ; preds = %3, %74, %73, %45, %37, %22
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  ret void
}

declare dso_local i32 @g_free(i32*) #1

declare dso_local i32* @g_strchomp(i32) #1

declare dso_local i32 @g_strdup(i8*) #1

declare dso_local i64 @g_ascii_strtoull(i8*, i32*, i32) #1

declare dso_local i64 @g_ascii_strtoll(i8*, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @g_ascii_strcasecmp(i8*, i8*) #1

declare dso_local i32 @helper_parse_char(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

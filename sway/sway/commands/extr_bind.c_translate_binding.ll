; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_bind.c_translate_binding.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_bind.c_translate_binding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_binding = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32** }
%struct.keycode_matches = type { i32, i32 }

@BINDING_CODE = common dso_local global i32 0, align 4
@SWAY_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Unable to convert keysym %d into a single keycode (found %d matches)\00", align 1
@SWAY_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Unable to allocate memory for a keycode\00", align 1
@key_qsort_cmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @translate_binding(%struct.sway_binding* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sway_binding*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.keycode_matches, align 4
  %7 = alloca i32*, align 8
  store %struct.sway_binding* %0, %struct.sway_binding** %3, align 8
  %8 = load %struct.sway_binding*, %struct.sway_binding** %3, align 8
  %9 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @BINDING_CODE, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %113

15:                                               ; preds = %1
  %16 = load %struct.sway_binding*, %struct.sway_binding** %3, align 8
  %17 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %38 [
    i32 128, label %19
    i32 129, label %29
  ]

19:                                               ; preds = %15
  %20 = load %struct.sway_binding*, %struct.sway_binding** %3, align 8
  %21 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %20, i32 0, i32 3
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load %struct.sway_binding*, %struct.sway_binding** %3, align 8
  %24 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %23, i32 0, i32 2
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %24, align 8
  %25 = call i8* (...) @create_list()
  %26 = bitcast i8* %25 to %struct.TYPE_4__*
  %27 = load %struct.sway_binding*, %struct.sway_binding** %3, align 8
  %28 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %27, i32 0, i32 3
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %28, align 8
  br label %39

29:                                               ; preds = %15
  %30 = load %struct.sway_binding*, %struct.sway_binding** %3, align 8
  %31 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %30, i32 0, i32 3
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = call i32 @list_free_items_and_destroy(%struct.TYPE_4__* %32)
  %34 = call i8* (...) @create_list()
  %35 = bitcast i8* %34 to %struct.TYPE_4__*
  %36 = load %struct.sway_binding*, %struct.sway_binding** %3, align 8
  %37 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %36, i32 0, i32 3
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %37, align 8
  br label %39

38:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %113

39:                                               ; preds = %29, %19
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %88, %39
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.sway_binding*, %struct.sway_binding** %3, align 8
  %43 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %41, %46
  br i1 %47, label %48, label %91

48:                                               ; preds = %40
  %49 = load %struct.sway_binding*, %struct.sway_binding** %3, align 8
  %50 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32**, i32*** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** %5, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @get_keycode_for_keysym(i32 %59)
  %61 = bitcast %struct.keycode_matches* %6 to i64*
  store i64 %60, i64* %61, align 4
  %62 = getelementptr inbounds %struct.keycode_matches, %struct.keycode_matches* %6, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 1
  br i1 %64, label %65, label %72

65:                                               ; preds = %48
  %66 = load i32, i32* @SWAY_INFO, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.keycode_matches, %struct.keycode_matches* %6, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i32, i8*, ...) @sway_log(i32 %66, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %70)
  br label %99

72:                                               ; preds = %48
  %73 = call i32* @malloc(i32 4)
  store i32* %73, i32** %7, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* @SWAY_ERROR, align 4
  %78 = call i32 (i32, i8*, ...) @sway_log(i32 %77, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %99

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.keycode_matches, %struct.keycode_matches* %6, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %7, align 8
  store i32 %81, i32* %82, align 4
  %83 = load %struct.sway_binding*, %struct.sway_binding** %3, align 8
  %84 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %83, i32 0, i32 3
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = call i32 @list_add(%struct.TYPE_4__* %85, i32* %86)
  br label %88

88:                                               ; preds = %79
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %4, align 4
  br label %40

91:                                               ; preds = %40
  %92 = load %struct.sway_binding*, %struct.sway_binding** %3, align 8
  %93 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %92, i32 0, i32 3
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load i32, i32* @key_qsort_cmp, align 4
  %96 = call i32 @list_qsort(%struct.TYPE_4__* %94, i32 %95)
  %97 = load %struct.sway_binding*, %struct.sway_binding** %3, align 8
  %98 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %97, i32 0, i32 1
  store i32 129, i32* %98, align 4
  store i32 1, i32* %2, align 4
  br label %113

99:                                               ; preds = %76, %65
  %100 = load %struct.sway_binding*, %struct.sway_binding** %3, align 8
  %101 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %100, i32 0, i32 3
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = call i32 @list_free_items_and_destroy(%struct.TYPE_4__* %102)
  %104 = load %struct.sway_binding*, %struct.sway_binding** %3, align 8
  %105 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %104, i32 0, i32 1
  store i32 128, i32* %105, align 4
  %106 = load %struct.sway_binding*, %struct.sway_binding** %3, align 8
  %107 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %106, i32 0, i32 2
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load %struct.sway_binding*, %struct.sway_binding** %3, align 8
  %110 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %109, i32 0, i32 3
  store %struct.TYPE_4__* %108, %struct.TYPE_4__** %110, align 8
  %111 = load %struct.sway_binding*, %struct.sway_binding** %3, align 8
  %112 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %111, i32 0, i32 2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %112, align 8
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %99, %91, %38, %14
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i8* @create_list(...) #1

declare dso_local i32 @list_free_items_and_destroy(%struct.TYPE_4__*) #1

declare dso_local i64 @get_keycode_for_keysym(i32) #1

declare dso_local i32 @sway_log(i32, i8*, ...) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @list_add(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @list_qsort(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

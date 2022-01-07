; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/test/api/extr_test-buffer.c_test_buffer_utf8_validity.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/test/api/extr_test-buffer.c_test_buffer_utf8_validity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64, i32 }
%struct.TYPE_7__ = type { i64, i64 }

@utf8_validity_tests = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"UTF-8 test #%d: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_buffer_utf8_validity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_buffer_utf8_validity() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = call i32* (...) @hb_buffer_create()
  store i32* %10, i32** %1, align 8
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 @hb_buffer_set_replacement_codepoint(i32* %11, i64 -1)
  store i32 0, i32* %2, align 4
  br label %13

13:                                               ; preds = %111, %0
  %14 = load i32, i32* %2, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @utf8_validity_tests, align 8
  %16 = call i32 @G_N_ELEMENTS(%struct.TYPE_6__* %15)
  %17 = icmp ult i32 %14, %16
  br i1 %17, label %18, label %114

18:                                               ; preds = %13
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @utf8_validity_tests, align 8
  %20 = load i32, i32* %2, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %21
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %3, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i8* @g_strescape(i32 %25, i32* null)
  store i8* %26, i8** %9, align 8
  %27 = load i32, i32* %2, align 4
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @g_test_message(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %27, i8* %28)
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @g_free(i8* %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @strlen(i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %42

40:                                               ; preds = %18
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %5, align 4
  br label %46

42:                                               ; preds = %18
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %42, %40
  %47 = load i32*, i32** %1, align 8
  %48 = call i32 @hb_buffer_clear_contents(i32* %47)
  %49 = load i32*, i32** %1, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @hb_buffer_add_utf8(i32* %49, i32 %52, i32 %53, i32 0, i32 %54)
  %56 = load i32*, i32** %1, align 8
  %57 = call %struct.TYPE_7__* @hb_buffer_get_glyph_infos(i32* %56, i32* %7)
  store %struct.TYPE_7__* %57, %struct.TYPE_7__** %8, align 8
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %72, %46
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %58
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %64 = load i32, i32* %6, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, -1
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %75

71:                                               ; preds = %62
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %6, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %58

75:                                               ; preds = %70, %58
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp eq i32 %81, %82
  %84 = zext i1 %83 to i32
  br label %90

85:                                               ; preds = %75
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ult i32 %86, %87
  %89 = zext i1 %88 to i32
  br label %90

90:                                               ; preds = %85, %80
  %91 = phi i32 [ %84, %80 ], [ %89, %85 ]
  %92 = call i32 @g_assert(i32 %91)
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %110, label %97

97:                                               ; preds = %90
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %99 = load i32, i32* %6, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %103, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @g_assert(i32 %108)
  br label %110

110:                                              ; preds = %97, %90
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %2, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %2, align 4
  br label %13

114:                                              ; preds = %13
  %115 = load i32*, i32** %1, align 8
  %116 = call i32 @hb_buffer_destroy(i32* %115)
  ret void
}

declare dso_local i32* @hb_buffer_create(...) #1

declare dso_local i32 @hb_buffer_set_replacement_codepoint(i32*, i64) #1

declare dso_local i32 @G_N_ELEMENTS(%struct.TYPE_6__*) #1

declare dso_local i8* @g_strescape(i32, i32*) #1

declare dso_local i32 @g_test_message(i8*, i32, i8*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @hb_buffer_clear_contents(i32*) #1

declare dso_local i32 @hb_buffer_add_utf8(i32*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_7__* @hb_buffer_get_glyph_infos(i32*, i32*) #1

declare dso_local i32 @g_assert(i32) #1

declare dso_local i32 @hb_buffer_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

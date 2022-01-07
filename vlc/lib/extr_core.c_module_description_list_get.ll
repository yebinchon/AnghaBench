; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_core.c_module_description_list_get.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_core.c_module_description_list_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [18 x i8] c"Not enough memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i32*, i8*)* @module_description_list_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @module_description_list_get(i32* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %8, align 8
  %17 = call i32** @module_list_get(i64* %9)
  store i32** %17, i32*** %10, align 8
  store i64 0, i64* %11, align 8
  br label %18

18:                                               ; preds = %107, %2
  %19 = load i64, i64* %11, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %110

22:                                               ; preds = %18
  %23 = load i32**, i32*** %10, align 8
  %24 = load i64, i64* %11, align 8
  %25 = getelementptr inbounds i32*, i32** %23, i64 %24
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %12, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @module_provides(i32* %27, i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  br label %107

32:                                               ; preds = %22
  %33 = call i64 @malloc(i32 40)
  %34 = inttoptr i64 %33 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %7, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %36 = icmp eq %struct.TYPE_4__* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = call i32 @libvlc_printerr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %40 = call i32 @libvlc_module_description_list_release(%struct.TYPE_4__* %39)
  %41 = load i32**, i32*** %10, align 8
  %42 = call i32 @module_list_free(i32** %41)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %116

43:                                               ; preds = %32
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %45 = icmp eq %struct.TYPE_4__* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %47, %struct.TYPE_4__** %6, align 8
  br label %48

48:                                               ; preds = %46, %43
  %49 = load i32*, i32** %12, align 8
  %50 = call i8* @module_get_object(i32* %49)
  store i8* %50, i8** %13, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = call i8* @module_get_name(i32* %51, i32 0)
  store i8* %52, i8** %14, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = call i8* @module_get_name(i32* %53, i32 1)
  store i8* %54, i8** %15, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = call i8* @module_get_help(i32* %55)
  store i8* %56, i8** %16, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %48
  %60 = load i8*, i8** %13, align 8
  %61 = call i32* @strdup(i8* %60)
  br label %63

62:                                               ; preds = %48
  br label %63

63:                                               ; preds = %62, %59
  %64 = phi i32* [ %61, %59 ], [ null, %62 ]
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 4
  store i32* %64, i32** %66, align 8
  %67 = load i8*, i8** %14, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i8*, i8** %14, align 8
  %71 = call i32* @strdup(i8* %70)
  br label %73

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %69
  %74 = phi i32* [ %71, %69 ], [ null, %72 ]
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  store i32* %74, i32** %76, align 8
  %77 = load i8*, i8** %15, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i8*, i8** %15, align 8
  %81 = call i32* @strdup(i8* %80)
  br label %83

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %82, %79
  %84 = phi i32* [ %81, %79 ], [ null, %82 ]
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  store i32* %84, i32** %86, align 8
  %87 = load i8*, i8** %16, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load i8*, i8** %16, align 8
  %91 = call i32* @strdup(i8* %90)
  br label %93

92:                                               ; preds = %83
  br label %93

93:                                               ; preds = %92, %89
  %94 = phi i32* [ %91, %89 ], [ null, %92 ]
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  store i32* %94, i32** %96, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %98, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %100 = icmp ne %struct.TYPE_4__* %99, null
  br i1 %100, label %101, label %105

101:                                              ; preds = %93
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  store %struct.TYPE_4__* %102, %struct.TYPE_4__** %104, align 8
  br label %105

105:                                              ; preds = %101, %93
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %106, %struct.TYPE_4__** %8, align 8
  br label %107

107:                                              ; preds = %105, %31
  %108 = load i64, i64* %11, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %11, align 8
  br label %18

110:                                              ; preds = %18
  %111 = load i32**, i32*** %10, align 8
  %112 = call i32 @module_list_free(i32** %111)
  %113 = load i32*, i32** %4, align 8
  %114 = call i32 @VLC_UNUSED(i32* %113)
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %115, %struct.TYPE_4__** %3, align 8
  br label %116

116:                                              ; preds = %110, %37
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %117
}

declare dso_local i32** @module_list_get(i64*) #1

declare dso_local i32 @module_provides(i32*, i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @libvlc_printerr(i8*) #1

declare dso_local i32 @libvlc_module_description_list_release(%struct.TYPE_4__*) #1

declare dso_local i32 @module_list_free(i32**) #1

declare dso_local i8* @module_get_object(i32*) #1

declare dso_local i8* @module_get_name(i32*, i32) #1

declare dso_local i8* @module_get_help(i32*) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @VLC_UNUSED(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

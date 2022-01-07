; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_ttml.c_tt_node_AttributesToText.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_ttml.c_tt_node_AttributesToText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_memstream = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i8*, i8*, %struct.TYPE_8__* }

@.str = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dur\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"timeContainer\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c" %s=\22\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c" begin=\22%s\22\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c" end=\22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vlc_memstream*, %struct.TYPE_9__*)* @tt_node_AttributesToText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tt_node_AttributesToText(%struct.vlc_memstream* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.vlc_memstream*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.vlc_memstream* %0, %struct.vlc_memstream** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %6, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %82, %2
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %85

20:                                               ; preds = %14
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %23, i64 %25
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %8, align 8
  br label %28

28:                                               ; preds = %77, %20
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %30 = icmp ne %struct.TYPE_8__* %29, null
  br i1 %30, label %31, label %81

31:                                               ; preds = %28
  store i8* null, i8** %9, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %31
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43, %37, %31
  store i32 1, i32* %5, align 4
  br label %77

50:                                               ; preds = %43
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  br label %77

57:                                               ; preds = %50
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %9, align 8
  br label %61

61:                                               ; preds = %57
  br label %62

62:                                               ; preds = %61
  %63 = load i8*, i8** %9, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %77

66:                                               ; preds = %62
  %67 = load %struct.vlc_memstream*, %struct.vlc_memstream** %3, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @vlc_memstream_printf(%struct.vlc_memstream* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %70)
  %72 = load %struct.vlc_memstream*, %struct.vlc_memstream** %3, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 @tt_MemstreamPutEntities(%struct.vlc_memstream* %72, i8* %73)
  %75 = load %struct.vlc_memstream*, %struct.vlc_memstream** %3, align 8
  %76 = call i32 @vlc_memstream_putc(%struct.vlc_memstream* %75, i8 signext 34)
  br label %77

77:                                               ; preds = %66, %65, %56, %49
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  store %struct.TYPE_8__* %80, %struct.TYPE_8__** %8, align 8
  br label %28

81:                                               ; preds = %28
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %14

85:                                               ; preds = %14
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %123

88:                                               ; preds = %85
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = call i64 @tt_time_Valid(i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %88
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @tt_genTiming(i32 %98)
  store i8* %99, i8** %10, align 8
  %100 = load %struct.vlc_memstream*, %struct.vlc_memstream** %3, align 8
  %101 = load i8*, i8** %10, align 8
  %102 = call i32 @vlc_memstream_printf(%struct.vlc_memstream* %100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %101)
  %103 = load i8*, i8** %10, align 8
  %104 = call i32 @free(i8* %103)
  br label %105

105:                                              ; preds = %94, %88
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = call i64 @tt_time_Valid(i32* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %105
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i8* @tt_genTiming(i32 %115)
  store i8* %116, i8** %11, align 8
  %117 = load %struct.vlc_memstream*, %struct.vlc_memstream** %3, align 8
  %118 = load i8*, i8** %11, align 8
  %119 = call i32 @vlc_memstream_printf(%struct.vlc_memstream* %117, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %118)
  %120 = load i8*, i8** %11, align 8
  %121 = call i32 @free(i8* %120)
  br label %122

122:                                              ; preds = %111, %105
  br label %123

123:                                              ; preds = %122, %85
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @vlc_memstream_printf(%struct.vlc_memstream*, i8*, i8*) #1

declare dso_local i32 @tt_MemstreamPutEntities(%struct.vlc_memstream*, i8*) #1

declare dso_local i32 @vlc_memstream_putc(%struct.vlc_memstream*, i8 signext) #1

declare dso_local i64 @tt_time_Valid(i32*) #1

declare dso_local i8* @tt_genTiming(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/extr_text_layout.c_AddRun.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/extr_text_layout.c_AddRun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32*, i32*, i32*, i32**, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [82 x i8] c"AddRun() invalid parameters. Paragraph size: %d, Start offset: %d, End offset: %d\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@HB_DIRECTION_LTR = common dso_local global i32 0, align 4
@HB_DIRECTION_RTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*, i32, i32, i32, i32*)* @AddRun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AddRun(i32* %0, %struct.TYPE_8__* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %39, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sge i32 %25, %28
  br i1 %29, label %39, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %11, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %34, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %33, %30, %24, %21, %6
  %40 = load i32*, i32** %8, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @msg_Err(i32* %40, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %47, i32* %7, align 4
  br label %150

48:                                               ; preds = %33
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %51, %54
  br i1 %55, label %56, label %93

56:                                               ; preds = %48
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 7
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = mul nsw i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 32
  %66 = trunc i64 %65 to i32
  %67 = call %struct.TYPE_7__* @realloc(%struct.TYPE_7__* %59, i32 %66)
  store %struct.TYPE_7__* %67, %struct.TYPE_7__** %14, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %69 = icmp ne %struct.TYPE_7__* %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %56
  %71 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %71, i32* %7, align 4
  br label %150

72:                                               ; preds = %56
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i64 %77
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 32
  %84 = trunc i64 %83 to i32
  %85 = call i32 @memset(%struct.TYPE_7__* %78, i32 0, i32 %84)
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 7
  store %struct.TYPE_7__* %86, %struct.TYPE_7__** %88, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = mul nsw i32 %91, 2
  store i32 %92, i32* %90, align 8
  br label %93

93:                                               ; preds = %72, %48
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %15, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 7
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i64 %104
  store %struct.TYPE_7__* %105, %struct.TYPE_7__** %16, align 8
  %106 = load i32, i32* %10, align 4
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* %11, align 4
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 5
  store i32 %112, i32* %114, align 8
  %115 = load i32*, i32** %13, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %93
  %118 = load i32*, i32** %13, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 4
  store i32* %118, i32** %120, align 8
  br label %131

121:                                              ; preds = %93
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 6
  %124 = load i32**, i32*** %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32*, i32** %124, i64 %126
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 4
  store i32* %128, i32** %130, align 8
  br label %131

131:                                              ; preds = %121, %117
  %132 = load i32, i32* %10, align 4
  store i32 %132, i32* %17, align 4
  br label %133

133:                                              ; preds = %145, %131
  %134 = load i32, i32* %17, align 4
  %135 = load i32, i32* %11, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %148

137:                                              ; preds = %133
  %138 = load i32, i32* %15, align 4
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 4
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %17, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  store i32 %138, i32* %144, align 4
  br label %145

145:                                              ; preds = %137
  %146 = load i32, i32* %17, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %17, align 4
  br label %133

148:                                              ; preds = %133
  %149 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %149, i32* %7, align 4
  br label %150

150:                                              ; preds = %148, %70, %39
  %151 = load i32, i32* %7, align 4
  ret i32 %151
}

declare dso_local i32 @msg_Err(i32*, i8*, i32, i32, i32) #1

declare dso_local %struct.TYPE_7__* @realloc(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

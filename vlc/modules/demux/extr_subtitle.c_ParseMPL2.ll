; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_subtitle.c_ParseMPL2.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_subtitle.c_ParseMPL2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8* }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"[%d][] %[^\0D\0A]\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"[%d][%d] %[^\0D\0A]\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, %struct.TYPE_3__*, i64)* @ParseMPL2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseMPL2(i32* %0, i32* %1, i32* %2, %struct.TYPE_3__* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = ptrtoint i32* %17 to i64
  %19 = call i32 @VLC_UNUSED(i64 %18)
  %20 = load i32*, i32** %8, align 8
  %21 = ptrtoint i32* %20 to i64
  %22 = call i32 @VLC_UNUSED(i64 %21)
  %23 = load i64, i64* %11, align 8
  %24 = call i32 @VLC_UNUSED(i64 %23)
  br label %25

25:                                               ; preds = %68, %5
  %26 = load i32*, i32** %9, align 8
  %27 = call i8* @TextGetLine(i32* %26)
  store i8* %27, i8** %14, align 8
  %28 = load i8*, i8** %14, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %31, i32* %6, align 4
  br label %140

32:                                               ; preds = %25
  %33 = load i8*, i8** %14, align 8
  %34 = call i64 @strlen(i8* %33)
  %35 = add nsw i64 %34, 1
  %36 = call i8* @malloc(i64 %35)
  store i8* %36, i8** %12, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %40, i32* %6, align 4
  br label %140

41:                                               ; preds = %32
  store i32 0, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  %42 = load i8*, i8** %14, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %15, i8* %43)
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load i8*, i8** %14, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %15, i32* %16, i8* %48)
  %50 = icmp eq i32 %49, 3
  br i1 %50, label %51, label %68

51:                                               ; preds = %46, %41
  %52 = load i32, i32* %15, align 4
  %53 = mul nsw i32 %52, 100
  %54 = call i32 @VLC_TICK_FROM_MS(i32 %53)
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %16, align 4
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load i32, i32* %16, align 4
  %61 = mul nsw i32 %60, 100
  %62 = call i32 @VLC_TICK_FROM_MS(i32 %61)
  br label %64

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %63, %59
  %65 = phi i32 [ %62, %59 ], [ -1, %63 ]
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %71

68:                                               ; preds = %46
  %69 = load i8*, i8** %12, align 8
  %70 = call i32 @free(i8* %69)
  br label %25

71:                                               ; preds = %64
  store i32 0, i32* %13, align 4
  br label %72

72:                                               ; preds = %134, %71
  %73 = load i8*, i8** %12, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %135

80:                                               ; preds = %72
  %81 = load i8*, i8** %12, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 124
  br i1 %87, label %88, label %93

88:                                               ; preds = %80
  %89 = load i8*, i8** %12, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  store i8 10, i8* %92, align 1
  br label %93

93:                                               ; preds = %88, %80
  %94 = load i8*, i8** %12, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 47
  br i1 %100, label %101, label %131

101:                                              ; preds = %93
  %102 = load i32, i32* %13, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %113, label %104

104:                                              ; preds = %101
  %105 = load i8*, i8** %12, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %105, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 10
  br i1 %112, label %113, label %131

113:                                              ; preds = %104, %101
  %114 = load i8*, i8** %12, align 8
  %115 = load i32, i32* %13, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = load i8*, i8** %12, align 8
  %119 = load i32, i32* %13, align 4
  %120 = add nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %118, i64 %121
  %123 = load i8*, i8** %12, align 8
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %123, i64 %126
  %128 = call i64 @strlen(i8* %127)
  %129 = add nsw i64 %128, 1
  %130 = call i32 @memmove(i8* %117, i8* %122, i64 %129)
  br label %134

131:                                              ; preds = %104, %93
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %13, align 4
  br label %134

134:                                              ; preds = %131, %113
  br label %72

135:                                              ; preds = %72
  %136 = load i8*, i8** %12, align 8
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 2
  store i8* %136, i8** %138, align 8
  %139 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %139, i32* %6, align 4
  br label %140

140:                                              ; preds = %135, %39, %30
  %141 = load i32, i32* %6, align 4
  ret i32 %141
}

declare dso_local i32 @VLC_UNUSED(i64) #1

declare dso_local i8* @TextGetLine(i32*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, ...) #1

declare dso_local i32 @VLC_TICK_FROM_MS(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

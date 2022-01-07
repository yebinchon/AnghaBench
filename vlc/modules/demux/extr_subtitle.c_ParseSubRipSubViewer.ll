; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_subtitle.c_ParseSubRipSubViewer.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_subtitle.c_ParseSubRipSubViewer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i8* }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"[br]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, %struct.TYPE_5__*, i32 (%struct.TYPE_5__*, i8*)*, i32)* @ParseSubRipSubViewer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseSubRipSubViewer(i32* %0, i32* %1, i32* %2, %struct.TYPE_5__* %3, i32 (%struct.TYPE_5__*, i8*)* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32 (%struct.TYPE_5__*, i8*)*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %11, align 8
  store i32 (%struct.TYPE_5__*, i8*)* %4, i32 (%struct.TYPE_5__*, i8*)** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @VLC_UNUSED(i32* %20)
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @VLC_UNUSED(i32* %22)
  br label %24

24:                                               ; preds = %47, %6
  %25 = load i32*, i32** %10, align 8
  %26 = call i8* @TextGetLine(i32* %25)
  store i8* %26, i8** %15, align 8
  %27 = load i8*, i8** %15, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %30, i32* %7, align 4
  br label %113

31:                                               ; preds = %24
  %32 = load i32 (%struct.TYPE_5__*, i8*)*, i32 (%struct.TYPE_5__*, i8*)** %12, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %34 = load i8*, i8** %15, align 8
  %35 = call i32 %32(%struct.TYPE_5__* %33, i8* %34)
  %36 = load i32, i32* @VLC_SUCCESS, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %31
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %48

47:                                               ; preds = %38, %31
  br label %24

48:                                               ; preds = %46
  %49 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %49, i8** %14, align 8
  %50 = load i8*, i8** %14, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %53, i32* %7, align 4
  br label %113

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %112, %54
  %56 = load i32*, i32** %10, align 8
  %57 = call i8* @TextGetLine(i32* %56)
  store i8* %57, i8** %16, align 8
  %58 = load i8*, i8** %16, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i8*, i8** %16, align 8
  %62 = call i64 @strlen(i8* %61)
  br label %64

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63, %60
  %65 = phi i64 [ %62, %60 ], [ 0, %63 ]
  store i64 %65, i64* %17, align 8
  %66 = load i64, i64* %17, align 8
  %67 = icmp ule i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i8*, i8** %14, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %72, i32* %7, align 4
  br label %113

73:                                               ; preds = %64
  %74 = load i8*, i8** %14, align 8
  %75 = call i64 @strlen(i8* %74)
  store i64 %75, i64* %18, align 8
  %76 = load i8*, i8** %14, align 8
  %77 = load i64, i64* %18, align 8
  %78 = load i64, i64* %17, align 8
  %79 = add i64 %77, %78
  %80 = add i64 %79, 1
  %81 = add i64 %80, 1
  %82 = call i8* @realloc_or_free(i8* %76, i64 %81)
  store i8* %82, i8** %14, align 8
  %83 = load i8*, i8** %14, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %73
  %86 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %86, i32* %7, align 4
  br label %113

87:                                               ; preds = %73
  %88 = load i8*, i8** %14, align 8
  %89 = load i8*, i8** %16, align 8
  %90 = call i32 @strcat(i8* %88, i8* %89)
  %91 = load i8*, i8** %14, align 8
  %92 = call i32 @strcat(i8* %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %112

95:                                               ; preds = %87
  br label %96

96:                                               ; preds = %100, %95
  %97 = load i8*, i8** %14, align 8
  %98 = call i8* @strstr(i8* %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %98, i8** %19, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %111

100:                                              ; preds = %96
  %101 = load i8*, i8** %19, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %19, align 8
  store i8 10, i8* %101, align 1
  %103 = load i8*, i8** %19, align 8
  %104 = load i8*, i8** %19, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 3
  %106 = load i8*, i8** %19, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 3
  %108 = call i64 @strlen(i8* %107)
  %109 = add i64 %108, 1
  %110 = call i32 @memmove(i8* %103, i8* %105, i64 %109)
  br label %96

111:                                              ; preds = %96
  br label %112

112:                                              ; preds = %111, %87
  br label %55

113:                                              ; preds = %85, %68, %52, %29
  %114 = load i32, i32* %7, align 4
  ret i32 %114
}

declare dso_local i32 @VLC_UNUSED(i32*) #1

declare dso_local i8* @TextGetLine(i32*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @realloc_or_free(i8*, i64) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

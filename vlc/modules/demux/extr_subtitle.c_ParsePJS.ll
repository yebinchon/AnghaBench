; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_subtitle.c_ParsePJS.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_subtitle.c_ParsePJS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8* }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%d,%d,\22%[^\0A\0D]\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, %struct.TYPE_3__*, i64)* @ParsePJS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParsePJS(i32* %0, i32* %1, i32* %2, %struct.TYPE_3__* %3, i64 %4) #0 {
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

25:                                               ; preds = %61, %5
  %26 = load i32*, i32** %9, align 8
  %27 = call i8* @TextGetLine(i32* %26)
  store i8* %27, i8** %14, align 8
  %28 = load i8*, i8** %14, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %31, i32* %6, align 4
  br label %98

32:                                               ; preds = %25
  %33 = load i8*, i8** %14, align 8
  %34 = call i32 @strlen(i8* %33)
  %35 = add nsw i32 %34, 1
  %36 = call i8* @malloc(i32 %35)
  store i8* %36, i8** %12, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %40, i32* %6, align 4
  br label %98

41:                                               ; preds = %32
  %42 = load i8*, i8** %14, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = call i32 @sscanf(i8* %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %15, i32* %16, i8* %43)
  %45 = icmp eq i32 %44, 3
  br i1 %45, label %46, label %61

46:                                               ; preds = %41
  %47 = load i32, i32* %15, align 4
  %48 = mul nsw i32 10, %47
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %16, align 4
  %52 = mul nsw i32 10, %51
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i8*, i8** %12, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %55, i64 %59
  store i8 0, i8* %60, align 1
  br label %64

61:                                               ; preds = %41
  %62 = load i8*, i8** %12, align 8
  %63 = call i32 @free(i8* %62)
  br label %25

64:                                               ; preds = %46
  store i32 0, i32* %13, align 4
  br label %65

65:                                               ; preds = %87, %64
  %66 = load i8*, i8** %12, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %65
  %74 = load i8*, i8** %12, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 124
  br i1 %80, label %81, label %86

81:                                               ; preds = %73
  %82 = load i8*, i8** %12, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  store i8 10, i8* %85, align 1
  br label %86

86:                                               ; preds = %81, %73
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %13, align 4
  br label %65

90:                                               ; preds = %65
  %91 = load i8*, i8** %12, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  store i8* %91, i8** %93, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = call i32 @msg_Dbg(i32* %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %95)
  %97 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %90, %39, %30
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i32 @VLC_UNUSED(i64) #1

declare dso_local i8* @TextGetLine(i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

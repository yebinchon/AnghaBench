; ModuleID = '/home/carl/AnghaBench/vlc/modules/text_renderer/extr_svg.c_svg_GetDocument.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/text_renderer/extr_svg.c_svg_GetDocument.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32*, i64 }

@.str = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@SVG_TEMPLATE_BODY_TOKEN_L = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [226 x i8] c"<?xml version='1.0' encoding='UTF-8' standalone='no'?><svg preserveAspectRatio='xMinYMin meet'><rect fill='none' width='100%%' height='100%%'></rect><text fill='white' font-family='sans-serif' font-size='32px'>%s</text></svg>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_4__*, i32, i32, i8*)* @svg_GetDocument to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @svg_GetDocument(%struct.TYPE_4__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @VLC_UNUSED(i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @VLC_UNUSED(i32 %17)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @SVG_TEMPLATE_BODY_TOKEN_L, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = call i64 (i8**, i8*, i8*, ...) @asprintf(i8** %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %27, i8* %28, i32* %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  store i8* null, i8** %10, align 8
  br label %37

37:                                               ; preds = %36, %23
  br label %45

38:                                               ; preds = %4
  store i8* getelementptr inbounds ([226 x i8], [226 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = call i64 (i8**, i8*, i8*, ...) @asprintf(i8** %10, i8* %39, i8* %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i8* null, i8** %10, align 8
  br label %44

44:                                               ; preds = %43, %38
  br label %45

45:                                               ; preds = %44, %37
  %46 = load i8*, i8** %10, align 8
  ret i8* %46
}

declare dso_local i32 @VLC_UNUSED(i32) #1

declare dso_local i64 @asprintf(i8**, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

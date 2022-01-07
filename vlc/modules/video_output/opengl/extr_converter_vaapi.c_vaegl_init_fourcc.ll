; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_converter_vaapi.c_vaegl_init_fourcc.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_converter_vaapi.c_vaegl_init_fourcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { i32, i8** }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.priv*, i32)* @vaegl_init_fourcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vaegl_init_fourcc(i32* %0, %struct.priv* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.priv*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.priv* %1, %struct.priv** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* %7, align 4
  switch i32 %9, label %32 [
    i32 132, label %10
    i32 131, label %21
  ]

10:                                               ; preds = %3
  %11 = call i8* @VLC_FOURCC(i8 signext 82, i8 signext 56, i8 signext 32, i8 signext 32)
  %12 = load %struct.priv*, %struct.priv** %6, align 8
  %13 = getelementptr inbounds %struct.priv, %struct.priv* %12, i32 0, i32 1
  %14 = load i8**, i8*** %13, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  store i8* %11, i8** %15, align 8
  %16 = call i8* @VLC_FOURCC(i8 signext 71, i8 signext 82, i8 signext 56, i8 signext 56)
  %17 = load %struct.priv*, %struct.priv** %6, align 8
  %18 = getelementptr inbounds %struct.priv, %struct.priv* %17, i32 0, i32 1
  %19 = load i8**, i8*** %18, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  store i8* %16, i8** %20, align 8
  br label %34

21:                                               ; preds = %3
  %22 = call i8* @VLC_FOURCC(i8 signext 82, i8 signext 49, i8 signext 54, i8 signext 32)
  %23 = load %struct.priv*, %struct.priv** %6, align 8
  %24 = getelementptr inbounds %struct.priv, %struct.priv* %23, i32 0, i32 1
  %25 = load i8**, i8*** %24, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  store i8* %22, i8** %26, align 8
  %27 = call i8* @VLC_FOURCC(i8 signext 71, i8 signext 82, i8 signext 51, i8 signext 50)
  %28 = load %struct.priv*, %struct.priv** %6, align 8
  %29 = getelementptr inbounds %struct.priv, %struct.priv* %28, i32 0, i32 1
  %30 = load i8**, i8*** %29, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  store i8* %27, i8** %31, align 8
  br label %34

32:                                               ; preds = %3
  %33 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %33, i32* %4, align 4
  br label %39

34:                                               ; preds = %21, %10
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.priv*, %struct.priv** %6, align 8
  %37 = getelementptr inbounds %struct.priv, %struct.priv* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %34, %32
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i8* @VLC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

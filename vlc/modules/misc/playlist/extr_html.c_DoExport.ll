; ModuleID = '/home/carl/AnghaBench/vlc/modules/misc/playlist/extr_html.c_DoExport.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/misc/playlist/extr_html.c_DoExport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_playlist_export = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"    <li>%s - %s (%02d:%02d)</li>\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"    <li>%s (%2d:%2d)</li>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vlc_playlist_export*)* @DoExport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DoExport(%struct.vlc_playlist_export* %0) #0 {
  %2 = alloca %struct.vlc_playlist_export*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vlc_playlist_export* %0, %struct.vlc_playlist_export** %2, align 8
  %13 = load %struct.vlc_playlist_export*, %struct.vlc_playlist_export** %2, align 8
  %14 = getelementptr inbounds %struct.vlc_playlist_export, %struct.vlc_playlist_export* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @vlc_playlist_view_Count(i32 %15)
  store i64 %16, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %17

17:                                               ; preds = %92, %1
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* %3, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %95

21:                                               ; preds = %17
  %22 = load %struct.vlc_playlist_export*, %struct.vlc_playlist_export** %2, align 8
  %23 = getelementptr inbounds %struct.vlc_playlist_export, %struct.vlc_playlist_export* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %4, align 8
  %26 = call i32* @vlc_playlist_view_Get(i32 %24, i64 %25)
  store i32* %26, i32** %5, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32* @vlc_playlist_item_GetMedia(i32* %27)
  store i32* %28, i32** %6, align 8
  store i8* null, i8** %7, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i8* @input_item_GetName(i32* %29)
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %21
  %34 = load i8*, i8** %8, align 8
  %35 = call i8* @vlc_xml_encode(i8* %34)
  store i8* %35, i8** %7, align 8
  br label %36

36:                                               ; preds = %33, %21
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @free(i8* %37)
  %39 = load i8*, i8** %7, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %89

41:                                               ; preds = %36
  store i8* null, i8** %9, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i8* @input_item_GetArtist(i32* %42)
  store i8* %43, i8** %8, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i8*, i8** %8, align 8
  %48 = call i8* @vlc_xml_encode(i8* %47)
  store i8* %48, i8** %9, align 8
  br label %49

49:                                               ; preds = %46, %41
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @free(i8* %50)
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @input_item_GetDuration(i32* %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @SEC_FROM_VLC_TICK(i32 %54)
  %56 = sdiv i32 %55, 60
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @SEC_FROM_VLC_TICK(i32 %57)
  %59 = load i32, i32* %11, align 4
  %60 = mul nsw i32 %59, 60
  %61 = sub nsw i32 %58, %60
  store i32 %61, i32* %12, align 4
  %62 = load i8*, i8** %9, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %78

64:                                               ; preds = %49
  %65 = load i8*, i8** %9, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load %struct.vlc_playlist_export*, %struct.vlc_playlist_export** %2, align 8
  %71 = getelementptr inbounds %struct.vlc_playlist_export, %struct.vlc_playlist_export* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i8*, i8** %9, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %73, i8* %74, i32 %75, i32 %76)
  br label %86

78:                                               ; preds = %64, %49
  %79 = load %struct.vlc_playlist_export*, %struct.vlc_playlist_export** %2, align 8
  %80 = getelementptr inbounds %struct.vlc_playlist_export, %struct.vlc_playlist_export* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i8*, i8** %7, align 8
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %12, align 4
  %85 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %81, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %78, %69
  %87 = load i8*, i8** %9, align 8
  %88 = call i32 @free(i8* %87)
  br label %89

89:                                               ; preds = %86, %36
  %90 = load i8*, i8** %7, align 8
  %91 = call i32 @free(i8* %90)
  br label %92

92:                                               ; preds = %89
  %93 = load i64, i64* %4, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %4, align 8
  br label %17

95:                                               ; preds = %17
  ret void
}

declare dso_local i64 @vlc_playlist_view_Count(i32) #1

declare dso_local i32* @vlc_playlist_view_Get(i32, i64) #1

declare dso_local i32* @vlc_playlist_item_GetMedia(i32*) #1

declare dso_local i8* @input_item_GetName(i32*) #1

declare dso_local i8* @vlc_xml_encode(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @input_item_GetArtist(i32*) #1

declare dso_local i32 @input_item_GetDuration(i32*) #1

declare dso_local i32 @SEC_FROM_VLC_TICK(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

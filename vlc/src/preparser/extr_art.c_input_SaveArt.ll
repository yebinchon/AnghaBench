; ModuleID = '/home/carl/AnghaBench/vlc/src/preparser/extr_art.c_input_SaveArt.c'
source_filename = "/home/carl/AnghaBench/vlc/src/preparser/extr_art.c_input_SaveArt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"album art saved to %s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"uid\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"md5\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"arturl\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"file://\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Error writing %s: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @input_SaveArt(i32* %0, i32* %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.stat, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = call i8* @ArtCacheName(i32* %19, i8* %20)
  store i8* %21, i8** %12, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %25, i32* %6, align 4
  br label %131

26:                                               ; preds = %5
  %27 = load i8*, i8** %12, align 8
  %28 = call i8* @vlc_path2uri(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %28, i8** %13, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load i8*, i8** %12, align 8
  %33 = call i32 @free(i8* %32)
  %34 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %34, i32* %6, align 4
  br label %131

35:                                               ; preds = %26
  %36 = load i8*, i8** %12, align 8
  %37 = call i32 @vlc_stat(i8* %36, %struct.stat* %14)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = load i32*, i32** %8, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = call i32 @input_item_SetArtURL(i32* %40, i8* %41)
  %43 = load i8*, i8** %12, align 8
  %44 = call i32 @free(i8* %43)
  %45 = load i8*, i8** %13, align 8
  %46 = call i32 @free(i8* %45)
  %47 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %47, i32* %6, align 4
  br label %131

48:                                               ; preds = %35
  %49 = load i8*, i8** %12, align 8
  %50 = call i32* @vlc_fopen(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %50, i32** %15, align 8
  %51 = load i32*, i32** %15, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %76

53:                                               ; preds = %48
  %54 = load i8*, i8** %9, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i32*, i32** %15, align 8
  %57 = call i64 @fwrite(i8* %54, i32 1, i64 %55, i32* %56)
  %58 = load i64, i64* %10, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load i32*, i32** %7, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = load i32, i32* @errno, align 4
  %64 = call i32 @vlc_strerror_c(i32 %63)
  %65 = call i32 @msg_Err(i32* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %62, i32 %64)
  br label %73

66:                                               ; preds = %53
  %67 = load i32*, i32** %7, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = call i32 @msg_Dbg(i32* %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %68)
  %70 = load i32*, i32** %8, align 8
  %71 = load i8*, i8** %13, align 8
  %72 = call i32 @input_item_SetArtURL(i32* %70, i8* %71)
  br label %73

73:                                               ; preds = %66, %60
  %74 = load i32*, i32** %15, align 8
  %75 = call i32 @fclose(i32* %74)
  br label %76

76:                                               ; preds = %73, %48
  %77 = load i8*, i8** %13, align 8
  %78 = call i32 @free(i8* %77)
  %79 = load i32*, i32** %8, align 8
  %80 = call i8* @input_item_GetInfo(i32* %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store i8* %80, i8** %16, align 8
  %81 = load i8*, i8** %16, align 8
  %82 = load i8, i8* %81, align 1
  %83 = icmp ne i8 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %76
  %85 = load i8*, i8** %16, align 8
  %86 = call i32 @free(i8* %85)
  br label %127

87:                                               ; preds = %76
  %88 = load i8*, i8** %16, align 8
  %89 = call i8* @GetDirByItemUIDs(i8* %88)
  store i8* %89, i8** %17, align 8
  %90 = load i8*, i8** %17, align 8
  %91 = call i8* @GetFileByItemUID(i8* %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  store i8* %91, i8** %18, align 8
  %92 = load i8*, i8** %17, align 8
  %93 = call i32 @ArtCacheCreateDir(i8* %92)
  %94 = load i8*, i8** %17, align 8
  %95 = call i32 @free(i8* %94)
  %96 = load i8*, i8** %18, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %124

98:                                               ; preds = %87
  %99 = load i8*, i8** %18, align 8
  %100 = call i32* @vlc_fopen(i8* %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %100, i32** %15, align 8
  %101 = load i32*, i32** %15, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %121

103:                                              ; preds = %98
  %104 = load i32*, i32** %15, align 8
  %105 = call i64 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32* %104)
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %103
  %108 = load i8*, i8** %12, align 8
  %109 = load i32*, i32** %15, align 8
  %110 = call i64 @fputs(i8* %108, i32* %109)
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %107, %103
  %113 = load i32*, i32** %7, align 8
  %114 = load i8*, i8** %18, align 8
  %115 = load i32, i32* @errno, align 4
  %116 = call i32 @vlc_strerror_c(i32 %115)
  %117 = call i32 @msg_Err(i32* %113, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* %114, i32 %116)
  br label %118

118:                                              ; preds = %112, %107
  %119 = load i32*, i32** %15, align 8
  %120 = call i32 @fclose(i32* %119)
  br label %121

121:                                              ; preds = %118, %98
  %122 = load i8*, i8** %18, align 8
  %123 = call i32 @free(i8* %122)
  br label %124

124:                                              ; preds = %121, %87
  %125 = load i8*, i8** %16, align 8
  %126 = call i32 @free(i8* %125)
  br label %127

127:                                              ; preds = %124, %84
  %128 = load i8*, i8** %12, align 8
  %129 = call i32 @free(i8* %128)
  %130 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %127, %39, %31, %24
  %132 = load i32, i32* %6, align 4
  ret i32 %132
}

declare dso_local i8* @ArtCacheName(i32*, i8*) #1

declare dso_local i8* @vlc_path2uri(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @vlc_stat(i8*, %struct.stat*) #1

declare dso_local i32 @input_item_SetArtURL(i32*, i8*) #1

declare dso_local i32* @vlc_fopen(i8*, i8*) #1

declare dso_local i64 @fwrite(i8*, i32, i64, i32*) #1

declare dso_local i32 @msg_Err(i32*, i8*, i8*, i32) #1

declare dso_local i32 @vlc_strerror_c(i32) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i8* @input_item_GetInfo(i32*, i8*, i8*) #1

declare dso_local i8* @GetDirByItemUIDs(i8*) #1

declare dso_local i8* @GetFileByItemUID(i8*, i8*) #1

declare dso_local i32 @ArtCacheCreateDir(i8*) #1

declare dso_local i64 @fputs(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

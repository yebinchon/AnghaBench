; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_video.c_get_filter_str.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_video.c_get_filter_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"Unable to find filter module \22%s\22.\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"video filter\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"video-filter\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"sub source\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"sub-source\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"sub filter\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"sub-filter\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Unknown video filter type.\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8**, i8**)* @get_filter_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_filter_str(i32* %0, i8* %1, i32 %2, i8** %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i8** %4, i8*** %11, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32* @module_find(i8* %16)
  store i32* %17, i32** %15, align 8
  %18 = load i32*, i32** %15, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %5
  %21 = load i32*, i32** %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 (i32*, i8*, ...) @msg_Err(i32* %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %24, i32* %6, align 4
  br label %145

25:                                               ; preds = %5
  %26 = load i32*, i32** %15, align 8
  %27 = call i64 @module_provides(i32* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %14, align 8
  br label %46

30:                                               ; preds = %25
  %31 = load i32*, i32** %15, align 8
  %32 = call i64 @module_provides(i32* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %14, align 8
  br label %45

35:                                               ; preds = %30
  %36 = load i32*, i32** %15, align 8
  %37 = call i64 @module_provides(i32* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8** %14, align 8
  br label %44

40:                                               ; preds = %35
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 (i32*, i8*, ...) @msg_Err(i32* %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %43 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %43, i32* %6, align 4
  br label %145

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44, %34
  br label %46

46:                                               ; preds = %45, %29
  %47 = load i32*, i32** %7, align 8
  %48 = load i8*, i8** %14, align 8
  %49 = call i8* @var_GetString(i32* %47, i8* %48)
  store i8* %49, i8** %13, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %46
  %53 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0))
  store i8* %53, i8** %13, align 8
  br label %54

54:                                               ; preds = %52, %46
  %55 = load i8*, i8** %13, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = call i8* @strstr(i8* %55, i8* %56)
  store i8* %57, i8** %12, align 8
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %87

60:                                               ; preds = %54
  %61 = load i8*, i8** %12, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %82, label %63

63:                                               ; preds = %60
  %64 = load i8*, i8** %13, align 8
  store i8* %64, i8** %12, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)
  %71 = load i8*, i8** %13, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = call i32 @asprintf(i8** %13, i8* %70, i8* %71, i8* %72)
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %79

75:                                               ; preds = %63
  %76 = load i8*, i8** %12, align 8
  %77 = call i32 @free(i8* %76)
  %78 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %78, i32* %6, align 4
  br label %145

79:                                               ; preds = %63
  %80 = load i8*, i8** %12, align 8
  %81 = call i32 @free(i8* %80)
  br label %86

82:                                               ; preds = %60
  %83 = load i8*, i8** %13, align 8
  %84 = call i32 @free(i8* %83)
  %85 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %85, i32* %6, align 4
  br label %145

86:                                               ; preds = %79
  br label %139

87:                                               ; preds = %54
  %88 = load i8*, i8** %12, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %134

90:                                               ; preds = %87
  %91 = load i8*, i8** %12, align 8
  %92 = load i8*, i8** %12, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = call i32 @strlen(i8* %93)
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %92, i64 %95
  %97 = load i8*, i8** %12, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = call i32 @strlen(i8* %98)
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 58
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i32 1, i32 0
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %96, i64 %107
  %109 = load i8*, i8** %12, align 8
  %110 = load i8*, i8** %8, align 8
  %111 = call i32 @strlen(i8* %110)
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %109, i64 %112
  %114 = call i32 @strlen(i8* %113)
  %115 = add nsw i32 %114, 1
  %116 = call i32 @memmove(i8* %91, i8* %108, i32 %115)
  %117 = load i8*, i8** %13, align 8
  %118 = load i8*, i8** %13, align 8
  %119 = call i32 @strlen(i8* %118)
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %117, i64 %120
  %122 = getelementptr inbounds i8, i8* %121, i64 -1
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 58
  br i1 %125, label %126, label %133

126:                                              ; preds = %90
  %127 = load i8*, i8** %13, align 8
  %128 = load i8*, i8** %13, align 8
  %129 = call i32 @strlen(i8* %128)
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %127, i64 %130
  %132 = getelementptr inbounds i8, i8* %131, i64 -1
  store i8 0, i8* %132, align 1
  br label %133

133:                                              ; preds = %126, %90
  br label %138

134:                                              ; preds = %87
  %135 = load i8*, i8** %13, align 8
  %136 = call i32 @free(i8* %135)
  %137 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %137, i32* %6, align 4
  br label %145

138:                                              ; preds = %133
  br label %139

139:                                              ; preds = %138, %86
  %140 = load i8*, i8** %14, align 8
  %141 = load i8**, i8*** %10, align 8
  store i8* %140, i8** %141, align 8
  %142 = load i8*, i8** %13, align 8
  %143 = load i8**, i8*** %11, align 8
  store i8* %142, i8** %143, align 8
  %144 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %144, i32* %6, align 4
  br label %145

145:                                              ; preds = %139, %134, %82, %75, %40, %20
  %146 = load i32, i32* %6, align 4
  ret i32 %146
}

declare dso_local i32* @module_find(i8*) #1

declare dso_local i32 @msg_Err(i32*, i8*, ...) #1

declare dso_local i64 @module_provides(i32*, i8*) #1

declare dso_local i8* @var_GetString(i32*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

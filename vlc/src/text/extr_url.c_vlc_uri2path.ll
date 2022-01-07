; ModuleID = '/home/carl/AnghaBench/vlc/src/text/extr_url.c_vlc_uri2path.c'
source_filename = "/home/carl/AnghaBench/vlc/src/text/extr_url.c_vlc_uri2path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"://\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"?#\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"localhost/\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"fd\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"/dev/stdin\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"/dev/stdout\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"/dev/stderr\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"/dev/fd/%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vlc_uri2path(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i8* @strstr(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %121

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = ptrtoint i8* %16 to i64
  %19 = ptrtoint i8* %17 to i64
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  %22 = call i8* @memchr(i8* %15, i8 signext 47, i32 %21)
  store i8* %22, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = load i8*, i8** %5, align 8
  br label %29

27:                                               ; preds = %14
  %28 = load i8*, i8** %6, align 8
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i8* [ %26, %25 ], [ %28, %27 ]
  %31 = load i8*, i8** %3, align 8
  %32 = ptrtoint i8* %30 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  store i64 %34, i64* %7, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 3
  store i8* %36, i8** %6, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @strcspn(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  store i8* %41, i8** %5, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  %49 = call i8* @strndup(i8* %42, i32 %48)
  store i8* %49, i8** %6, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = icmp eq i8* %50, null
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %29
  store i8* null, i8** %2, align 8
  br label %121

56:                                               ; preds = %29
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @vlc_uri_decode(i8* %57)
  %59 = load i64, i64* %7, align 8
  %60 = icmp eq i64 %59, 4
  br i1 %60, label %61, label %86

61:                                               ; preds = %56
  %62 = load i8*, i8** %3, align 8
  %63 = call i32 @strncasecmp(i8* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %86, label %65

65:                                               ; preds = %61
  %66 = load i8*, i8** %6, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 47
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i8*, i8** %6, align 8
  store i8* %71, i8** %2, align 8
  br label %121

72:                                               ; preds = %65
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @strncasecmp(i8* %73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 10)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %72
  %77 = load i8*, i8** %6, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 9
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 9
  %82 = call i64 @strlen(i8* %81)
  %83 = add nsw i64 %82, 1
  %84 = call i8* @memmove(i8* %77, i8* %79, i64 %83)
  store i8* %84, i8** %2, align 8
  br label %121

85:                                               ; preds = %72
  br label %116

86:                                               ; preds = %61, %56
  %87 = load i64, i64* %7, align 8
  %88 = icmp eq i64 %87, 2
  br i1 %88, label %89, label %115

89:                                               ; preds = %86
  %90 = load i8*, i8** %3, align 8
  %91 = call i32 @strncasecmp(i8* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 2)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %115, label %93

93:                                               ; preds = %89
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 @strtol(i8* %94, i8** %5, i32 0)
  store i32 %95, i32* %8, align 4
  %96 = load i8*, i8** %5, align 8
  %97 = load i8, i8* %96, align 1
  %98 = icmp ne i8 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %117

100:                                              ; preds = %93
  %101 = load i32, i32* %8, align 4
  switch i32 %101, label %108 [
    i32 0, label %102
    i32 1, label %104
    i32 2, label %106
  ]

102:                                              ; preds = %100
  %103 = call i8* @strdup(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  store i8* %103, i8** %4, align 8
  br label %114

104:                                              ; preds = %100
  %105 = call i8* @strdup(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  store i8* %105, i8** %4, align 8
  br label %114

106:                                              ; preds = %100
  %107 = call i8* @strdup(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  store i8* %107, i8** %4, align 8
  br label %114

108:                                              ; preds = %100
  %109 = load i32, i32* %8, align 4
  %110 = call i32 (i8**, i8*, ...) @asprintf(i8** %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %109)
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  store i8* null, i8** %4, align 8
  br label %113

113:                                              ; preds = %112, %108
  br label %114

114:                                              ; preds = %113, %106, %104, %102
  br label %115

115:                                              ; preds = %114, %89, %86
  br label %116

116:                                              ; preds = %115, %85
  br label %117

117:                                              ; preds = %116, %99
  %118 = load i8*, i8** %6, align 8
  %119 = call i32 @free(i8* %118)
  %120 = load i8*, i8** %4, align 8
  store i8* %120, i8** %2, align 8
  br label %121

121:                                              ; preds = %117, %76, %70, %55, %13
  %122 = load i8*, i8** %2, align 8
  ret i8* %122
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i8* @strndup(i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_uri_decode(i8*) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i8* @memmove(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

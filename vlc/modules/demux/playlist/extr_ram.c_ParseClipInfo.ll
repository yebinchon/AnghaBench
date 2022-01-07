; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_ram.c_ParseClipInfo.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_ram.c_ParseClipInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"artist name\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"album name\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"genre\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"year\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"cdnum\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"comments\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8**, i8**, i8**, i8**, i8**, i8**, i8**)* @ParseClipInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ParseClipInfo(i8* %0, i8** %1, i8** %2, i8** %3, i8** %4, i8** %5, i8** %6, i8** %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store i8* %0, i8** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i8** %2, i8*** %11, align 8
  store i8** %3, i8*** %12, align 8
  store i8** %4, i8*** %13, align 8
  store i8** %5, i8*** %14, align 8
  store i8** %6, i8*** %15, align 8
  store i8** %7, i8*** %16, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = call i8* @strdup(i8* %23)
  store i8* %24, i8** %22, align 8
  %25 = load i8*, i8** %22, align 8
  %26 = call i8* @strchr(i8* %25, i8 signext 34)
  store i8* %26, i8** %18, align 8
  %27 = load i8*, i8** %18, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %8
  %30 = load i8*, i8** %22, align 8
  %31 = call i32 @free(i8* %30)
  br label %150

32:                                               ; preds = %8
  %33 = load i8*, i8** %18, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %18, align 8
  %35 = load i8*, i8** %18, align 8
  store i8* %35, i8** %17, align 8
  br label %36

36:                                               ; preds = %32, %142
  %37 = load i8*, i8** %17, align 8
  store i8* %37, i8** %18, align 8
  %38 = load i8*, i8** %18, align 8
  %39 = call i8* @strchr(i8* %38, i8 signext 124)
  store i8* %39, i8** %17, align 8
  %40 = load i8*, i8** %17, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i8*, i8** %17, align 8
  store i8 0, i8* %43, align 1
  br label %47

44:                                               ; preds = %36
  %45 = load i8*, i8** %18, align 8
  %46 = call i8* @strchr(i8* %45, i8 signext 34)
  store i8* %46, i8** %17, align 8
  br label %47

47:                                               ; preds = %44, %42
  %48 = load i8*, i8** %17, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i8*, i8** %17, align 8
  store i8 0, i8* %51, align 1
  br label %55

52:                                               ; preds = %47
  %53 = load i8*, i8** %18, align 8
  %54 = call i8* @strchr(i8* %53, i8 signext 0)
  store i8* %54, i8** %17, align 8
  br label %55

55:                                               ; preds = %52, %50
  %56 = load i8*, i8** %17, align 8
  %57 = load i8*, i8** %18, align 8
  %58 = icmp eq i8* %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %147

60:                                               ; preds = %55
  %61 = load i8*, i8** %18, align 8
  %62 = call i8* @strdup(i8* %61)
  store i8* %62, i8** %21, align 8
  %63 = load i8*, i8** %21, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  br label %147

66:                                               ; preds = %60
  %67 = load i8*, i8** %21, align 8
  store i8* %67, i8** %19, align 8
  %68 = load i8*, i8** %21, align 8
  %69 = call i8* @strchr(i8* %68, i8 signext 61)
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load i8*, i8** %21, align 8
  %73 = call i8* @strchr(i8* %72, i8 signext 61)
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  store i8* %74, i8** %20, align 8
  %75 = load i8*, i8** %21, align 8
  %76 = call i8* @strchr(i8* %75, i8 signext 61)
  store i8 0, i8* %76, align 1
  br label %80

77:                                               ; preds = %66
  %78 = load i8*, i8** %21, align 8
  %79 = call i32 @free(i8* %78)
  br label %147

80:                                               ; preds = %71
  %81 = load i8*, i8** %19, align 8
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = load i8*, i8** %20, align 8
  %86 = call i8* @vlc_uri_decode_duplicate(i8* %85)
  %87 = load i8**, i8*** %10, align 8
  store i8* %86, i8** %87, align 8
  br label %142

88:                                               ; preds = %80
  %89 = load i8*, i8** %19, align 8
  %90 = call i32 @strcmp(i8* %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = load i8*, i8** %20, align 8
  %94 = call i8* @vlc_uri_decode_duplicate(i8* %93)
  %95 = load i8**, i8*** %11, align 8
  store i8* %94, i8** %95, align 8
  br label %141

96:                                               ; preds = %88
  %97 = load i8*, i8** %19, align 8
  %98 = call i32 @strcmp(i8* %97, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = load i8*, i8** %20, align 8
  %102 = call i8* @vlc_uri_decode_duplicate(i8* %101)
  %103 = load i8**, i8*** %12, align 8
  store i8* %102, i8** %103, align 8
  br label %140

104:                                              ; preds = %96
  %105 = load i8*, i8** %19, align 8
  %106 = call i32 @strcmp(i8* %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load i8*, i8** %20, align 8
  %110 = call i8* @vlc_uri_decode_duplicate(i8* %109)
  %111 = load i8**, i8*** %13, align 8
  store i8* %110, i8** %111, align 8
  br label %139

112:                                              ; preds = %104
  %113 = load i8*, i8** %19, align 8
  %114 = call i32 @strcmp(i8* %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  %117 = load i8*, i8** %20, align 8
  %118 = call i8* @vlc_uri_decode_duplicate(i8* %117)
  %119 = load i8**, i8*** %14, align 8
  store i8* %118, i8** %119, align 8
  br label %138

120:                                              ; preds = %112
  %121 = load i8*, i8** %19, align 8
  %122 = call i32 @strcmp(i8* %121, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = load i8*, i8** %20, align 8
  %126 = call i8* @vlc_uri_decode_duplicate(i8* %125)
  %127 = load i8**, i8*** %15, align 8
  store i8* %126, i8** %127, align 8
  br label %137

128:                                              ; preds = %120
  %129 = load i8*, i8** %19, align 8
  %130 = call i32 @strcmp(i8* %129, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %128
  %133 = load i8*, i8** %20, align 8
  %134 = call i8* @vlc_uri_decode_duplicate(i8* %133)
  %135 = load i8**, i8*** %16, align 8
  store i8* %134, i8** %135, align 8
  br label %136

136:                                              ; preds = %132, %128
  br label %137

137:                                              ; preds = %136, %124
  br label %138

138:                                              ; preds = %137, %116
  br label %139

139:                                              ; preds = %138, %108
  br label %140

140:                                              ; preds = %139, %100
  br label %141

141:                                              ; preds = %140, %92
  br label %142

142:                                              ; preds = %141, %84
  %143 = load i8*, i8** %21, align 8
  %144 = call i32 @free(i8* %143)
  %145 = load i8*, i8** %17, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %17, align 8
  br label %36

147:                                              ; preds = %77, %65, %59
  %148 = load i8*, i8** %22, align 8
  %149 = call i32 @free(i8* %148)
  br label %150

150:                                              ; preds = %147, %29
  ret void
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @vlc_uri_decode_duplicate(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

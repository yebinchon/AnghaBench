; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_subsusf.c_StripTags.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_subsusf.c_StripTags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"<br/>\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"&quot;\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @StripTags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @StripTags(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @strlen(i8* %7)
  %9 = add nsw i64 %8, 1
  %10 = call i8* @malloc(i64 %9)
  store i8* %10, i8** %4, align 8
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %141

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %116, %14
  %16 = load i8*, i8** %3, align 8
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %19, label %119

19:                                               ; preds = %15
  %20 = load i8*, i8** %3, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 10
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i8*, i8** %3, align 8
  store i8 32, i8* %25, align 1
  br label %26

26:                                               ; preds = %24, %19
  %27 = load i8*, i8** %3, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 60
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = load i8*, i8** %3, align 8
  %33 = call i64 @strncasecmp(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %5, align 8
  store i8 10, i8* %36, align 1
  br label %38

38:                                               ; preds = %35, %31
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @strcspn(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i8*, i8** %3, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8* %43, i8** %3, align 8
  br label %110

44:                                               ; preds = %26
  %45 = load i8*, i8** %3, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 38
  br i1 %48, label %49, label %104

49:                                               ; preds = %44
  %50 = load i8*, i8** %3, align 8
  %51 = call i64 @strncasecmp(i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %49
  %54 = load i8*, i8** %5, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %5, align 8
  store i8 60, i8* %54, align 1
  %56 = load i8*, i8** %3, align 8
  %57 = call i32 @strcspn(i8* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %58 = load i8*, i8** %3, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8* %60, i8** %3, align 8
  br label %103

61:                                               ; preds = %49
  %62 = load i8*, i8** %3, align 8
  %63 = call i64 @strncasecmp(i8* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %61
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %5, align 8
  store i8 62, i8* %66, align 1
  %68 = load i8*, i8** %3, align 8
  %69 = call i32 @strcspn(i8* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i8*, i8** %3, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8* %72, i8** %3, align 8
  br label %102

73:                                               ; preds = %61
  %74 = load i8*, i8** %3, align 8
  %75 = call i64 @strncasecmp(i8* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 5)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %73
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %5, align 8
  store i8 38, i8* %78, align 1
  %80 = load i8*, i8** %3, align 8
  %81 = call i32 @strcspn(i8* %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i8*, i8** %3, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8* %84, i8** %3, align 8
  br label %101

85:                                               ; preds = %73
  %86 = load i8*, i8** %3, align 8
  %87 = call i64 @strncasecmp(i8* %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 6)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %85
  %90 = load i8*, i8** %5, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %5, align 8
  store i8 34, i8* %90, align 1
  %92 = load i8*, i8** %3, align 8
  %93 = call i32 @strcspn(i8* %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %94 = load i8*, i8** %3, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  store i8* %96, i8** %3, align 8
  br label %100

97:                                               ; preds = %85
  %98 = load i8*, i8** %5, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %5, align 8
  store i8 38, i8* %98, align 1
  br label %100

100:                                              ; preds = %97, %89
  br label %101

101:                                              ; preds = %100, %77
  br label %102

102:                                              ; preds = %101, %65
  br label %103

103:                                              ; preds = %102, %53
  br label %109

104:                                              ; preds = %44
  %105 = load i8*, i8** %3, align 8
  %106 = load i8, i8* %105, align 1
  %107 = load i8*, i8** %5, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %5, align 8
  store i8 %106, i8* %107, align 1
  br label %109

109:                                              ; preds = %104, %103
  br label %110

110:                                              ; preds = %109, %38
  %111 = load i8*, i8** %3, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  br label %119

116:                                              ; preds = %110
  %117 = load i8*, i8** %3, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %3, align 8
  br label %15

119:                                              ; preds = %115, %15
  %120 = load i8*, i8** %5, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %5, align 8
  store i8 0, i8* %120, align 1
  %122 = load i8*, i8** %4, align 8
  %123 = load i8*, i8** %5, align 8
  %124 = load i8*, i8** %4, align 8
  %125 = ptrtoint i8* %123 to i64
  %126 = ptrtoint i8* %124 to i64
  %127 = sub i64 %125, %126
  %128 = trunc i64 %127 to i32
  %129 = call i8* @realloc(i8* %122, i32 %128)
  store i8* %129, i8** %6, align 8
  %130 = load i8*, i8** %6, align 8
  %131 = icmp ne i8* %130, null
  %132 = zext i1 %131 to i32
  %133 = call i64 @likely(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %119
  %136 = load i8*, i8** %6, align 8
  br label %139

137:                                              ; preds = %119
  %138 = load i8*, i8** %4, align 8
  br label %139

139:                                              ; preds = %137, %135
  %140 = phi i8* [ %136, %135 ], [ %138, %137 ]
  store i8* %140, i8** %2, align 8
  br label %141

141:                                              ; preds = %139, %13
  %142 = load i8*, i8** %2, align 8
  ret i8* %142
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

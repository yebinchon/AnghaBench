; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_httpcookies.c_cookie_parse.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_httpcookies.c_cookie_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i32, i32*, i32*, i32* }

@.str = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"secure\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i8*, i8*, i8*)* @cookie_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @cookie_parse(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = call %struct.TYPE_5__* @malloc(i32 40)
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %8, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %13 = icmp eq %struct.TYPE_5__* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %149

18:                                               ; preds = %3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 4
  store i32* null, i32** %20, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 3
  store i32* null, i32** %22, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @strcspn(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %24, i64* %9, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i8* @memchr(i8* %25, i8 signext 61, i64 %26)
  store i8* %27, i8** %10, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %63

30:                                               ; preds = %18
  %31 = load i8*, i8** %5, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = call i8* @strndup(i8* %31, i64 %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %10, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = sub i64 %43, %48
  %50 = call i8* @strndup(i8* %42, i64 %49)
  %51 = bitcast i8* %50 to i32*
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 5
  store i32* %51, i32** %53, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 5
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %30
  br label %146

62:                                               ; preds = %30
  br label %71

63:                                               ; preds = %18
  %64 = load i8*, i8** %5, align 8
  %65 = load i64, i64* %9, align 8
  %66 = call i8* @strndup(i8* %64, i64 %65)
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 5
  store i32* null, i32** %70, align 8
  br label %71

71:                                               ; preds = %63, %62
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = icmp eq i8* %74, null
  %76 = zext i1 %75 to i32
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %146

80:                                               ; preds = %71
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %146

89:                                               ; preds = %80
  %90 = load i8*, i8** %5, align 8
  %91 = call i32* @cookie_get_domain(i8* %90)
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 4
  store i32* %91, i32** %93, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 4
  %96 = load i32*, i32** %95, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %114

98:                                               ; preds = %89
  %99 = load i8*, i8** %6, align 8
  %100 = call i32* @strdup(i8* %99)
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 4
  store i32* %100, i32** %102, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 4
  %105 = load i32*, i32** %104, align 8
  %106 = icmp eq i32* %105, null
  %107 = zext i1 %106 to i32
  %108 = call i64 @unlikely(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %98
  br label %146

111:                                              ; preds = %98
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  store i32 1, i32* %113, align 8
  br label %117

114:                                              ; preds = %89
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  store i32 0, i32* %116, align 8
  br label %117

117:                                              ; preds = %114, %111
  %118 = load i8*, i8** %5, align 8
  %119 = call i32* @cookie_get_path(i8* %118)
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 3
  store i32* %119, i32** %121, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %126, label %140

126:                                              ; preds = %117
  %127 = load i8*, i8** %7, align 8
  %128 = call i32* @cookie_default_path(i8* %127)
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 3
  store i32* %128, i32** %130, align 8
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 3
  %133 = load i32*, i32** %132, align 8
  %134 = icmp eq i32* %133, null
  %135 = zext i1 %134 to i32
  %136 = call i64 @unlikely(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %126
  br label %146

139:                                              ; preds = %126
  br label %140

140:                                              ; preds = %139, %117
  %141 = load i8*, i8** %5, align 8
  %142 = call i32 @cookie_has_attribute(i8* %141, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 4
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %145, %struct.TYPE_5__** %4, align 8
  br label %149

146:                                              ; preds = %138, %110, %88, %79, %61
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %148 = call i32 @cookie_destroy(%struct.TYPE_5__* %147)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %149

149:                                              ; preds = %146, %140, %17
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %150
}

declare dso_local %struct.TYPE_5__* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

declare dso_local i8* @strndup(i8*, i64) #1

declare dso_local i32* @cookie_get_domain(i8*) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32* @cookie_get_path(i8*) #1

declare dso_local i32* @cookie_default_path(i8*) #1

declare dso_local i32 @cookie_has_attribute(i8*, i8*) #1

declare dso_local i32 @cookie_destroy(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

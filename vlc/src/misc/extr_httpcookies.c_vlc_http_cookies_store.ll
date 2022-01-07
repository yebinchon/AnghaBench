; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_httpcookies.c_vlc_http_cookies_store.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_httpcookies.c_vlc_http_cookies_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_http_cookies_store(%struct.TYPE_9__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i8*, i8** %9, align 8
  %22 = icmp ne i8* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i8*, i8** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = call %struct.TYPE_10__* @cookie_parse(i8* %25, i8* %26, i8* %27)
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %10, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %30 = icmp eq %struct.TYPE_10__* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %136

32:                                               ; preds = %4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32* @strchr(i32 %35, i8 signext 46)
  %37 = icmp eq i32* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @cookie_domain_matches(%struct.TYPE_10__* %39, i8* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38, %32
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %45 = call i32 @cookie_destroy(%struct.TYPE_10__* %44)
  store i32 0, i32* %5, align 4
  br label %136

46:                                               ; preds = %38
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = call i32 @vlc_mutex_lock(i32* %48)
  store i64 0, i64* %11, align 8
  br label %50

50:                                               ; preds = %116, %46
  %51 = load i64, i64* %11, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = call i64 @vlc_array_count(i32* %53)
  %55 = icmp ult i64 %51, %54
  br i1 %55, label %56, label %119

56:                                               ; preds = %50
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i64, i64* %11, align 8
  %60 = call %struct.TYPE_10__* @vlc_array_item_at_index(i32* %58, i64 %59)
  store %struct.TYPE_10__* %60, %struct.TYPE_10__** %12, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @assert(i32 %63)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @assert(i32 %67)
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @assert(i32 %71)
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @vlc_ascii_strcasecmp(i32 %75, i32 %78)
  %80 = icmp eq i64 %79, 0
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %13, align 4
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @strcmp(i32 %84, i32 %87)
  %89 = icmp eq i64 %88, 0
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %14, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @strcmp(i32 %93, i32 %96)
  %98 = icmp eq i64 %97, 0
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %15, align 4
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %56
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %102
  %106 = load i32, i32* %15, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %105
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = load i64, i64* %11, align 8
  %112 = call i32 @vlc_array_remove(i32* %110, i64 %111)
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %114 = call i32 @cookie_destroy(%struct.TYPE_10__* %113)
  br label %119

115:                                              ; preds = %105, %102, %56
  br label %116

116:                                              ; preds = %115
  %117 = load i64, i64* %11, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %11, align 8
  br label %50

119:                                              ; preds = %108, %50
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %123 = call i64 @vlc_array_append(i32* %121, %struct.TYPE_10__* %122)
  %124 = icmp eq i64 %123, 0
  %125 = zext i1 %124 to i32
  store i32 %125, i32* %16, align 4
  %126 = load i32, i32* %16, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %119
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %130 = call i32 @cookie_destroy(%struct.TYPE_10__* %129)
  br label %131

131:                                              ; preds = %128, %119
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = call i32 @vlc_mutex_unlock(i32* %133)
  %135 = load i32, i32* %16, align 4
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %131, %43, %31
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_10__* @cookie_parse(i8*, i8*, i8*) #1

declare dso_local i32* @strchr(i32, i8 signext) #1

declare dso_local i32 @cookie_domain_matches(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @cookie_destroy(%struct.TYPE_10__*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i64 @vlc_array_count(i32*) #1

declare dso_local %struct.TYPE_10__* @vlc_array_item_at_index(i32*, i64) #1

declare dso_local i64 @vlc_ascii_strcasecmp(i32, i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @vlc_array_remove(i32*, i64) #1

declare dso_local i64 @vlc_array_append(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

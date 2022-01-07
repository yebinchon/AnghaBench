; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_httpcookies.c_vlc_http_cookies_fetch.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_httpcookies.c_vlc_http_cookies_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"%s%s%s=%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"; \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vlc_http_cookies_fetch(%struct.TYPE_6__* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = call i32 @vlc_mutex_lock(i32* %15)
  store i64 0, i64* %11, align 8
  br label %17

17:                                               ; preds = %81, %4
  %18 = load i64, i64* %11, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = call i64 @vlc_array_count(i32* %20)
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %23, label %84

23:                                               ; preds = %17
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i64, i64* %11, align 8
  %27 = call %struct.TYPE_7__* @vlc_array_item_at_index(i32* %25, i64 %26)
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %12, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call i64 @cookie_should_be_sent(%struct.TYPE_7__* %28, i32 %29, i8* %30, i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %80

34:                                               ; preds = %23
  store i8* null, i8** %13, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i8*, i8** %10, align 8
  br label %40

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i8* [ %38, %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %39 ]
  %42 = load i8*, i8** %10, align 8
  %43 = icmp ne i8* %42, null
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %40
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  br label %55

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %54, %50
  %56 = phi i8* [ %53, %50 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %54 ]
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  br label %66

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65, %61
  %67 = phi i8* [ %64, %61 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %65 ]
  %68 = call i32 @asprintf(i8** %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %41, i8* %45, i8* %56, i8* %67)
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load i8*, i8** %10, align 8
  %72 = call i32 @free(i8* %71)
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = call i32 @vlc_mutex_unlock(i32* %74)
  store i8* null, i8** %5, align 8
  br label %89

76:                                               ; preds = %66
  %77 = load i8*, i8** %10, align 8
  %78 = call i32 @free(i8* %77)
  %79 = load i8*, i8** %13, align 8
  store i8* %79, i8** %10, align 8
  br label %80

80:                                               ; preds = %76, %23
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %11, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %11, align 8
  br label %17

84:                                               ; preds = %17
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = call i32 @vlc_mutex_unlock(i32* %86)
  %88 = load i8*, i8** %10, align 8
  store i8* %88, i8** %5, align 8
  br label %89

89:                                               ; preds = %84, %70
  %90 = load i8*, i8** %5, align 8
  ret i8* %90
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i64 @vlc_array_count(i32*) #1

declare dso_local %struct.TYPE_7__* @vlc_array_item_at_index(i32*, i64) #1

declare dso_local i64 @cookie_should_be_sent(%struct.TYPE_7__*, i32, i8*, i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_resource.c_vlc_http_res_set_login.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_resource.c_vlc_http_res_set_login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_resource = type { i8*, i8*, i32* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_http_res_set_login(%struct.vlc_http_resource* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vlc_http_resource*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.vlc_http_resource* %0, %struct.vlc_http_resource** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %39

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = call i8* @strdup(i8* %13)
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = icmp eq i8* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 -1, i32* %4, align 4
  br label %72

21:                                               ; preds = %12
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i8*, i8** %7, align 8
  br label %27

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i8* [ %25, %24 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %26 ]
  %29 = call i8* @strdup(i8* %28)
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = icmp eq i8* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @free(i8* %36)
  store i32 -1, i32* %4, align 4
  br label %72

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38, %3
  %40 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %5, align 8
  %41 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @free(i8* %42)
  %44 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %5, align 8
  %45 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @free(i8* %46)
  %48 = load i8*, i8** %8, align 8
  %49 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %5, align 8
  %50 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %5, align 8
  %53 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  %54 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %5, align 8
  %55 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %71

58:                                               ; preds = %39
  %59 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %5, align 8
  %60 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @vlc_http_msg_get_status(i32* %61)
  %63 = icmp eq i32 %62, 401
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %5, align 8
  %66 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @vlc_http_msg_destroy(i32* %67)
  %69 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %5, align 8
  %70 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %69, i32 0, i32 2
  store i32* null, i32** %70, align 8
  br label %71

71:                                               ; preds = %64, %58, %39
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %35, %20
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @vlc_http_msg_get_status(i32*) #1

declare dso_local i32 @vlc_http_msg_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

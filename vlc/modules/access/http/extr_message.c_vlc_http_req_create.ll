; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_message.c_vlc_http_req_create.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_message.c_vlc_http_req_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_msg = type { i32, i32*, i32*, i32*, i32*, i32*, i32*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vlc_http_msg* @vlc_http_req_create(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.vlc_http_msg*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.vlc_http_msg*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = call %struct.vlc_http_msg* @malloc(i32 64)
  store %struct.vlc_http_msg* %11, %struct.vlc_http_msg** %10, align 8
  %12 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %10, align 8
  %13 = icmp eq %struct.vlc_http_msg* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store %struct.vlc_http_msg* null, %struct.vlc_http_msg** %5, align 8
  br label %105

18:                                               ; preds = %4
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %10, align 8
  %24 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %23, i32 0, i32 0
  store i32 -1, i32* %24, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i32* @strdup(i8* %25)
  %27 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %10, align 8
  %28 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %27, i32 0, i32 4
  store i32* %26, i32** %28, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %18
  %32 = load i8*, i8** %7, align 8
  %33 = call i32* @strdup(i8* %32)
  br label %35

34:                                               ; preds = %18
  br label %35

35:                                               ; preds = %34, %31
  %36 = phi i32* [ %33, %31 ], [ null, %34 ]
  %37 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %10, align 8
  %38 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %37, i32 0, i32 3
  store i32* %36, i32** %38, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i8*, i8** %8, align 8
  %43 = call i32* @strdup(i8* %42)
  br label %45

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %41
  %46 = phi i32* [ %43, %41 ], [ null, %44 ]
  %47 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %10, align 8
  %48 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %47, i32 0, i32 2
  store i32* %46, i32** %48, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i8*, i8** %9, align 8
  %53 = call i32* @strdup(i8* %52)
  br label %55

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %51
  %56 = phi i32* [ %53, %51 ], [ null, %54 ]
  %57 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %10, align 8
  %58 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %57, i32 0, i32 1
  store i32* %56, i32** %58, align 8
  %59 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %10, align 8
  %60 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %59, i32 0, i32 7
  store i64 0, i64* %60, align 8
  %61 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %10, align 8
  %62 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %61, i32 0, i32 6
  store i32* null, i32** %62, align 8
  %63 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %10, align 8
  %64 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %63, i32 0, i32 5
  store i32* null, i32** %64, align 8
  %65 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %10, align 8
  %66 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %65, i32 0, i32 4
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %95, label %69

69:                                               ; preds = %55
  %70 = load i8*, i8** %7, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %10, align 8
  %74 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %95, label %77

77:                                               ; preds = %72, %69
  %78 = load i8*, i8** %8, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %10, align 8
  %82 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %95, label %85

85:                                               ; preds = %80, %77
  %86 = load i8*, i8** %9, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %10, align 8
  %90 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = icmp eq i32* %91, null
  br label %93

93:                                               ; preds = %88, %85
  %94 = phi i1 [ false, %85 ], [ %92, %88 ]
  br label %95

95:                                               ; preds = %93, %80, %72, %55
  %96 = phi i1 [ true, %80 ], [ true, %72 ], [ true, %55 ], [ %94, %93 ]
  %97 = zext i1 %96 to i32
  %98 = call i64 @unlikely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %10, align 8
  %102 = call i32 @vlc_http_msg_destroy(%struct.vlc_http_msg* %101)
  store %struct.vlc_http_msg* null, %struct.vlc_http_msg** %10, align 8
  br label %103

103:                                              ; preds = %100, %95
  %104 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %10, align 8
  store %struct.vlc_http_msg* %104, %struct.vlc_http_msg** %5, align 8
  br label %105

105:                                              ; preds = %103, %17
  %106 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  ret %struct.vlc_http_msg* %106
}

declare dso_local %struct.vlc_http_msg* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @vlc_http_msg_destroy(%struct.vlc_http_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

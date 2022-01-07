; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_resource.c_vlc_http_res_get_redirect.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_resource.c_vlc_http_res_get_redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_resource = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"Pragma\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"features\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"mmsh://%s%s\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Icy-Name\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Icy-Genre\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"icyx://%s%s\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"http%s://%s%s\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"#\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vlc_http_res_get_redirect(%struct.vlc_http_resource* noalias %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vlc_http_resource*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.vlc_http_resource* %0, %struct.vlc_http_resource** %3, align 8
  %12 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %3, align 8
  %13 = call i32 @vlc_http_res_get_status(%struct.vlc_http_resource* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %149

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = sdiv i32 %18, 100
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %76

21:                                               ; preds = %17
  %22 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %3, align 8
  %23 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %76, label %26

26:                                               ; preds = %21
  %27 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %3, align 8
  %28 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i8* @vlc_http_msg_get_header(i32 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %30, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %50

33:                                               ; preds = %26
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @vlc_ascii_strcasecmp(i8* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %33
  %38 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %3, align 8
  %39 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %3, align 8
  %44 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i8**, i8*, i8*, i32, ...) @asprintf(i8** %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %42, i32 %45)
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i8*, i8** %5, align 8
  store i8* %49, i8** %2, align 8
  br label %149

50:                                               ; preds = %37, %33, %26
  %51 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %3, align 8
  %52 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i8* @vlc_http_msg_get_header(i32 %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %55 = icmp ne i8* %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %3, align 8
  %58 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call i8* @vlc_http_msg_get_header(i32 %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %75

62:                                               ; preds = %56, %50
  %63 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %3, align 8
  %64 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i8*
  %68 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %3, align 8
  %69 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (i8**, i8*, i8*, i32, ...) @asprintf(i8** %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %67, i32 %70)
  %72 = icmp sge i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %62
  %74 = load i8*, i8** %5, align 8
  store i8* %74, i8** %2, align 8
  br label %149

75:                                               ; preds = %62, %56
  br label %76

76:                                               ; preds = %75, %21, %17
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 201
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i32, i32* %4, align 4
  %81 = sdiv i32 %80, 100
  %82 = icmp ne i32 %81, 3
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i8* null, i8** %2, align 8
  br label %149

84:                                               ; preds = %79, %76
  %85 = load i32, i32* %4, align 4
  %86 = icmp eq i32 %85, 304
  br i1 %86, label %93, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %4, align 4
  %89 = icmp eq i32 %88, 305
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %4, align 4
  %92 = icmp eq i32 %91, 306
  br i1 %92, label %93, label %94

93:                                               ; preds = %90, %87, %84
  store i8* null, i8** %2, align 8
  br label %149

94:                                               ; preds = %90
  %95 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %3, align 8
  %96 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = call i8* @vlc_http_msg_get_header(i32 %97, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  store i8* %98, i8** %7, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = icmp eq i8* %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  store i8* null, i8** %2, align 8
  br label %149

102:                                              ; preds = %94
  %103 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %3, align 8
  %104 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %109 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %3, align 8
  %110 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %3, align 8
  %113 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 (i8**, i8*, i8*, i32, ...) @asprintf(i8** %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %108, i32 %111, i32 %114)
  %116 = icmp eq i32 %115, -1
  %117 = zext i1 %116 to i32
  %118 = call i64 @unlikely(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %102
  store i8* null, i8** %2, align 8
  br label %149

121:                                              ; preds = %102
  %122 = load i8*, i8** %7, align 8
  %123 = call i8* @vlc_uri_fixup(i8* %122)
  store i8* %123, i8** %9, align 8
  %124 = load i8*, i8** %9, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = load i8*, i8** %9, align 8
  store i8* %127, i8** %7, align 8
  br label %128

128:                                              ; preds = %126, %121
  %129 = load i8*, i8** %8, align 8
  %130 = load i8*, i8** %7, align 8
  %131 = call i8* @vlc_uri_resolve(i8* %129, i8* %130)
  store i8* %131, i8** %10, align 8
  %132 = load i8*, i8** %9, align 8
  %133 = call i32 @free(i8* %132)
  %134 = load i8*, i8** %8, align 8
  %135 = call i32 @free(i8* %134)
  %136 = load i8*, i8** %10, align 8
  %137 = icmp ne i8* %136, null
  %138 = zext i1 %137 to i32
  %139 = call i64 @likely(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %128
  %142 = load i8*, i8** %10, align 8
  %143 = call i64 @strcspn(i8* %142, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  store i64 %143, i64* %11, align 8
  %144 = load i8*, i8** %10, align 8
  %145 = load i64, i64* %11, align 8
  %146 = getelementptr inbounds i8, i8* %144, i64 %145
  store i8 0, i8* %146, align 1
  br label %147

147:                                              ; preds = %141, %128
  %148 = load i8*, i8** %10, align 8
  store i8* %148, i8** %2, align 8
  br label %149

149:                                              ; preds = %147, %120, %101, %93, %83, %73, %48, %16
  %150 = load i8*, i8** %2, align 8
  ret i8* %150
}

declare dso_local i32 @vlc_http_res_get_status(%struct.vlc_http_resource*) #1

declare dso_local i8* @vlc_http_msg_get_header(i32, i8*) #1

declare dso_local i32 @vlc_ascii_strcasecmp(i8*, i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i32, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @vlc_uri_fixup(i8*) #1

declare dso_local i8* @vlc_uri_resolve(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

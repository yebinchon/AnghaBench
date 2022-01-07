; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_message.c_vlc_http_msg_format.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_message.c_vlc_http_msg_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_msg = type { i32, i64**, i32, i64, i64, i64, i32 }
%struct.vlc_memstream = type { i64, i8* }

@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%s://%s\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"%s HTTP/1.1\0D\0AHost: %s\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"HTTP/1.1 %03hd .\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%s: %s\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vlc_http_msg_format(%struct.vlc_http_msg* %0, i64* noalias %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vlc_http_msg*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vlc_memstream, align 8
  %9 = alloca i32, align 4
  store %struct.vlc_http_msg* %0, %struct.vlc_http_msg** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = call i32 @vlc_memstream_open(%struct.vlc_memstream* %8)
  %11 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %12 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %50

15:                                               ; preds = %3
  %16 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %17 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = call i32 (%struct.vlc_memstream*, i8*, i64, ...) @vlc_memstream_printf(%struct.vlc_memstream* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %15
  %24 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %25 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %28 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = call i32 (%struct.vlc_memstream*, i8*, i64, ...) @vlc_memstream_printf(%struct.vlc_memstream* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %26, i64 %29)
  br label %31

31:                                               ; preds = %23, %15
  %32 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %33 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %38 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  br label %44

40:                                               ; preds = %31
  %41 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %42 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  br label %44

44:                                               ; preds = %40, %36
  %45 = phi i64 [ %39, %36 ], [ %43, %40 ]
  %46 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %47 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = call i32 (%struct.vlc_memstream*, i8*, i64, ...) @vlc_memstream_printf(%struct.vlc_memstream* %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %45, i64 %48)
  br label %56

50:                                               ; preds = %3
  %51 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %52 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = call i32 (%struct.vlc_memstream*, i8*, i64, ...) @vlc_memstream_printf(%struct.vlc_memstream* %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64 %54)
  br label %56

56:                                               ; preds = %50, %44
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %83, %56
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %60 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ult i32 %58, %61
  br i1 %62, label %63, label %86

63:                                               ; preds = %57
  %64 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %65 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %64, i32 0, i32 1
  %66 = load i64**, i64*** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i64*, i64** %66, i64 %68
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %74 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %73, i32 0, i32 1
  %75 = load i64**, i64*** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i64*, i64** %75, i64 %77
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 1
  %81 = load i64, i64* %80, align 8
  %82 = call i32 (%struct.vlc_memstream*, i8*, i64, ...) @vlc_memstream_printf(%struct.vlc_memstream* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 %72, i64 %81)
  br label %83

83:                                               ; preds = %63
  %84 = load i32, i32* %9, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %57

86:                                               ; preds = %57
  %87 = call i32 @vlc_memstream_puts(%struct.vlc_memstream* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %88 = call i64 @vlc_memstream_close(%struct.vlc_memstream* %8)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i8* null, i8** %4, align 8
  br label %101

91:                                               ; preds = %86
  %92 = load i64*, i64** %6, align 8
  %93 = icmp ne i64* %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %8, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64*, i64** %6, align 8
  store i64 %96, i64* %97, align 8
  br label %98

98:                                               ; preds = %94, %91
  %99 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %8, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  store i8* %100, i8** %4, align 8
  br label %101

101:                                              ; preds = %98, %90
  %102 = load i8*, i8** %4, align 8
  ret i8* %102
}

declare dso_local i32 @vlc_memstream_open(%struct.vlc_memstream*) #1

declare dso_local i32 @vlc_memstream_printf(%struct.vlc_memstream*, i8*, i64, ...) #1

declare dso_local i32 @vlc_memstream_puts(%struct.vlc_memstream*, i8*) #1

declare dso_local i64 @vlc_memstream_close(%struct.vlc_memstream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

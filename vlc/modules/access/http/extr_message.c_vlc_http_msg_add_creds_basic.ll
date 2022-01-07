; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_message.c_vlc_http_msg_add_creds_basic.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_message.c_vlc_http_msg_add_creds_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_msg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Proxy-Authorization\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Authorization\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Basic %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_http_msg_add_creds_basic(%struct.vlc_http_msg* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vlc_http_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.vlc_http_msg* %0, %struct.vlc_http_msg** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 0, i64* %14, align 8
  br label %16

16:                                               ; preds = %38, %4
  %17 = load i8*, i8** %8, align 8
  %18 = load i64, i64* %14, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %13, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %16
  %24 = load i8, i8* %13, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp slt i32 %25, 32
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = load i8, i8* %13, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %29, 127
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i8, i8* %13, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, 58
  br i1 %34, label %35, label %37

35:                                               ; preds = %31, %27, %23
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %96

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %14, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %14, align 8
  br label %16

41:                                               ; preds = %16
  store i64 0, i64* %15, align 8
  br label %42

42:                                               ; preds = %60, %41
  %43 = load i8*, i8** %9, align 8
  %44 = load i64, i64* %15, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = load i8, i8* %45, align 1
  store i8 %46, i8* %13, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %42
  %50 = load i8, i8* %13, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp slt i32 %51, 32
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i8, i8* %13, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp eq i32 %55, 127
  br i1 %56, label %57, label %59

57:                                               ; preds = %53, %49
  %58 = load i32, i32* @EINVAL, align 4
  store i32 %58, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %96

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %15, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %15, align 8
  br label %42

63:                                               ; preds = %42
  %64 = load i8*, i8** %8, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 @asprintf(i8** %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %64, i8* %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp slt i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  store i32 -1, i32* %5, align 4
  br label %96

73:                                               ; preds = %63
  %74 = load i8*, i8** %10, align 8
  %75 = load i32, i32* %12, align 4
  %76 = call i8* @vlc_b64_encode_binary(i8* %74, i32 %75)
  store i8* %76, i8** %11, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = call i32 @free(i8* %77)
  %79 = load i8*, i8** %11, align 8
  %80 = icmp eq i8* %79, null
  %81 = zext i1 %80 to i32
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %73
  store i32 -1, i32* %5, align 4
  br label %96

85:                                               ; preds = %73
  %86 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)
  %91 = load i8*, i8** %11, align 8
  %92 = call i32 @vlc_http_msg_add_header(%struct.vlc_http_msg* %86, i8* %90, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %91)
  store i32 %92, i32* %12, align 4
  %93 = load i8*, i8** %11, align 8
  %94 = call i32 @free(i8* %93)
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %85, %84, %72, %57, %35
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @vlc_b64_encode_binary(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @vlc_http_msg_add_header(%struct.vlc_http_msg*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

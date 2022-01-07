; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_message_test.c_vlc_h2_frame_headers.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_message_test.c_vlc_h2_frame_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_h2_frame = type { i32 }
%struct.vlc_http_msg = type { i32 }

@VLC_H2_DEFAULT_MAX_FRAME = common dso_local global i32 0, align 4
@VLC_H2_MAX_HEADERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vlc_h2_frame* @vlc_h2_frame_headers(i32 %0, i32 %1, i32 %2, i32 %3, [2 x i8*]* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i8*]*, align 8
  %11 = alloca %struct.vlc_http_msg*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store [2 x i8*]* %4, [2 x i8*]** %10, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, 1
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @VLC_H2_DEFAULT_MAX_FRAME, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @assert(i32 %24)
  %26 = load i32, i32* @VLC_H2_MAX_HEADERS, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %12, align 8
  %29 = alloca [2 x i8*], i64 %27, align 16
  store i64 %27, i64* %13, align 8
  store i32 0, i32* %14, align 4
  br label %30

30:                                               ; preds = %55, %5
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %58

34:                                               ; preds = %30
  %35 = load [2 x i8*]*, [2 x i8*]** %10, align 8
  %36 = load i32, i32* %14, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds [2 x i8*], [2 x i8*]* %35, i64 %37
  %39 = getelementptr inbounds [2 x i8*], [2 x i8*]* %38, i64 0, i64 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* %14, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [2 x i8*], [2 x i8*]* %29, i64 %42
  %44 = getelementptr inbounds [2 x i8*], [2 x i8*]* %43, i64 0, i64 0
  store i8* %40, i8** %44, align 16
  %45 = load [2 x i8*]*, [2 x i8*]** %10, align 8
  %46 = load i32, i32* %14, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds [2 x i8*], [2 x i8*]* %45, i64 %47
  %49 = getelementptr inbounds [2 x i8*], [2 x i8*]* %48, i64 0, i64 1
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* %14, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds [2 x i8*], [2 x i8*]* %29, i64 %52
  %54 = getelementptr inbounds [2 x i8*], [2 x i8*]* %53, i64 0, i64 1
  store i8* %50, i8** %54, align 8
  br label %55

55:                                               ; preds = %34
  %56 = load i32, i32* %14, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %14, align 4
  br label %30

58:                                               ; preds = %30
  %59 = load i32, i32* %9, align 4
  %60 = bitcast [2 x i8*]* %29 to i8***
  %61 = call %struct.vlc_http_msg* @vlc_http_msg_h2_headers(i32 %59, i8*** %60)
  store %struct.vlc_http_msg* %61, %struct.vlc_http_msg** %11, align 8
  %62 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %11, align 8
  %63 = bitcast %struct.vlc_http_msg* %62 to %struct.vlc_h2_frame*
  %64 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %64)
  ret %struct.vlc_h2_frame* %63
}

declare dso_local i32 @assert(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.vlc_http_msg* @vlc_http_msg_h2_headers(i32, i8***) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

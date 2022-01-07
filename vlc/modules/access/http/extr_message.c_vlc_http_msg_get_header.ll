; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_message.c_vlc_http_msg_get_header.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_message.c_vlc_http_msg_get_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_msg = type { i8*** }

@ENOENT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vlc_http_msg_get_header(%struct.vlc_http_msg* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.vlc_http_msg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.vlc_http_msg* %0, %struct.vlc_http_msg** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i64 @vlc_http_msg_find_header(%struct.vlc_http_msg* %7, i8* %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ult i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOENT, align 4
  store i32 %13, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  br label %23

14:                                               ; preds = %2
  %15 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %4, align 8
  %16 = getelementptr inbounds %struct.vlc_http_msg, %struct.vlc_http_msg* %15, i32 0, i32 0
  %17 = load i8***, i8**** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds i8**, i8*** %17, i64 %18
  %20 = load i8**, i8*** %19, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %3, align 8
  br label %23

23:                                               ; preds = %14, %12
  %24 = load i8*, i8** %3, align 8
  ret i8* %24
}

declare dso_local i64 @vlc_http_msg_find_header(%struct.vlc_http_msg*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

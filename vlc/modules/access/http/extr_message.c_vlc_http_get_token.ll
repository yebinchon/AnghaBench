; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_message.c_vlc_http_get_token.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_message.c_vlc_http_get_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @vlc_http_get_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @vlc_http_get_token(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i64 @strlen(i8* %7)
  store i64 %8, i64* %6, align 8
  br label %9

9:                                                ; preds = %25, %2
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @vlc_http_token_length(i8* %13)
  %15 = load i64, i64* %6, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @strncasecmp(i8* %18, i8* %19, i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = load i8*, i8** %4, align 8
  store i8* %24, i8** %3, align 8
  br label %29

25:                                               ; preds = %17, %12
  %26 = load i8*, i8** %4, align 8
  %27 = call i8* @vlc_http_next_token(i8* %26)
  store i8* %27, i8** %4, align 8
  br label %9

28:                                               ; preds = %9
  store i8* null, i8** %3, align 8
  br label %29

29:                                               ; preds = %28, %23
  %30 = load i8*, i8** %3, align 8
  ret i8* %30
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @vlc_http_token_length(i8*) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i64) #1

declare dso_local i8* @vlc_http_next_token(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

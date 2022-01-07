; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h1conn.c_vlc_http_can_read.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h1conn.c_vlc_http_can_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vlc_http_can_read.end = internal constant [4 x i8] c"\0D\0A\0D\0A", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @vlc_http_can_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_http_can_read(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 4, i32* %6, align 4
  br label %7

7:                                                ; preds = %30, %2
  %8 = load i32, i32* %6, align 4
  %9 = icmp ugt i32 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %7
  %11 = load i64, i64* %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = zext i32 %12 to i64
  %14 = icmp uge i64 %11, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %10
  %16 = load i8*, i8** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = sub i64 0, %20
  %22 = getelementptr inbounds i8, i8* %18, i64 %21
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @memcmp(i8* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @vlc_http_can_read.end, i64 0, i64 0), i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %15
  %27 = load i32, i32* %6, align 4
  %28 = sub i32 4, %27
  store i32 %28, i32* %3, align 4
  br label %34

29:                                               ; preds = %15, %10
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %6, align 4
  %32 = add i32 %31, -1
  store i32 %32, i32* %6, align 4
  br label %7

33:                                               ; preds = %7
  store i32 4, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %26
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

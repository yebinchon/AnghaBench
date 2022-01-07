; ModuleID = '/home/carl/AnghaBench/vlc/src/text/extr_url.c_vlc_uri_component_validate.c'
source_filename = "/home/carl/AnghaBench/vlc/src/text/extr_url.c_vlc_uri_component_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @vlc_uri_component_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_uri_component_validate(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  store i64 0, i64* %6, align 8
  br label %12

12:                                               ; preds = %62, %2
  %13 = load i8*, i8** %4, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %65

19:                                               ; preds = %12
  %20 = load i8*, i8** %4, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @isurisafe(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @isurisubdelim(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %19
  br label %62

33:                                               ; preds = %28
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32* @strchr(i8* %34, i32 %35)
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %62

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 37
  br i1 %41, label %42, label %61

42:                                               ; preds = %39
  %43 = load i8*, i8** %4, align 8
  %44 = load i64, i64* %6, align 8
  %45 = add i64 %44, 1
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = call i64 @isurihex(i8 signext %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %42
  %51 = load i8*, i8** %4, align 8
  %52 = load i64, i64* %6, align 8
  %53 = add i64 %52, 2
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = call i64 @isurihex(i8 signext %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load i64, i64* %6, align 8
  %60 = add i64 %59, 2
  store i64 %60, i64* %6, align 8
  br label %62

61:                                               ; preds = %50, %42, %39
  store i32 0, i32* %3, align 4
  br label %66

62:                                               ; preds = %58, %38, %32
  %63 = load i64, i64* %6, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %6, align 8
  br label %12

65:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %61
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @isurisafe(i32) #1

declare dso_local i64 @isurisubdelim(i32) #1

declare dso_local i32* @strchr(i8*, i32) #1

declare dso_local i64 @isurihex(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

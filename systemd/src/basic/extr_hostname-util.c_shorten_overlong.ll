; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_hostname-util.c_shorten_overlong.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_hostname-util.c_shorten_overlong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@HOST_NAME_MAX = common dso_local global i32 0, align 4
@EDOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @shorten_overlong(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @assert(i8* %8)
  %10 = load i8*, i8** %4, align 8
  %11 = call i8* @strdup(i8* %10)
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %46

17:                                               ; preds = %2
  %18 = load i8*, i8** %6, align 8
  %19 = call i64 @hostname_is_valid(i8* %18, i32 0)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i8*, i8** %6, align 8
  %23 = load i8**, i8*** %5, align 8
  store i8* %22, i8** %23, align 8
  store i32 0, i32* %3, align 4
  br label %46

24:                                               ; preds = %17
  %25 = load i8*, i8** %6, align 8
  %26 = call i8* @strchr(i8* %25, i8 signext 46)
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i8*, i8** %7, align 8
  store i8 0, i8* %30, align 1
  br label %31

31:                                               ; preds = %29, %24
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* @HOST_NAME_MAX, align 4
  %34 = call i32 @strshorten(i8* %32, i32 %33)
  %35 = load i8*, i8** %6, align 8
  %36 = call i64 @hostname_is_valid(i8* %35, i32 0)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %31
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @free(i8* %39)
  %41 = load i32, i32* @EDOM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %46

43:                                               ; preds = %31
  %44 = load i8*, i8** %6, align 8
  %45 = load i8**, i8*** %5, align 8
  store i8* %44, i8** %45, align 8
  store i32 1, i32* %3, align 4
  br label %46

46:                                               ; preds = %43, %38, %21, %14
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @hostname_is_valid(i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strshorten(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/redis/src/extr_zipmap.c_zipmapLen.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_zipmap.c_zipmapLen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZIPMAP_BIGLEN = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zipmapLen(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i8*, i8** %2, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 0
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  %9 = load i8, i8* @ZIPMAP_BIGLEN, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  store i32 %16, i32* %3, align 4
  br label %38

17:                                               ; preds = %1
  %18 = load i8*, i8** %2, align 8
  %19 = call i8* @zipmapRewind(i8* %18)
  store i8* %19, i8** %4, align 8
  br label %20

20:                                               ; preds = %24, %17
  %21 = load i8*, i8** %4, align 8
  %22 = call i8* @zipmapNext(i8* %21, i32* null, i32* null, i32* null, i32* null)
  store i8* %22, i8** %4, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* %3, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %20

27:                                               ; preds = %20
  %28 = load i32, i32* %3, align 4
  %29 = load i8, i8* @ZIPMAP_BIGLEN, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp ult i32 %28, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i32, i32* %3, align 4
  %34 = trunc i32 %33 to i8
  %35 = load i8*, i8** %2, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  store i8 %34, i8* %36, align 1
  br label %37

37:                                               ; preds = %32, %27
  br label %38

38:                                               ; preds = %37, %12
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i8* @zipmapRewind(i8*) #1

declare dso_local i8* @zipmapNext(i8*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lstrlib.c_max_expand.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lstrlib.c_max_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_4__*, i8*, i8*, i8*)* @max_expand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @max_expand(%struct.TYPE_4__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %34, %4
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* %10, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ult i8* %16, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %12
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = call i32 @uchar(i8 signext %26)
  %28 = load i8*, i8** %8, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = call i64 @singlematch(i32 %27, i8* %28, i8* %29)
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %21, %12
  %33 = phi i1 [ false, %12 ], [ %31, %21 ]
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  br label %12

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %54, %37
  %39 = load i32, i32* %10, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %38
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8*, i8** %9, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = call i8* @match(%struct.TYPE_4__* %42, i8* %46, i8* %48)
  store i8* %49, i8** %11, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %41
  %53 = load i8*, i8** %11, align 8
  store i8* %53, i8** %5, align 8
  br label %58

54:                                               ; preds = %41
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %10, align 4
  br label %38

57:                                               ; preds = %38
  store i8* null, i8** %5, align 8
  br label %58

58:                                               ; preds = %57, %52
  %59 = load i8*, i8** %5, align 8
  ret i8* %59
}

declare dso_local i64 @singlematch(i32, i8*, i8*) #1

declare dso_local i32 @uchar(i8 signext) #1

declare dso_local i8* @match(%struct.TYPE_4__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

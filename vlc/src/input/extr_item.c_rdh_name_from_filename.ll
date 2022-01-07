; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_item.c_rdh_name_from_filename.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_item.c_rdh_name_from_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @rdh_name_from_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rdh_name_from_filename(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  br label %7

7:                                                ; preds = %19, %1
  %8 = load i8*, i8** %3, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = load i8*, i8** %3, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 32
  br label %17

17:                                               ; preds = %12, %7
  %18 = phi i1 [ false, %7 ], [ %16, %12 ]
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %3, align 8
  br label %7

22:                                               ; preds = %17
  %23 = load i8*, i8** %3, align 8
  %24 = call i8* @strdup(i8* %23)
  store i8* %24, i8** %4, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i8* null, i8** %2, align 8
  br label %78

28:                                               ; preds = %22
  %29 = load i8*, i8** %4, align 8
  %30 = call i8* @strrchr(i8* %29, i8 signext 46)
  store i8* %30, i8** %5, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i8*, i8** %5, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = icmp ne i8* %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i8*, i8** %5, align 8
  store i8 0, i8* %38, align 1
  br label %39

39:                                               ; preds = %37, %33, %28
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %56, %39
  %44 = load i8*, i8** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 32
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32, i32* %6, align 4
  %53 = icmp sge i32 %52, 0
  br label %54

54:                                               ; preds = %51, %43
  %55 = phi i1 [ false, %43 ], [ %53, %51 ]
  br i1 %55, label %56, label %62

56:                                               ; preds = %54
  %57 = load i8*, i8** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %6, align 4
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  store i8 0, i8* %61, align 1
  br label %43

62:                                               ; preds = %54
  %63 = load i8*, i8** %4, align 8
  store i8* %63, i8** %5, align 8
  br label %64

64:                                               ; preds = %69, %62
  %65 = load i8*, i8** %5, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load i8*, i8** %5, align 8
  %71 = load i8, i8* %70, align 1
  %72 = call signext i8 @tolower(i8 signext %71)
  %73 = load i8*, i8** %5, align 8
  store i8 %72, i8* %73, align 1
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %5, align 8
  br label %64

76:                                               ; preds = %64
  %77 = load i8*, i8** %4, align 8
  store i8* %77, i8** %2, align 8
  br label %78

78:                                               ; preds = %76, %27
  %79 = load i8*, i8** %2, align 8
  ret i8* %79
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local signext i8 @tolower(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

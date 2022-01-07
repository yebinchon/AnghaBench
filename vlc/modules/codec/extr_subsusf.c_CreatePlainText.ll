; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_subsusf.c_CreatePlainText.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_subsusf.c_CreatePlainText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"\09\0D\0A \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @CreatePlainText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @CreatePlainText(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i8* @StripTags(i8* %9)
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %64

14:                                               ; preds = %1
  %15 = load i8*, i8** %4, align 8
  %16 = call i8* @strpbrk(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %5, align 8
  br label %17

17:                                               ; preds = %56, %14
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %62

20:                                               ; preds = %17
  store i8 32, i8* %6, align 1
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @strspn(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %37, %20
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 10
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i8 10, i8* %6, align 1
  br label %36

36:                                               ; preds = %35, %27
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %23

40:                                               ; preds = %23
  %41 = load i32, i32* %7, align 4
  %42 = icmp sgt i32 %41, 1
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @strlen(i8* %50)
  %52 = load i32, i32* %7, align 4
  %53 = sub nsw i32 %51, %52
  %54 = add nsw i32 %53, 1
  %55 = call i32 @memmove(i8* %45, i8* %49, i32 %54)
  br label %56

56:                                               ; preds = %43, %40
  %57 = load i8, i8* %6, align 1
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %5, align 8
  store i8 %57, i8* %58, align 1
  %60 = load i8*, i8** %5, align 8
  %61 = call i8* @strpbrk(i8* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %61, i8** %5, align 8
  br label %17

62:                                               ; preds = %17
  %63 = load i8*, i8** %4, align 8
  store i8* %63, i8** %2, align 8
  br label %64

64:                                               ; preds = %62, %13
  %65 = load i8*, i8** %2, align 8
  ret i8* %65
}

declare dso_local i8* @StripTags(i8*) #1

declare dso_local i8* @strpbrk(i8*, i8*) #1

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

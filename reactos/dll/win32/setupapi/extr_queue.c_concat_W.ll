; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_queue.c_concat_W.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_queue.c_concat_W.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i8*)* @concat_W to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @concat_W(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i8*, i8** %5, align 8
  store i8 0, i8* %9, align 1
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %48

12:                                               ; preds = %4
  %13 = load i8*, i8** %6, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %48

17:                                               ; preds = %12
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @strcpyW(i8* %18, i8* %19)
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @strlenW(i8* %21)
  %23 = load i8*, i8** %5, align 8
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8* %25, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 -1
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 92
  br i1 %30, label %31, label %34

31:                                               ; preds = %17
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %5, align 8
  store i8 92, i8* %32, align 1
  br label %34

34:                                               ; preds = %31, %17
  %35 = load i8*, i8** %7, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  br label %38

38:                                               ; preds = %43, %37
  %39 = load i8*, i8** %7, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 92
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %7, align 8
  br label %38

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %34
  br label %48

48:                                               ; preds = %47, %12, %4
  %49 = load i8*, i8** %7, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %82

51:                                               ; preds = %48
  %52 = load i8*, i8** %5, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @strcpyW(i8* %52, i8* %53)
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @strlenW(i8* %55)
  %57 = load i8*, i8** %5, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** %5, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 -1
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 92
  br i1 %64, label %65, label %68

65:                                               ; preds = %51
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %5, align 8
  store i8 92, i8* %66, align 1
  br label %68

68:                                               ; preds = %65, %51
  %69 = load i8*, i8** %8, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %81

71:                                               ; preds = %68
  br label %72

72:                                               ; preds = %77, %71
  %73 = load i8*, i8** %8, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 92
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i8*, i8** %8, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %8, align 8
  br label %72

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %80, %68
  br label %82

82:                                               ; preds = %81, %48
  %83 = load i8*, i8** %8, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i8*, i8** %5, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 @strcpyW(i8* %86, i8* %87)
  br label %89

89:                                               ; preds = %85, %82
  ret void
}

declare dso_local i32 @strcpyW(i8*, i8*) #1

declare dso_local i32 @strlenW(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

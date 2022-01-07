; ModuleID = '/home/carl/AnghaBench/tmux/extr_names.c_parse_window_name.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_names.c_parse_window_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"exec \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @parse_window_name(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i8* @xstrdup(i8* %6)
  store i8* %7, i8** %3, align 8
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @strncmp(i8* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 6
  %14 = getelementptr inbounds i8, i8* %13, i64 -1
  store i8* %14, i8** %4, align 8
  br label %15

15:                                               ; preds = %11, %1
  br label %16

16:                                               ; preds = %28, %15
  %17 = load i8*, i8** %4, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 32
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load i8*, i8** %4, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 45
  br label %26

26:                                               ; preds = %21, %16
  %27 = phi i1 [ true, %16 ], [ %25, %21 ]
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %4, align 8
  br label %16

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8
  %33 = call i8* @strchr(i8* %32, i8 signext 32)
  store i8* %33, i8** %5, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i8*, i8** %5, align 8
  store i8 0, i8* %36, align 1
  br label %37

37:                                               ; preds = %35, %31
  %38 = load i8*, i8** %4, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %72

42:                                               ; preds = %37
  %43 = load i8*, i8** %4, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  %48 = getelementptr inbounds i8, i8* %47, i64 -1
  store i8* %48, i8** %5, align 8
  br label %49

49:                                               ; preds = %68, %42
  %50 = load i8*, i8** %5, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = icmp ugt i8* %50, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %49
  %54 = load i8*, i8** %5, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = call i32 @isalnum(i32 %56) #3
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %53
  %60 = load i8*, i8** %5, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = call i32 @ispunct(i32 %62) #3
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  br label %66

66:                                               ; preds = %59, %53, %49
  %67 = phi i1 [ false, %53 ], [ false, %49 ], [ %65, %59 ]
  br i1 %67, label %68, label %71

68:                                               ; preds = %66
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 -1
  store i8* %70, i8** %5, align 8
  store i8 0, i8* %69, align 1
  br label %49

71:                                               ; preds = %66
  br label %72

72:                                               ; preds = %71, %37
  %73 = load i8*, i8** %4, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 47
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i8*, i8** %4, align 8
  %79 = call i8* @basename(i8* %78)
  store i8* %79, i8** %4, align 8
  br label %80

80:                                               ; preds = %77, %72
  %81 = load i8*, i8** %4, align 8
  %82 = call i8* @xstrdup(i8* %81)
  store i8* %82, i8** %4, align 8
  %83 = load i8*, i8** %3, align 8
  %84 = call i32 @free(i8* %83)
  %85 = load i8*, i8** %4, align 8
  ret i8* %85
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isalnum(i32) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @ispunct(i32) #2

declare dso_local i8* @basename(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

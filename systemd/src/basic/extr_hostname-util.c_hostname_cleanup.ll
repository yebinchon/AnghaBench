; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_hostname-util.c_hostname_cleanup.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_hostname-util.c_hostname_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HOST_NAME_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hostname_cleanup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @assert(i8* %7)
  %9 = load i8*, i8** %2, align 8
  store i8* %9, i8** %3, align 8
  %10 = load i8*, i8** %2, align 8
  store i8* %10, i8** %4, align 8
  store i32 1, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %11

11:                                               ; preds = %67, %1
  %12 = load i8*, i8** %3, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = load i8*, i8** %4, align 8
  %18 = load i8*, i8** %2, align 8
  %19 = ptrtoint i8* %17 to i64
  %20 = ptrtoint i8* %18 to i64
  %21 = sub i64 %19, %20
  %22 = load i32, i32* @HOST_NAME_MAX, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp slt i64 %21, %23
  br label %25

25:                                               ; preds = %16, %11
  %26 = phi i1 [ false, %11 ], [ %24, %16 ]
  br i1 %26, label %27, label %70

27:                                               ; preds = %25
  %28 = load i8*, i8** %3, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 46
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %32
  br label %67

39:                                               ; preds = %35
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %4, align 8
  store i8 46, i8* %40, align 1
  store i32 1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %66

42:                                               ; preds = %27
  %43 = load i8*, i8** %3, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 45
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %67

51:                                               ; preds = %47
  %52 = load i8*, i8** %4, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %4, align 8
  store i8 45, i8* %52, align 1
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %65

54:                                               ; preds = %42
  %55 = load i8*, i8** %3, align 8
  %56 = load i8, i8* %55, align 1
  %57 = call i64 @valid_ldh_char(i8 signext %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i8*, i8** %3, align 8
  %61 = load i8, i8* %60, align 1
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %4, align 8
  store i8 %61, i8* %62, align 1
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %59, %54
  br label %65

65:                                               ; preds = %64, %51
  br label %66

66:                                               ; preds = %65, %39
  br label %67

67:                                               ; preds = %66, %50, %38
  %68 = load i8*, i8** %3, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %3, align 8
  br label %11

70:                                               ; preds = %25
  %71 = load i8*, i8** %4, align 8
  %72 = load i8*, i8** %2, align 8
  %73 = icmp ugt i8* %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %70
  %75 = load i8*, i8** %4, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 -1
  %77 = load i8, i8* %76, align 1
  %78 = call i64 @IN_SET(i8 signext %77, i8 signext 45, i8 signext 46)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i8*, i8** %4, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 -1
  store i8* %82, i8** %4, align 8
  br label %83

83:                                               ; preds = %80, %74, %70
  %84 = load i8*, i8** %4, align 8
  store i8 0, i8* %84, align 1
  %85 = load i8*, i8** %2, align 8
  ret i8* %85
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @valid_ldh_char(i8 signext) #1

declare dso_local i64 @IN_SET(i8 signext, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

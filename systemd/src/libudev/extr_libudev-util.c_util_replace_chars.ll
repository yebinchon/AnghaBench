; ModuleID = '/home/carl/AnghaBench/systemd/src/libudev/extr_libudev-util.c_util_replace_chars.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libudev/extr_libudev-util.c_util_replace_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @util_replace_chars(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @assert(i8* %8)
  br label %10

10:                                               ; preds = %80, %72, %53, %43, %25, %2
  %11 = load i8*, i8** %3, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds i8, i8* %11, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %88

17:                                               ; preds = %10
  %18 = load i8*, i8** %3, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = load i8*, i8** %4, align 8
  %23 = call i64 @whitelisted_char_for_devnode(i8 signext %21, i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i64, i64* %5, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %5, align 8
  br label %10

28:                                               ; preds = %17
  %29 = load i8*, i8** %3, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 92
  br i1 %34, label %35, label %46

35:                                               ; preds = %28
  %36 = load i8*, i8** %3, align 8
  %37 = load i64, i64* %5, align 8
  %38 = add i64 %37, 1
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 120
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i64, i64* %5, align 8
  %45 = add i64 %44, 2
  store i64 %45, i64* %5, align 8
  br label %10

46:                                               ; preds = %35, %28
  %47 = load i8*, i8** %3, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = call i32 @utf8_encoded_valid_unichar(i8* %49, i64 -1)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %5, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %5, align 8
  br label %10

58:                                               ; preds = %46
  %59 = load i8*, i8** %3, align 8
  %60 = load i64, i64* %5, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = call i64 @isspace(i8 signext %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %58
  %66 = load i8*, i8** %4, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %80

68:                                               ; preds = %65
  %69 = load i8*, i8** %4, align 8
  %70 = call i64 @strchr(i8* %69, i8 signext 32)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  %73 = load i8*, i8** %3, align 8
  %74 = load i64, i64* %5, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8 32, i8* %75, align 1
  %76 = load i64, i64* %5, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %5, align 8
  %78 = load i64, i64* %6, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %6, align 8
  br label %10

80:                                               ; preds = %68, %65, %58
  %81 = load i8*, i8** %3, align 8
  %82 = load i64, i64* %5, align 8
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  store i8 95, i8* %83, align 1
  %84 = load i64, i64* %5, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %5, align 8
  %86 = load i64, i64* %6, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %6, align 8
  br label %10

88:                                               ; preds = %10
  %89 = load i64, i64* %6, align 8
  ret i64 %89
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @whitelisted_char_for_devnode(i8 signext, i8*) #1

declare dso_local i32 @utf8_encoded_valid_unichar(i8*, i64) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

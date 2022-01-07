; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_parse.c_vbuf__append_quoted1035.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_parse.c_vbuf__append_quoted1035.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"\\%c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vbuf__append_quoted1035(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [10 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  br label %11

11:                                               ; preds = %71, %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %79

14:                                               ; preds = %11
  %15 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  store i8 0, i8* %15, align 1
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %45, %14
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %48

20:                                               ; preds = %16
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp sle i32 %26, 32
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %10, align 4
  %30 = icmp sge i32 %29, 127
  br i1 %30, label %31, label %35

31:                                               ; preds = %28, %20
  %32 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @sprintf(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %48

35:                                               ; preds = %28
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @ctype_domainunquoted(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @sprintf(i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %48

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %16

48:                                               ; preds = %39, %31, %16
  %49 = load i32*, i32** %5, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @adns__vbuf_append(i32* %49, i32* %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %48
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %57 = bitcast i8* %56 to i32*
  %58 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %59 = call i64 @strlen(i8* %58)
  %60 = trunc i64 %59 to i32
  %61 = call i32 @adns__vbuf_append(i32* %55, i32* %57, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %54, %48
  store i32 0, i32* %4, align 4
  br label %80

64:                                               ; preds = %54
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %68, %64
  %72 = load i32, i32* %9, align 4
  %73 = load i32*, i32** %6, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32* %75, i32** %6, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %7, align 4
  %78 = sub nsw i32 %77, %76
  store i32 %78, i32* %7, align 4
  br label %11

79:                                               ; preds = %11
  store i32 1, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %63
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @ctype_domainunquoted(i32) #1

declare dso_local i32 @adns__vbuf_append(i32*, i32*, i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

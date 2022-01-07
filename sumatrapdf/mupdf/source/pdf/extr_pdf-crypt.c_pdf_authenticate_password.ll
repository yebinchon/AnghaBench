; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-crypt.c_pdf_authenticate_password.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-crypt.c_pdf_authenticate_password.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pdf_authenticate_password(i32* %0, %struct.TYPE_5__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [2048 x i8], align 16
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %84

15:                                               ; preds = %3
  %16 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  store i8 0, i8* %16, align 16
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sle i32 %24, 4
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @pdf_docenc_from_utf8(i8* %27, i8* %28, i32 2048)
  br label %34

30:                                               ; preds = %19
  %31 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @pdf_saslprep_from_utf8(i8* %31, i8* %32, i32 2048)
  br label %34

34:                                               ; preds = %30, %26
  br label %35

35:                                               ; preds = %34, %15
  store i32 0, i32* %9, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %41 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %42 = call i32 @strlen(i8* %41)
  %43 = call i64 @pdf_authenticate_user_password(i32* %36, %struct.TYPE_6__* %39, i8* %40, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  store i32 2, i32* %9, align 4
  br label %46

46:                                               ; preds = %45, %35
  %47 = load i32*, i32** %5, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %52 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %53 = call i32 @strlen(i8* %52)
  %54 = call i64 @pdf_authenticate_owner_password(i32* %47, %struct.TYPE_6__* %50, i8* %51, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load i32, i32* %9, align 4
  %58 = or i32 %57, 4
  store i32 %58, i32* %9, align 4
  br label %73

59:                                               ; preds = %46
  %60 = load i32, i32* %9, align 4
  %61 = and i32 %60, 2
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = load i32*, i32** %5, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %69 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %70 = call i32 @strlen(i8* %69)
  %71 = call i64 @pdf_authenticate_user_password(i32* %64, %struct.TYPE_6__* %67, i8* %68, i32 %70)
  br label %72

72:                                               ; preds = %63, %59
  br label %73

73:                                               ; preds = %72, %56
  %74 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %75 = load i8, i8* %74, align 16
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32, i32* %9, align 4
  %80 = icmp eq i32 %79, 4
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 0, i32* %4, align 4
  br label %84

82:                                               ; preds = %78, %73
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %82, %81, %14
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @pdf_docenc_from_utf8(i8*, i8*, i32) #1

declare dso_local i32 @pdf_saslprep_from_utf8(i8*, i8*, i32) #1

declare dso_local i64 @pdf_authenticate_user_password(i32*, %struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @pdf_authenticate_owner_password(i32*, %struct.TYPE_6__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

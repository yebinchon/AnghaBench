; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_import-util.c_import_url_last_component.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_import-util.c_import_url_last_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @import_url_last_component(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i8* @strchrnul(i8* %9, i8 signext 63)
  store i8* %10, i8** %6, align 8
  br label %11

11:                                               ; preds = %23, %2
  %12 = load i8*, i8** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ugt i8* %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 -1
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 47
  br label %21

21:                                               ; preds = %15, %11
  %22 = phi i1 [ false, %11 ], [ %20, %15 ]
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 -1
  store i8* %25, i8** %6, align 8
  br label %11

26:                                               ; preds = %21
  %27 = load i8*, i8** %6, align 8
  store i8* %27, i8** %7, align 8
  br label %28

28:                                               ; preds = %40, %26
  %29 = load i8*, i8** %7, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = icmp ugt i8* %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 -1
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 47
  br label %38

38:                                               ; preds = %32, %28
  %39 = phi i1 [ false, %28 ], [ %37, %32 ]
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 -1
  store i8* %42, i8** %7, align 8
  br label %28

43:                                               ; preds = %38
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = icmp ule i8* %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %67

50:                                               ; preds = %43
  %51 = load i8*, i8** %7, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = ptrtoint i8* %52 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  %57 = trunc i64 %56 to i32
  %58 = call i8* @strndup(i8* %51, i32 %57)
  store i8* %58, i8** %8, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %50
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %67

64:                                               ; preds = %50
  %65 = load i8*, i8** %8, align 8
  %66 = load i8**, i8*** %5, align 8
  store i8* %65, i8** %66, align 8
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %64, %61, %47
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

declare dso_local i8* @strndup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

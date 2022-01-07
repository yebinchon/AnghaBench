; ModuleID = '/home/carl/AnghaBench/seafile/lib/extr_utils.c_objstore_mkdir.c'
source_filename = "/home/carl/AnghaBench/seafile/lib/extr_utils.c_objstore_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@objstore_mkdir.hex = internal constant [17 x i8] c"0123456789abcdef\00", align 16
@SEAF_PATH_MAX = common dso_local global i32 0, align 4
@G_DIR_SEPARATOR = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @objstore_mkdir(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %11 = load i32, i32* @SEAF_PATH_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @checkdir_with_mkdir(i8* %15)
  store i32 %16, i32* %4, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %71

20:                                               ; preds = %1
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @strlen(i8* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i8*, i8** %3, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @memcpy(i8* %14, i8* %23, i32 %24)
  %26 = load i8, i8* @G_DIR_SEPARATOR, align 1
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %14, i64 %28
  store i8 %26, i8* %29, align 1
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 3
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %14, i64 %32
  store i8 0, i8* %33, align 1
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %67, %20
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 16
  br i1 %36, label %37, label %70

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [17 x i8], [17 x i8]* @objstore_mkdir.hex, i64 0, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %14, i64 %44
  store i8 %41, i8* %45, align 1
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %63, %37
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 16
  br i1 %48, label %49, label %66

49:                                               ; preds = %46
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [17 x i8], [17 x i8]* @objstore_mkdir.hex, i64 0, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 2
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %14, i64 %56
  store i8 %53, i8* %57, align 1
  %58 = call i32 @checkdir_with_mkdir(i8* %14)
  store i32 %58, i32* %4, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %49
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %71

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %46

66:                                               ; preds = %46
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %34

70:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %71

71:                                               ; preds = %70, %60, %18
  %72 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %72)
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @checkdir_with_mkdir(i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

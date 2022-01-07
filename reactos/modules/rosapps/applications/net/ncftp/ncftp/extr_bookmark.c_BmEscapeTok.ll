; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_bookmark.c_BmEscapeTok.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_bookmark.c_BmEscapeTok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"$%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i8*)* @BmEscapeTok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @BmEscapeTok(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = getelementptr inbounds i8, i8* %10, i64 %11
  %13 = getelementptr inbounds i8, i8* %12, i64 -1
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %4, align 8
  store i8* %14, i8** %8, align 8
  br label %15

15:                                               ; preds = %71, %3
  %16 = load i8*, i8** %6, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  store i32 %18, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %72

20:                                               ; preds = %15
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %6, align 8
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %23, 92
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %26, 44
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %29, 36
  br i1 %30, label %31, label %44

31:                                               ; preds = %28, %25, %20
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8*, i8** %7, align 8
  %35 = icmp ult i8* %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %4, align 8
  store i8 92, i8* %37, align 1
  %39 = load i32, i32* %9, align 4
  %40 = trunc i32 %39 to i8
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %4, align 8
  store i8 %40, i8* %41, align 1
  br label %43

43:                                               ; preds = %36, %31
  br label %71

44:                                               ; preds = %28
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @isprint(i32 %45) #3
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %44
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 2
  %51 = load i8*, i8** %7, align 8
  %52 = icmp ult i8* %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load i8*, i8** %4, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @sprintf(i8* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i8*, i8** %4, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 3
  store i8* %58, i8** %4, align 8
  br label %59

59:                                               ; preds = %53, %48
  br label %70

60:                                               ; preds = %44
  %61 = load i8*, i8** %4, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = icmp ult i8* %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i32, i32* %9, align 4
  %66 = trunc i32 %65 to i8
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %4, align 8
  store i8 %66, i8* %67, align 1
  br label %69

69:                                               ; preds = %64, %60
  br label %70

70:                                               ; preds = %69, %59
  br label %71

71:                                               ; preds = %70, %43
  br label %15

72:                                               ; preds = %15
  %73 = load i8*, i8** %4, align 8
  store i8 0, i8* %73, align 1
  %74 = load i8*, i8** %8, align 8
  ret i8* %74
}

; Function Attrs: nounwind readonly
declare dso_local i32 @isprint(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

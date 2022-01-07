; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/Strn/extr_Strntok.c_Strntok.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/Strn/extr_Strntok.c_Strntok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Strntok.p = internal global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Strntok(i8* %0, i64 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %12, align 8
  %15 = load i8*, i8** %12, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  %18 = getelementptr inbounds i8, i8* %17, i64 -1
  store i8* %18, i8** %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i8*, i8** %8, align 8
  store i8* %22, i8** @Strntok.p, align 8
  br label %29

23:                                               ; preds = %4
  %24 = load i8*, i8** @Strntok.p, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i8*, i8** %12, align 8
  store i8 0, i8* %27, align 1
  store i32 -1, i32* %5, align 4
  br label %70

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %28, %21
  %30 = load i8*, i8** @Strntok.p, align 8
  store i8* %30, i8** %10, align 8
  br label %31

31:                                               ; preds = %58, %29
  %32 = load i8*, i8** %10, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i8* null, i8** @Strntok.p, align 8
  br label %61

37:                                               ; preds = %31
  %38 = load i8*, i8** %9, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = call i32* @strchr(i8* %38, i32 %41)
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load i8*, i8** %10, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %10, align 8
  %47 = load i8*, i8** %10, align 8
  store i8* %47, i8** @Strntok.p, align 8
  br label %61

48:                                               ; preds = %37
  %49 = load i8*, i8** %12, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = icmp ult i8* %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load i8*, i8** %10, align 8
  %54 = load i8, i8* %53, align 1
  %55 = load i8*, i8** %12, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %12, align 8
  store i8 %54, i8* %55, align 1
  br label %57

57:                                               ; preds = %52, %48
  br label %58

58:                                               ; preds = %57
  %59 = load i8*, i8** %10, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %10, align 8
  br label %31

61:                                               ; preds = %44, %36
  %62 = load i8*, i8** %12, align 8
  store i8 0, i8* %62, align 1
  %63 = load i8*, i8** %12, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %61, %26
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32* @strchr(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_util.c_PathCat.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_util.c_PathCat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PathCat(i8* %0, i64 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [512 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 47
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @CompressPath(i8* %17, i8* %18, i64 %19)
  br label %42

21:                                               ; preds = %4
  %22 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %23 = load i8*, i8** %7, align 8
  %24 = call i8* @Strnpcpy(i8* %22, i8* %23, i32 511)
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %9, align 8
  store i8 47, i8* %25, align 1
  %27 = load i8*, i8** %9, align 8
  store i8 0, i8* %27, align 1
  %28 = load i8*, i8** %9, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %32 = ptrtoint i8* %30 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  %35 = sub i64 512, %34
  %36 = trunc i64 %35 to i32
  %37 = call i32 @Strnpcat(i8* %28, i8* %29, i32 %36)
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @CompressPath(i8* %38, i8* %39, i64 %40)
  br label %42

42:                                               ; preds = %21, %16
  ret void
}

declare dso_local i32 @CompressPath(i8*, i8*, i64) #1

declare dso_local i8* @Strnpcpy(i8*, i8*, i32) #1

declare dso_local i32 @Strnpcat(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

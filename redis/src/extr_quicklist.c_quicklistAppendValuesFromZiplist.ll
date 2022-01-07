; ModuleID = '/home/carl/AnghaBench/redis/src/extr_quicklist.c_quicklistAppendValuesFromZiplist.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_quicklist.c_quicklistAppendValuesFromZiplist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @quicklistAppendValuesFromZiplist(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca [32 x i8], align 16
  %9 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = bitcast [32 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 32, i1 false)
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @ziplistIndex(i8* %11, i32 0)
  store i8* %12, i8** %9, align 8
  br label %13

13:                                               ; preds = %25, %2
  %14 = load i8*, i8** %9, align 8
  %15 = call i64 @ziplistGet(i8* %14, i8** %5, i32* %6, i64* %7)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %13
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @ll2string(i8* %21, i32 32, i64 %22)
  store i32 %23, i32* %6, align 4
  %24 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  store i8* %24, i8** %5, align 8
  br label %25

25:                                               ; preds = %20, %17
  %26 = load i32*, i32** %3, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @quicklistPushTail(i32* %26, i8* %27, i32 %28)
  %30 = load i8*, i8** %4, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call i8* @ziplistNext(i8* %30, i8* %31)
  store i8* %32, i8** %9, align 8
  br label %13

33:                                               ; preds = %13
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @zfree(i8* %34)
  %36 = load i32*, i32** %3, align 8
  ret i32* %36
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @ziplistIndex(i8*, i32) #2

declare dso_local i64 @ziplistGet(i8*, i8**, i32*, i64*) #2

declare dso_local i32 @ll2string(i8*, i32, i64) #2

declare dso_local i32 @quicklistPushTail(i32*, i8*, i32) #2

declare dso_local i8* @ziplistNext(i8*, i8*) #2

declare dso_local i32 @zfree(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_mock.c_var_InheritFourcc.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_mock.c_var_InheritFourcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.var_InheritFourcc.value = private unnamed_addr constant [5 x i8] c"    \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @var_InheritFourcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @var_InheritFourcc(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [5 x i8], align 1
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i8* @var_InheritString(i32* %10, i8* %11)
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %40

16:                                               ; preds = %2
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @strlen(i8* %17)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp ugt i64 %19, 4
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @free(i8* %22)
  store i32 0, i32* %3, align 4
  br label %40

24:                                               ; preds = %16
  %25 = bitcast [5 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %25, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.var_InheritFourcc.value, i32 0, i32 0), i64 5, i1 false)
  %26 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @strcpy(i8* %26, i8* %27)
  %29 = load i64, i64* %7, align 8
  %30 = icmp ne i64 %29, 4
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 %32
  store i8 32, i8* %33, align 1
  br label %34

34:                                               ; preds = %31, %24
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @free(i8* %35)
  %37 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %38 = call i32 @memcpy(i32* %9, i8* %37, i32 4)
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %34, %21, %15
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i8* @var_InheritString(i32*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

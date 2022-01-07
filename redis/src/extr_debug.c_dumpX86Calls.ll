; ModuleID = '/home/carl/AnghaBench/redis/src/extr_debug.c_dumpX86Calls.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_debug.c_dumpX86Calls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [25 x i8] c"Function at 0x%lx is %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dumpX86Calls(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__, align 8
  %8 = alloca [256 x i64], align 16
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %6, align 8
  %11 = bitcast [256 x i64]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 2048, i1 false)
  %12 = load i64, i64* %4, align 8
  %13 = icmp ult i64 %12, 5
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %74

15:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  br label %16

16:                                               ; preds = %71, %15
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %4, align 8
  %19 = sub i64 %18, 4
  %20 = icmp ult i64 %17, %19
  br i1 %20, label %21, label %74

21:                                               ; preds = %16
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp ne i32 %26, 232
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %71

29:                                               ; preds = %21
  %30 = load i8*, i8** %3, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = load i64, i64* %5, align 8
  %33 = add i64 %31, %32
  %34 = add i64 %33, 5
  store i64 %34, i64* %9, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = bitcast i8* %38 to i64*
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %9, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = call i64 @dladdr(i8* %44, %struct.TYPE_3__* %7)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %70

47:                                               ; preds = %29
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %70

51:                                               ; preds = %47
  %52 = load i64, i64* %9, align 8
  %53 = and i64 %52, 255
  %54 = getelementptr inbounds [256 x i64], [256 x i64]* %8, i64 0, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %9, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %51
  %59 = load i64, i64* %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %59, i32* %61)
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %9, align 8
  %65 = and i64 %64, 255
  %66 = getelementptr inbounds [256 x i64], [256 x i64]* %8, i64 0, i64 %65
  store i64 %63, i64* %66, align 8
  br label %67

67:                                               ; preds = %58, %51
  %68 = load i64, i64* %5, align 8
  %69 = add i64 %68, 4
  store i64 %69, i64* %5, align 8
  br label %70

70:                                               ; preds = %67, %47, %29
  br label %71

71:                                               ; preds = %70, %28
  %72 = load i64, i64* %5, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %5, align 8
  br label %16

74:                                               ; preds = %14, %16
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @dladdr(i8*, %struct.TYPE_3__*) #2

declare dso_local i32 @printf(i8*, i64, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

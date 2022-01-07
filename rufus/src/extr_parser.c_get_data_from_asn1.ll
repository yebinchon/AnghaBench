; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_parser.c_get_data_from_asn1.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_parser.c_get_data_from_asn1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [63 x i8] c"get_data_from_asn1: Buffers larger than 64KB are not supported\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"get_data_from_asn1: Could not convert OID string '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_data_from_asn1(i32* %0, i64 %1, i8* %2, i32 %3, i64* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  store i8* null, i8** %12, align 8
  store i32* null, i32** %13, align 8
  store i64 0, i64* %14, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 0
  br label %24

24:                                               ; preds = %18, %5
  %25 = phi i1 [ true, %5 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %15, align 4
  %27 = load i64, i64* %8, align 8
  %28 = icmp uge i64 %27, 65536
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %6, align 8
  br label %54

31:                                               ; preds = %24
  %32 = load i32, i32* %15, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %31
  %35 = load i8*, i8** %9, align 8
  %36 = call i32* @oid_from_str(i8* %35, i64* %14)
  store i32* %36, i32** %13, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  store i8* null, i8** %6, align 8
  br label %54

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42, %31
  %44 = load i32*, i32** %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = load i64, i64* %14, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i64*, i64** %11, align 8
  %50 = call i32 @get_data_from_asn1_internal(i32* %44, i64 %45, i32* %46, i64 %47, i32 %48, i8** %12, i64* %49, i32* %15)
  %51 = load i32*, i32** %13, align 8
  %52 = call i32 @free(i32* %51)
  %53 = load i8*, i8** %12, align 8
  store i8* %53, i8** %6, align 8
  br label %54

54:                                               ; preds = %43, %39, %29
  %55 = load i8*, i8** %6, align 8
  ret i8* %55
}

declare dso_local i32 @uprintf(i8*, ...) #1

declare dso_local i32* @oid_from_str(i8*, i64*) #1

declare dso_local i32 @get_data_from_asn1_internal(i32*, i64, i32*, i64, i32, i8**, i64*, i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

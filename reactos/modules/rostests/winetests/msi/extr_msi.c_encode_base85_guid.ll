; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_msi.c_encode_base85_guid.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_msi.c_encode_base85_guid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@table_enc85 = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64*)* @encode_base85_guid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_base85_guid(i32* %0, i64* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64* %1, i64** %4, align 8
  %8 = load i32*, i32** %3, align 8
  store i32* %8, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %71, %2
  %10 = load i32, i32* %7, align 4
  %11 = icmp ult i32 %10, 4
  br i1 %11, label %12, label %74

12:                                               ; preds = %9
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load i8**, i8*** @table_enc85, align 8
  %19 = load i32, i32* %5, align 4
  %20 = urem i32 %19, 85
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %18, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = ptrtoint i8* %23 to i64
  %25 = load i64*, i64** %4, align 8
  %26 = getelementptr inbounds i64, i64* %25, i32 1
  store i64* %26, i64** %4, align 8
  store i64 %24, i64* %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = udiv i32 %27, 85
  store i32 %28, i32* %5, align 4
  %29 = load i8**, i8*** @table_enc85, align 8
  %30 = load i32, i32* %5, align 4
  %31 = urem i32 %30, 85
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %29, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = ptrtoint i8* %34 to i64
  %36 = load i64*, i64** %4, align 8
  %37 = getelementptr inbounds i64, i64* %36, i32 1
  store i64* %37, i64** %4, align 8
  store i64 %35, i64* %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = udiv i32 %38, 85
  store i32 %39, i32* %5, align 4
  %40 = load i8**, i8*** @table_enc85, align 8
  %41 = load i32, i32* %5, align 4
  %42 = urem i32 %41, 85
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %40, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = ptrtoint i8* %45 to i64
  %47 = load i64*, i64** %4, align 8
  %48 = getelementptr inbounds i64, i64* %47, i32 1
  store i64* %48, i64** %4, align 8
  store i64 %46, i64* %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = udiv i32 %49, 85
  store i32 %50, i32* %5, align 4
  %51 = load i8**, i8*** @table_enc85, align 8
  %52 = load i32, i32* %5, align 4
  %53 = urem i32 %52, 85
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %51, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = ptrtoint i8* %56 to i64
  %58 = load i64*, i64** %4, align 8
  %59 = getelementptr inbounds i64, i64* %58, i32 1
  store i64* %59, i64** %4, align 8
  store i64 %57, i64* %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = udiv i32 %60, 85
  store i32 %61, i32* %5, align 4
  %62 = load i8**, i8*** @table_enc85, align 8
  %63 = load i32, i32* %5, align 4
  %64 = urem i32 %63, 85
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %62, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = ptrtoint i8* %67 to i64
  %69 = load i64*, i64** %4, align 8
  %70 = getelementptr inbounds i64, i64* %69, i32 1
  store i64* %70, i64** %4, align 8
  store i64 %68, i64* %69, align 8
  br label %71

71:                                               ; preds = %12
  %72 = load i32, i32* %7, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %9

74:                                               ; preds = %9
  %75 = load i64*, i64** %4, align 8
  store i64 0, i64* %75, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

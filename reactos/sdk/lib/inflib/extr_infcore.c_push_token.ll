; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/inflib/extr_infcore.c_push_token.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/inflib/extr_infcore.c_push_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser = type { i8*, i8*, i32 }

@MAX_FIELD_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parser*, i8*)* @push_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_token(%struct.parser* %0, i8* %1) #0 {
  %3 = alloca %struct.parser*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.parser* %0, %struct.parser** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load %struct.parser*, %struct.parser** %3, align 8
  %10 = getelementptr inbounds %struct.parser, %struct.parser* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = ptrtoint i8* %8 to i64
  %13 = ptrtoint i8* %11 to i64
  %14 = sub i64 %12, %13
  store i64 %14, i64* %5, align 8
  %15 = load %struct.parser*, %struct.parser** %3, align 8
  %16 = getelementptr inbounds %struct.parser, %struct.parser* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %6, align 8
  %18 = load %struct.parser*, %struct.parser** %3, align 8
  %19 = getelementptr inbounds %struct.parser, %struct.parser* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.parser*, %struct.parser** %3, align 8
  %22 = getelementptr inbounds %struct.parser, %struct.parser* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %20, i64 %24
  store i8* %25, i8** %7, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @MAX_FIELD_LEN, align 8
  %28 = load %struct.parser*, %struct.parser** %3, align 8
  %29 = getelementptr inbounds %struct.parser, %struct.parser* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = sub nsw i64 %27, %31
  %33 = icmp sgt i64 %26, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %2
  %35 = load i64, i64* @MAX_FIELD_LEN, align 8
  %36 = load %struct.parser*, %struct.parser** %3, align 8
  %37 = getelementptr inbounds %struct.parser, %struct.parser* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = sub nsw i64 %35, %39
  store i64 %40, i64* %5, align 8
  br label %41

41:                                               ; preds = %34, %2
  %42 = load i64, i64* %5, align 8
  %43 = load %struct.parser*, %struct.parser** %3, align 8
  %44 = getelementptr inbounds %struct.parser, %struct.parser* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %42
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %44, align 8
  br label %49

49:                                               ; preds = %63, %41
  %50 = load i64, i64* %5, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %49
  %53 = load i8*, i8** %6, align 8
  %54 = load i8, i8* %53, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i8*, i8** %6, align 8
  %58 = load i8, i8* %57, align 1
  %59 = load i8*, i8** %7, align 8
  store i8 %58, i8* %59, align 1
  br label %62

60:                                               ; preds = %52
  %61 = load i8*, i8** %7, align 8
  store i8 32, i8* %61, align 1
  br label %62

62:                                               ; preds = %60, %56
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %5, align 8
  %65 = add nsw i64 %64, -1
  store i64 %65, i64* %5, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %7, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %6, align 8
  br label %49

70:                                               ; preds = %49
  %71 = load i8*, i8** %7, align 8
  store i8 0, i8* %71, align 1
  %72 = load i8*, i8** %4, align 8
  %73 = load %struct.parser*, %struct.parser** %3, align 8
  %74 = getelementptr inbounds %struct.parser, %struct.parser* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

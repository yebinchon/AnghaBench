; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_parser.c_push_token.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_parser.c_push_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser = type { i8*, i8*, i32 }

@MAX_FIELD_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parser*, i8*)* @push_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_token(%struct.parser* %0, i8* %1) #0 {
  %3 = alloca %struct.parser*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
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
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %5, align 4
  %16 = load %struct.parser*, %struct.parser** %3, align 8
  %17 = getelementptr inbounds %struct.parser, %struct.parser* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %6, align 8
  %19 = load %struct.parser*, %struct.parser** %3, align 8
  %20 = getelementptr inbounds %struct.parser, %struct.parser* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.parser*, %struct.parser** %3, align 8
  %23 = getelementptr inbounds %struct.parser, %struct.parser* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %21, i64 %25
  store i8* %26, i8** %7, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @MAX_FIELD_LEN, align 4
  %29 = load %struct.parser*, %struct.parser** %3, align 8
  %30 = getelementptr inbounds %struct.parser, %struct.parser* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %28, %31
  %33 = icmp sgt i32 %27, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %2
  %35 = load i32, i32* @MAX_FIELD_LEN, align 4
  %36 = load %struct.parser*, %struct.parser** %3, align 8
  %37 = getelementptr inbounds %struct.parser, %struct.parser* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %35, %38
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %34, %2
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.parser*, %struct.parser** %3, align 8
  %43 = getelementptr inbounds %struct.parser, %struct.parser* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %63, %40
  %47 = load i32, i32* %5, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %46
  %50 = load i8*, i8** %6, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i8*, i8** %6, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  br label %59

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58, %54
  %60 = phi i32 [ %57, %54 ], [ 32, %58 ]
  %61 = trunc i32 %60 to i8
  %62 = load i8*, i8** %7, align 8
  store i8 %61, i8* %62, align 1
  br label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %5, align 4
  %66 = load i8*, i8** %7, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %7, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %6, align 8
  br label %46

70:                                               ; preds = %46
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
